FROM cmptech/nodejs_sharessl_ubuntu:1804

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

RUN apt update && apt install -y python build-essential procps iputils-ping && apt autoremove -y && rm -rf /var/lib/apt/lists/
RUN echo export PATH=/\$NODE_VERSION/bin:\$PATH >> /node_env.sh

RUN . /node_env.sh \
&& npm -v \
&& npm install -g node-gyp

RUN . /node_env.sh \
&& node-gyp install
