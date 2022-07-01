FROM ubuntu

COPY fib.sh /usr/sbin/fib.sh

ENTRYPOINT ["bash", "/usr/sbin/fib.sh"]