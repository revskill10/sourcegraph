FROM haskell:7.10

RUN apt-get update && apt-get install -y graphviz git-core
RUN git clone https://github.com/ivan-m/SourceGraph && cd SourceGraph
RUN cabal update && cabal install cabal-install-1.22 ghc-7.10.2 alex-3.1.4 happy-1.19.5
RUN cabal install

WORKDIR /src
ENTRYPOINT ["/root/.cabal/bin/SourceGraph"]