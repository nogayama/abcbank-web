FROM nogayama/abcbankweb:v1

RUN apk add apache2>=2.4.41


RUN echo -e $'\n\
<FilesMatch "^\.ht">\n\
    Require all denied\n\
</FilesMatch>\n\
' >> /etc/apache2/httpd.conf
