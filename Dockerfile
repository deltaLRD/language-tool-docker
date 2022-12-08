FROM ubuntu
RUN apt-get update \
    && apt-get install openjdk-11-jdk unzip -y
ADD https://languagetool.org/download/LanguageTool-stable.zip /root/
RUN unzip ~/LanguageTool-stable.zip -d ~/
CMD cd ~/LanguageTool-5.9 \
    && java -cp languagetool-server.jar org.languagetool.server.HTTPServer --port 8081 --allow-origin --public
