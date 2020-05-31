## build
```
docker build -t corenlp:4.0.0 .
docker build -t corenlp:3.9.2 --build-arg corenlp_version=full-2018-10-05 .
```

## run
```
docker run -d -p 9000:9000 corenlp:4.0.0
docker run -d -p 9000:9000 corenlp:3.9.2
```
