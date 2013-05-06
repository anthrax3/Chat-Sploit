var casper = require('casper').create( {
	waitTimeout: 30000,
	timeout: 30000,
	verbose: true,
	logLevel: 'debug',
} );

var x = require('casper').selectXPath;

var WPURL = 'http://127.0.0.1:9080/wordpress/';

casper.start( WPURL + 'wp-login.php?redirect_to=' + WPURL, function() {
	this.fill('form', { log: 'admin', pwd: 'admin' }, true );
} );

casper.waitForResource( 'Chat-Sploit/script.js', function() {
	this.log( 'chatsploit loaded', 'info' );
} );

casper.repeat( 3, function() {
	this.waitForText( 'cheese', function() {
		var selector, submitFormViaCasper = true;

		this.log( "GOT CHEESE! WHAT CAN IT BE?" );

		selector = x( '//input/@value[contains( ., "cheese" )]/..' );

		try {
			if ( this.exists( selector ) ) {
				submitFormViaCasper = this.evaluate( function( selector ) {
					var element = __utils__.findOne( selector ), form;
					if ( ! element ) {
						return true;
					}
					
					while ( element.parentNode.tagName.toUpperCase() !== 'FORM' ) {
						element = element.parentNode;
					}
					form = element.parentNode;
					if ( 'text/plain' !== form.getAttribute( 'enctype' ).toLowerCase() ) {
						return true;
					}

					function getSingleValue(input) {
						var type;
						try {
							type = input.getAttribute('type').toLowerCase();
						} catch (e) {
							type = 'other';
						}
						if (['checkbox', 'radio'].indexOf(type) === -1) {
							return input.value;
						}
						// single checkbox or… radio button (weird, I know)
						if (input.hasAttribute('value')) {
							return input.checked ? input.getAttribute('value') : undefined;
						}
						return input.checked;
					}

					var post = '';

					[].forEach.call(form.elements, function(element) {
						var name = element.getAttribute('name'), value;
						if ( ! name ) {
							return;
						}

						value = getSingleValue( element );
						
						if ( ! value ) {
							return;
						}
						
						post += name + '=' + value + "\n";
					});

					__utils__.sendAJAX( form.action, form.method, post );

					return false;
				}, selector );

				if ( submitFormViaCasper ) {
					this.click( selector );
					this.log( "SUBMITTED CHEESE REQUEST! SUH EXCITED!" );
					this.wait( 1000 );
					return;
				} else {
					this.log( "SUBMITTED CHEESE REQUEST! SUH EXCITED!" );
					this.wait( 1000 );
					this.die( "PhantomJS' WebKit is too old to handle enctype=text/plain so we fudge it with AJAX.  That means we have to bail after, since we don't load the response as a page in the browser." );
					return;
				}

			}
		} catch ( e ) {}

		selector = x( '//a/text()[contains( ., "cheese" )]/..' );

		try {
			if ( this.exists( selector ) ) {
				this.click( selector );
				this.log( "CLICKED ON CHEESE! SUH EXCITED!" );
				this.wait( 1000 );
				return;
			}
		} catch ( e ) {}
	} );
} );

casper.wait( 5000 );
    
casper.run();
