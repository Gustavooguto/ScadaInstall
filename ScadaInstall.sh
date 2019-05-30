#/bin/bash
echo "Instalador ScadaBR. By: Gustavo Martins de Souza"
mkdir /home/$USER/tomcat
sudo apt install default-jdk
wget ftp.unicamp.br/pub/apache/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
tar -vzxf apache-tomcat-7.0.94.tar.gz
mv $PWD/apache-tomcat-7.0.94/* /home/$USER/tomcat/
rm -rf apache-tomcat-7.0.94.tar.gz apache-tomcat-7.0.94/
wget https://sourceforge.net/projects/scadabr/files/Software/WAR/ScadaBR%200.9.1/ScadaBR.war
mv ScadaBR.war ~/tomcat/webapps
echo "export JAVA_HOME=\"/usr/lib/jvm/default-java/\"" >> ~/.bashrc
echo "alias startTOMCAT=\"/home/$USER/tomcat/bin/startup.sh\"" >> ~/.bashrc
echo "alias stopTOMCAT=\"/home/$USER/tomcat/bin/shutdown.sh\"" >> ~/.bashrc
echo " ==================================================="
echo "|         execute: 'source ~/.bashrc'               |"
echo "|                                                   |"
echo "|startTOMCAT PARA INICIAR O SERVIÇO DO APACHE TOMCAT|"
echo "|stopTOMCAT PARA ENCERRAR O SERVIÇO DO APACHE TOMCAT|"
echo "|                                                   |"
echo " ==================================================="
echo "Instalador ScadaBR. By: Gustavo Martins de Souza"
