# dockerfile to build image for JBoss EAP 7.1

#start from eap71-openshift
FROM registry.access.redhat.com/jboss-eap-7/eap71-openshift

# file author / maintainer
MAINTAINER "FirstName LastName" "emailaddress@gmail.com"

# Copy war to deployments folder
COPY app.war $JBOSS_HOME/standalone/deployments/

# User root to modify war owners
USER root

# Modify owners war
RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/app.war

RUN $JBOSS_HOME/bin/add-user.sh admin abcd1234 --silent

# Important, use jboss user to run image
USER jboss

EXPOSE 9990
CMD ["/opt/eap/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
