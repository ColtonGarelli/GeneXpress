# #
# Conda Environments with Docker - Chad Lagore - Medium
#
FROM rocker/binder:latest
ADD environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml

RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH