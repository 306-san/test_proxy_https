How to Use
Please install docker
Please Configure nustart.cfg for ngrok_url
```bash
cd here
(fish)
docker run -it --rm -v "$PWD":/share -p 8080:8080 nuster/nuster bash
(zsh)
docker run -it --rm -v `pwd`:/share -p 8080:8080 nuster/nuster bash
cd /share
nuster -d -f proxy/nustart.cfg
(stating proxy server. ctrl+c is stop)
```
(open other terminal)
```
curl "http://hoge.ngrok.io/api/v1?hoge=foo&bar=0" # => OK
curl "https://hoge.ngrok.io/api/v1?hoge=foo&bar=0" # => OK
curl -x 127.0.0.1:8080 "http://hoge.ngrok.io/api/v1?hoge=foo&bar=0" # => OK
curl -x 127.0.0.1:8080 "https://hoge.ngrok.io/api/v1?hoge=foo&bar=0" # => NG 🤔 (API Server Error🤔🤔)
```
