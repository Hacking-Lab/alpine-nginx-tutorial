FROM hackinglab/alpine-base:latest
MAINTAINER Ivan Buetler <ivan.buetler@compass-security.com>

# Add the files
ADD root /

RUN apk add --no-cache --update nginx \
        vim \
        nginx \
        openssl && \
	rm -rf /var/cache/apk/* && \
	chown -R nginx:www-data /var/lib/nginx && \
	chown -R nginx:www-data /opt/www

# Expose the ports for nginx
EXPOSE 80
