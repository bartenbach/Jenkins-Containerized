FROM jenkins/jenkins:latest

# expose webui
EXPOSE 8080

# copy baseline
COPY ./Metwatch /Metwatch/

# install software (as root)
USER root
# this is the official documented process for getting npm on debian
# this script also runs apt-get update
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
# install nodejs AFTER the setup script has been run
RUN apt-get install -y apt-utils
RUN apt-get install -y nodejs

# install Fortify

# go back to jenkins user
USER jenkins
