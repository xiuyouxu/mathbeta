FROM daocloud.io/daocloud/dao-tomcat:v7.0.55

RUN mkdir /tomcat/webapps/mathbeta

COPY ./WebRoot /tomcat/webapps/mathbeta

#RUN cd /root && ant -f build.xml

#RUN cd /root && cp -r build/mathbeta /root/tomcat/webapps

CMD echo "hello world, I am tiger!"