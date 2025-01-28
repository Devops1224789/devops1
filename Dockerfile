FROM ubuntu
LABEL Name="TomDev"
LABEL Email="TomDev@gmail.com"
RUN apt-get update -y && apt-get install -y apache2 unzip
RUN rm -rf /var/www/html/index.html 
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip .
RUN unzip neogym.zip
RUN cp -rvf  neogym-html/* .
RUN rm -rf neogym-html neogym.zip
EXPOSE 80
CMD apachectl -D FOREGROUND
