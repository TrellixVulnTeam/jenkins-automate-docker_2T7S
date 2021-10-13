FROM jenkins/jenkins:lts

ARG BUILD_DATE
ARG VCS_REF

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/ref/casc.yaml

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# COPY jenkinsfile.groovy /usr/share/jenkins/ref/jenkinsfile.groovy
COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
