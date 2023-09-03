FROM datarhei/restreamer:0.6.8

# custom player
COPY ./player.html /restreamer/src/webserver/public/player.html

# custom nginx configs
COPY ./conf/* /restreamer/conf/

# copy admin page
RUN cp /restreamer/src/webserver/public/index.prod.html /restreamer/src/webserver/public/admin.html

EXPOSE 8080
EXPOSE 8181

VOLUME ["/restreamer/db"]

CMD ["./run.sh"]
