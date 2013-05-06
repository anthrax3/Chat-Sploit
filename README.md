To run the admin client, edit `admin-client.js` so that `WPURL` points to WordPress.  Then run:

```bash
casperjs admin-client.js
```

(You could do this in a loop.)


To enable stats, run Redis and Webdis and use the `CHAT_SPLOIT__WEBDIS` constant to configure the Webdis server's location (default `http://127.0.0.1:7379/`).

Run Redis:
```bash
redis-server --save 10 1
```

Run Webdis
```bash
/path/to/webdis
```
