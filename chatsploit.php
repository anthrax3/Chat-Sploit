<?php

/*
 * Plugin Name: Chat Sploit!
 * Description: Chat Widget vulnerable to XXS (and more!).  Don't fix it.  Figure out how to exploit it. Goal: Log in as author, and make admin say something.
 * Author: malwaffe
 */

don't use this plugin: it's intentionally insecure

defined( 'CHAT_SPLOIT__WEBDIS' ) or define( 'CHAT_SPLOIT__WEBDIS', 'http://127.0.0.1:7379/' );

class Chat_Sploit {
	static $instance;

	private $post_id = 0;

	static function init() {
		if ( ! self::$instance ) {
			self::$instance = new Chat_Sploit;
		}

		return self::$instance;
	}

	private function __construct() {
		add_action( 'init', array( $this, 'setup_post' ) );

		add_action( 'widgets_init', array( $this, 'register_widget' ) );
		add_action( 'wp_print_styles', array( $this, 'enqueue_styles' ) );

		add_action( 'wp_ajax_chatsploit', array( $this, 'ajax' ) );
		add_action( 'wp_ajax_nopriv_chatsploit', array( $this, 'nopriv_ajax' ) );
	}

	/*
	 * Chat messages are stored as comments under a global post.
	 */
	function setup_post() {
		register_post_type( 'chatsploit', array(
			'public' => false,
			'supports' => array(
				'author', 'editor',
			),
			'rewrite' => false,
			'query_var' => false,
			'can_export' => false,
		) );

		$this->post_id = get_option( 'chat_sploit_post', 0 );

		if ( $this->post_id ) {
			return;
		}

		$this->post_id = (int) wp_insert_post( array(
			'post_content' => 'Chat Sploit',
			'post_type' => 'chatsploit',
			'post_status' => 'publish',
		) );

		update_option( 'chat_sploit_post', $this->post_id );
	}

	function register_widget() {
		register_widget( 'Chat_Sploit_Widget' );
	}

	function enqueue_styles() {
		if ( is_active_widget( false, false, 'chat_sploit' ) ) {
			wp_enqueue_style( 'chatsploit', plugins_url( 'style.css', __FILE__ ), array(), mt_rand() );
		}
	}

	/*
	 * Handles authenticated POST requests (chat submits) and authenticated GET requests (chat polls)
	 */
	function ajax() {
		if ( 'POST' === strtoupper( $_SERVER['REQUEST_METHOD'] ) ) {
			return $this->submit();
		}

		return $this->read();
	}

	/*
	 * Handles unauthenticated GET requests (chat polls)
	 */
	function nopriv_ajax() {
		if ( 'POST' === strtoupper( $_SERVER['REQUEST_METHOD'] ) ) {
			// Unauthenticated users can't chat...
			die( '-1' );
		}

		// ... but they can see the chat: "I could be that cool if I registered for an account!" :)
		return $this->read();
	}

	/*
	 * Process a chat submission. Store new chat as a comment.
	 */
	function submit() {
		// <chat>some text</chat>
		$text = (string) simplexml_load_file( "php://input", 'SimpleXMLElement', LIBXML_NOENT | LIBXML_NONET );

		$user = wp_get_current_user();

		$comment_id = (int) wp_insert_comment( array(
			'comment_post_ID' => (int) $this->post_id,
			'comment_author' => $user->user_login,
			'comment_author_IP' => $_SERVER['REMOTE_ADDR'],
			'comment_date' => current_time( 'mysql' ),
			'comment_date_gmt' => current_time( 'mysql', true ),
			'comment_content' => $text,
			'comment_approved' => 1,
			'user_id' => $user->ID,
		) );

		// End HTTP connection immediately.

		while ( @ob_end_clean() );

		header('Content-Encoding: none');
		header('Content-Length: ' . strlen( $comment_id ) );
		header('Connection: close');

		echo $comment_id;

		flush();

		// Process stats.

		if ( ! CHAT_SPLOIT__WEBDIS ) {
			exit;
		}

		$context = stream_context_create( array(
			'http' => array(
				'timeout' => 1,
			),
		) );

		// Increment the chat counter for this user
		file_get_contents( CHAT_SPLOIT__WEBDIS . "HINCRBY/chats/{$user->user_login}/1", false, $context );
	}

	/*
	 * Get recent chats.
	 */
	function read() {
		global $wpdb;

		header( 'Content-Type: application/json' );

		$since = stripslashes( $_GET['since'] ); // WP slashes $_GET, but we use ::prepare() below

		$chats = $wpdb->get_results( $wpdb->prepare(
			"SELECT `comment_author` AS author, `comment_content` AS text, `comment_date_gmt` AS time FROM `$wpdb->comments` " .
			"WHERE `comment_post_ID` = $this->post_id AND `comment_date_gmt` > '$since' ORDER BY `comment_date_gmt` ASC"
		) );

		foreach ( $chats as $chat ) {
			// Make links clickable.
			$pieces = preg_split( '#<a\s+.*?>.*?<\s*/\s*a\s*>#i', $chat->text, -1, PREG_SPLIT_NO_EMPTY );
			foreach ( array_unique( $pieces ) as $piece ) {
				$chat->text = str_replace( $piece, $new = preg_replace( '#https?://\S+(?=\s|$)#e', 'Chat_Sploit::safe_clickable( "\\0" )', $piece ), $chat->text );
			}
		}

		$last = end( $chats );
		if ( $last ) {
			$since = $last->time;
		}

		die( json_encode( compact( 'since', 'chats' ) ) );
	}

	static function safe_clickable( $url ) {
		return '<a href="' . esc_url( $url ) . '" target="_blank">' . esc_url( $url ) . '</a>';
	}
}

class Chat_Sploit_Widget extends WP_Widget {
	function __construct() {
		parent::__construct(
			'chat_sploit',
			'Chat Sploit!'
		);
	}

	function widget( $args, $instance ) {
		wp_enqueue_script( 'chatsploit', plugins_url( 'script.js', __FILE__ ), array( 'jquery' ), mt_rand(), true );

		$title = apply_filters( 'widget_title', $instance['title'] );
		echo $args['before_widget'];
		if ( strlen( $title ) ) {
			echo $args['before_title'] . $title . $args['after_title'];
		}
?>
		<div class="chat"><dl></dl></div>
		<form method="POST" action="<?php echo esc_url( admin_url( 'admin-ajax.php?action=chatsploit' ) ); ?>">
<?php		if ( is_user_logged_in() ) : ?>
			<textarea name="text"></textarea>
			<p class="submit">
				<input type="submit" value="Say it" />
			</p>
<?php		endif; ?>
		</form>
<?php

		echo $args['after_widget'];
	}

	public function update( $new_instance, $old_instance ) {
		return array(
			'title' => wp_kses( $new_instance['title'], 'data' )
		);
	}

	public function form( $instance ) {
		if ( isset( $instance[ 'title' ] ) ) {
			$title = $instance[ 'title' ];
		} else {
			$title = 'Chat Sploit!';
		}
		?>
		<p>
		<label for="<?php echo $this->get_field_id( 'title' ); ?>">Title:</label>
		<input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>" />
		</p>
		<?php
	}
}

add_action( 'plugins_loaded', array( 'Chat_Sploit', 'init' ) );
