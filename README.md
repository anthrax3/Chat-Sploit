It's just a normal WordPress plugin.

To enable stats, ren Redis and Webdis.  Use the `CHAT_SPLOIT__WEBDIS` constant to configure the Webdis server's location (default `http://127.0.0.1:7379/`).

To run the admin client, do:

```bash
while [ 1 ]; do casperjs admin-client.js; done
```
