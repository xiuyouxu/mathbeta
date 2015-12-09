FROM index.docker.io/guligo/jdk-maven-ant-tomcat:latest

RUN rm -rf $CATALINA_HOME/webapps/ROOT/*

RUN mkdir /root/mathbeta

COPY . /root/mathbeta

RUN cd /root/mathbeta && ant -f build.xml

RUN cp -r /root/mathbeta/WebRoot/* $CATALINA_HOME/webapps/ROOT

RUN rm -rf /root/mathbeta

RUN touch $CATALINA_HOME/logs/catalina.log

ENTRYPOINT $CATALINA_HOME/bin/startup.sh && tail -f $CATALINA_HOME/logs/catalina.log