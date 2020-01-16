FROM node:8.15.0
COPY /src /opt/executor
WORKDIR /opt/executor
RUN if [ ! -d "sdk-node" ]; then git clone --depth 1 https://github.com/ProcessMaker/sdk-node.git; fi
RUN cd /opt/executor/sdk-node; npm install
RUN cd /opt/executor/sdk-node; npm run-script build
RUN npm install
