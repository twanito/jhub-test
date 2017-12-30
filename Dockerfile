# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
# More images can be found here: https://github.com/jupyter/docker-stacks
FROM jupyter/datascience-notebook

# commit has of last python 2 kernel in datascience-notebook:82b978b3ceeb
# want to see if python 2 is adding weight of if it's just the datascience-notebook or maybe the old version

LABEL maintainer="Antoine Dao"

USER root

# Add repository notebooks into the joyvan home directory
COPY Notebooks/ $HOME
RUN cd $HOME \
    && git clone https://github.com/barbagroup/CFDPython

USER $NB_USER
