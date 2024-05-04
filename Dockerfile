FROM public.ecr.aws/docker/library/maven:3-amazoncorretto-21

WORKDIR /app

#COPY ./maven-settings.xml .
#RUN mkdir ~/.m2 && mv ./maven-settings.xml ~/.m2/settings.xml

COPY . /app/

RUN echo 3 > a
RUN \
    --mount=type=cache,target=/root/.m2 \
    mvn package -U -Dmav
