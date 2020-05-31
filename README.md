[Stanford CoreNLP – Natural language software | Stanford CoreNLP](https://stanfordnlp.github.io/CoreNLP/)の
`edu.stanford.nlp.pipeline.StanfordCoreNLPServer` を起動する。

# Usage

## corenlp:4.0.0

```
$ docker build -t corenlp:4.0.0 .
$ docker run -d -p 9000:9000 corenlp:4.0.0
```

-> `localhost:9000`

## corenlp:3.9.2

```
$ docker build -t corenlp:3.9.2 --build-arg corenlp_version=3.9.2 .
$ docker run -d -p 9000:9000 corenlp:3.9.2
```

-> `localhost:9000`
