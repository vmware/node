FROM photon:1.0RC

MAINTAINER Roman Tarnavski - rtarnavski@vmware.com

WORKDIR /node

RUN tdnf install -y tar gzip xz

RUN curl -O https://nodejs.org/dist/v4.4.1/node-v4.4.1-linux-x64.tar.xz && \
    
    tar -xJf node-v4.4.1-linux-x64.tar.xz && \
    
    ln -sf /node/node-v4.4.1-linux-x64/bin/node /usr/bin/node && \
    
    ln -sf /node/node-v4.4.1-linux-x64/bin/npm /usr/bin/npm && \

    rm -rf node-v4.4.1-linux-x64.tar.xz

CMD [ "node" ]
