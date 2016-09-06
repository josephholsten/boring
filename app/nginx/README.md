# The Most Boring `nginx.conf`

These configs describe the way your default nginx proxy ought to be configured. Because you almost certainly want:

- standard HTTPS -> HTTP proxy caching, using conditional `GET`s
- to upgrade all HTTP connections to HTTPS
- to follow [Mozilla's TLS recomendations](https://wiki.mozilla.org/Security/Server_Side_TLS)
- SPDY support if the client supports it
- to support proxying WebSockets
- to provide X-Real-IP, X-Forwarded-For & X-Forwarded-Proto
- to avoid rewriting hostnames when proxying
- pids, logs, caches & documents in [LSB standard locations](http://www.linuxbase.org/betaspecs/fhs/fhs.txt)
- to have unknown file types be downloaded, not displayed in-browser
- UTF-8 as your default character set
- compression for common text content types
- to use `sendfile(2)` and `TCP_NOPUSH`/`TCP_CORK`
- to minimize server fingerprinting
