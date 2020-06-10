# #
# Conda Environments with Docker - Chad Lagore - Medium
#


## Use a tag instead of "latest" for reproducibility
# FROM rocker/binder:latest
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

FROM rocker/binder:latest
ADD environment.yml /tmp/environment.yml
RUN jupyter repo2docker https://github.com/ColtonGarelli/GeneXpress conda env export -n root

RUN echo "source activate env" > ~/.bashrc
ENV PATH /opt/conda/envs/env/bin:$PATH