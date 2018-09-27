FROM tomcat:8.5.32-jre10-slim
WORKDIR /workspace
COPY . /workspace
RUN apt-get update && \
    apt-get install maven -y
RUN ./deploy_application
EXPOSE 8080:8080
CMD ["catalina.sh", "run"]
