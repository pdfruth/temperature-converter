#FROM openliberty/open-liberty:javaee8-ubi-min
#FROM openliberty/open-liberty:20.0.0.8-full-java8-ibmjava-ubi
FROM icr.io/ibm/liberty:20.0.0.12-ol-full-java11-openj9
COPY --chown=1001:0 target/temperature-converter.war /config/dropins
#COPY --chown=1001:0 server.xml /config/
RUN configure.sh
