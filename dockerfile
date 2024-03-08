FROM ubuntu
LABEL  maintainer="Jaggu"
ENV pkg_name1 git
ENV pkg_name2 nginx
RUN apt-get update
RUN apt-get install $pkg_name1 -y
RUN apt-get install $pkg_name2 -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
