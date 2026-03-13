FROM alpine:latest

RUN apk add --no-cache sqlite

COPY schema.sql data.sql query.sql ./

RUN sqlite3 database.db < schema.sql && sqlite3 database.db < data.sql

CMD sqlite3 database.db < query.sql