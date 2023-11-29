FROM joseluisq/static-web-server:2.24.1-alpine

COPY ./drawio/src/main/webapp public
RUN sed -i '/<head>/a <base href="\/apps\/drawio\/">' /public/index.html
COPY ./abitti.json public
