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
$ docker build -t corenlp:3.9.2 --build-arg corenlp_version=full-2018-10-05 .
$ docker run -d -p 9000:9000 corenlp:3.9.2
```

-> `localhost:9000`

# Deploy(EC2: Amazon Linux 2)
- カスタムTCP `9000` を許可

```
$ sudo yum update -y
$ sudo yum install -y git
$ sudo yum install -y docker

$ sudo service docker start
$ sudo usermod -a -G docker <user name>
$ sudo systemctl enable docker

$ exit
```

```
$ ssh <aws>
```

```
$ git clone https://github.com/Dan344/corenlp-docker.git
$ cd corenlp-docker
$ docker build -t corenlp:4.0.0 .
$ docker run -d -p 9000:9000 corenlp:4.0.0
```
