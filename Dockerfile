FROM node

RUN mkdir /src
WORKDIR /src

#RUN apt-get update 
#RUN apt-get install -y zip

#RUN wget https://circle-artifacts.com/gh/piyushcoolkarni/AngularNodeDocker2Frontend2/18/artifacts/0/tmp/circle-artifacts.8MqfYYM/nodemod/nodemodules.zip 
#RUN unzip nodemodules.zip -d /node_modules
#RUN ls -a /node_modules


#RUN npm install -g grunt-cli
#RUN npm install -g gulp-cli
#RUN npm install gulp
#RUN npm install grunt
#RUN npm install -g gulp


ADD html html
#ADD models models
#ADD node_modules node_modules
ADD test test
ADD circle.yml package.json app.js ./
RUN npm install

CMD ["node","app.js"]

EXPOSE 3010

