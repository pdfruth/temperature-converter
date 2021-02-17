#FROM openliberty/open-liberty:javaee8-ubi-min
FROM openliberty/open-liberty:20.0.0.8-full-java8-ibmjava-ubi
COPY --chown=1001:0 temperature-converter.war /config/dropins
#COPY --chown=1001:0 server.xml /config/
RUN configure.sh
