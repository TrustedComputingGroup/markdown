FROM pandoc/latex:2.19

COPY ./img/* /resources/img/
COPY ./template/* /resources/templates/

RUN tlmgr list
RUN tlmgr update --self && \
    tlmgr install \
    merriweather \
    fontaxes \
    mweights \
    mdframed \
    needspace \
    sourcesanspro \
    sourcecodepro \
    titling \
    ly1 \
    pagecolor \
    adjustbox \
    collectbox \
    titlesec \
    fvextra \
    pdftexcmds \
    footnotebackref \
    zref \
    fontawesome5 \
    footmisc \
    sectsty \
    koma-script \
    lineno \
    awesomebox \
    background \
    everypage \
    xurl \
    textpos \
    anyfontsize \
    transparent