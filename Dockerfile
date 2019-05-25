FROM alpine

RUN apk add --update \
	nodejs npm

RUN npm install nodemon -g

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod u+x /bin/entrypoint.sh

ENTRYPOINT [ "/bin/entrypoint.sh" ]
