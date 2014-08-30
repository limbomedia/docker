LimboMedia, officially dockerized!
======
Your home and media server: [http://limbomedia.net][1]

Startup (as deamon):

    docker run -d -p HTTP-PORT:8000 -p HTTPS-PORT:8001 -v DATA-DIR:/data limbomedia/limbomedia

Startup (interactive):

    docker run -i -t -p HTTP-PORT:8000 -p HTTPS-PORT:8001 -v DATA-DIR:/data limbomedia/limbomedia



Note: UPnP/DLNA is disabled, because of dockers multicast-network-capabilities.

  [1]: http://limbomedia.net
