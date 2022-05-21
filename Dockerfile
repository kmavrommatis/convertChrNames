# $(aws ecr get-login --no-include-email)

# docker build -t 064965165932.dkr.ecr.us-east-1.amazonaws.com/ngs/chromosomemapping:v1.0 .
# docker push  064965165932.dkr.ecr.us-east-1.amazonaws.com/ngs/chromosomemapping:v1.0
FROM ubuntu:18.04


RUN apt-get update
RUN apt install samtools -y
COPY replace_chromosome_names.py /usr/local/bin/replace_chromosome_names.py
RUN chmod 755 /usr/local/bin/replace_chromosome_names.py
COPY ChromosomeMappings/ /opt/ChromosomeMappings/