FROM pandoc/latex:2.19-ubuntu

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

RUN apt-get update && apt-get install -y \
    chromium \
    software-properties-common \
    nodejs \
    npm
    
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npm install --global mermaid-filter --unsafe-perm
