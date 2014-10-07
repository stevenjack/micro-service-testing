FROM million12/varnish

RUN mkdir -p /data/varnish
ADD default.vcl /data/varnish

RUN bundle install --system

CMD /start.sh
