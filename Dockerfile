FROM busybox

ADD index.html /www/index.html

EXPOSE 80

CMD trap "exit 0;" TERM INT; httpd -p 80 -h /www -f & wait
