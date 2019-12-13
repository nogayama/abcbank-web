FROM alpine:latest  
LABEL  maintainer "TakahideNogayama <nogayama@jp.ibm.com>"

COPY dev /mydev

# Install apache2
RUN apk add --allow-untrusted /mydev/apache2-2.4.25-r0.apk


CMD ["/mydev/entrypoint.sh"]
