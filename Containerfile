# using image fedora:latest
FROM fedora:latest

# upgrade the system and install tuxpaint, vim, and httpd tools
RUN dnf -y upgrade && dnf -y install tuxpaint vim httpd

# copy file myinfo.html to new location
COPY myinfo.html /var/www/html/myinfo.html

# using port 80 to allow external access
EXPOSE 80

# httpd run at boot
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]


