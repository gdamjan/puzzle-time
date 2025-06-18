# `Puzzle time`

Simple asgi/uvicorn project in docker…

## Setup:

```
git clone https://github.com/gdamjan/puzzle-time.git

cd puzzle-time
uv init
uv add uvicorn
```

## Expected result:
```
$ docker build -t puzzle .
…
$ docker run -it -p 8000:8000 puzzle
INFO:     Started server process [1]
INFO:     Waiting for application startup.
INFO:     ASGI 'lifespan' protocol appears unsupported.
INFO:     Application startup complete.
INFO:     Uvicorn running on http://0.0.0.0:8000 (Press CTRL+C to quit)
```

```
$ curl -i http://127.0.0.1:8000
HTTP/1.1 200 OK
date: Wed, 18 Jun 2025 17:33:44 GMT
server: uvicorn
content-type: text/plain
Transfer-Encoding: chunked

Hello, world!
```

## Actual result:

Docker container doesn't work!
