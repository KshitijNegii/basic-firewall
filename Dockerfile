FROM debian:bullseye

RUN apt update && apt install -y iptables

COPY firewall.sh /firewall.sh
RUN chmod +x /firewall.sh

CMD ["/firewall.sh"]
