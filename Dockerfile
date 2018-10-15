FROM openjdk:8

ENV SCALA_VERSION 2.11.11
ENV SBT_VERSION 0.13.15

RUN wget https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb
RUN wget https://downloads.lightbend.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.deb

RUN dpkg -i ./sbt-$SBT_VERSION.deb && apt install -f -y && rm ./sbt-$SBT_VERSION.deb
RUN dpkg -i ./scala-$SCALA_VERSION.deb && apt install -f -y && rm ./scala-$SCALA_VERSION.deb
