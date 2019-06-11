FROM daocloud.io/fanhantianxia/matlab_config

MAINTAINER Yu Fan <747336771@qq.com>

RUN apt-get -y install git
RUN mkdir -p /script
RUN cd /script && git clone https://github.com/fanhantianxia/test_docker.git
ADD test_data /root/matlab_script/test_data
RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script
ENTRYPOINT ["/root/matlab_script/test_data"]
