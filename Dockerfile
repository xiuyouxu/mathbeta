FROM daocloud.io/daocloud/dao-tomcat:v7.0.55

#RUN mkdir /tomcat/webapps/mathbeta

COPY ./WebRoot /tomcat/webapps/ROOT

#RUN cd /root && ant -f build.xml

#RUN cd /root && cp -r build/mathbeta /root/tomcat/webapps

RUN touch /tomcat/logs/Catalina.log

CMD echo "hello world, I am tiger!"

ENTRYPOINT /tomcat/bin/startup.sh && tail -f /tomcat/logs/Catalina.log