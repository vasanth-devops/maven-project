FROM vasanthrs / dockerdemo:1.1

MAINTAINER vasanth;

COPY /single-module/target/single-module-project.jar / 

EXPOSE 8000

CMD java - jar single-module-project.jar.jar
