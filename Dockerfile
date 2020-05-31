FROM java:8

# http://nlp.stanford.edu/software/stanford-corenlp-4.0.0.zip
# http://nlp.stanford.edu/software/stanford-corenlp-full-2018-10-05.zip

ARG corenlp_version=4.0.0
ENV CORENLP_VERSION=$corenlp_version

RUN wget http://nlp.stanford.edu/software/stanford-corenlp-${CORENLP_VERSION}.zip
RUN unzip stanford-corenlp-${CORENLP_VERSION}.zip && rm stanford-corenlp-${CORENLP_VERSION}.zip

WORKDIR stanford-corenlp-${CORENLP_VERSION}

RUN export CLASSPATH="`find . -name '*.jar'`"

EXPOSE 9000

CMD java -cp "*" -mx4g edu.stanford.nlp.pipeline.StanfordCoreNLPServer
