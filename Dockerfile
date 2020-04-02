FROM debian:latest
ADD wait-for-it.sh /wait-for-it.sh
RUN apt update 
RUN apt install -y curl
RUN chmod +x /wait-for-it.sh
ENTRYPOINT ["/wait-for-it.sh"]