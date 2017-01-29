FROM haskell:7.10

RUN apt-get update && apt-get install -y graphviz git-core
RUN cabal update
RUN git clone https://github.com/ivan-m/SourceGraph
WORKDIR ./SourceGraph
RUN cabal install
ENTRYPOINT ["/root/.cabal/bin/SourceGraph"]