FROM ubuntu:20.04 
RUN apt update 
RUN apt install -y tzdata
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
