FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get upgrade -y 
RUN apt-get install software-properties-common -y 
RUN add-apt-repository ppa:honeynet/nightly 
RUN apt-get update -y 
RUN apt-get install dionaea -y

CMD cp /opt/dionaea/etc/dionaea/ihandlers-available/log_json.yaml /opt/dionaea/etc/dionaea/ihandlers-enabled
CMD service dionaea start
