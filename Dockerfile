FROM vasanthrs/dockerdemo:1.1

MAINTAINER vasanth;

EXPOSE 3030

COPY /var/lib/jenkins/workspace/docker test/single-module/target/single-module-project.jar
