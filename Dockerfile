# #
# Conda Environments with Docker - Chad Lagore - Medium
#


## Use a tag instead of "latest" for reproducibility
FROM rocker/binder:latest
#
# ## Declares build arguments
# ARG NB_USER
# ARG NB_UID
#
# ## Copies your repo files into the Docker Container
# USER root
# COPY . ${HOME}
# ## Enable this to copy files from the binder subdirectory
# ## to the home, overriding any existing files.
# ## Useful to create a setup on binder that is different from a
# ## clone of your repository
# ## COPY binder ${HOME}
# RUN chown -R ${NB_USER} ${HOME}
#
# ## Become normal user again
# USER ${NB_USER}
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
# RUN bash ~/miniconda.sh -b -p $HOME/miniconda
ADD environment.yml /tmp/environment.yml
RUN conda env create --file /tmp/environment.yml

RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH