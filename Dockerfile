FROM node:5.0.0-slim
EXPOSE 3000
WORKDIR /source
COPY . /source
RUN chmod a+x .shipped/build .shipped/run .shipped/test
RUN [".shipped/build"]
CMD .shipped/run
