# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
# More images can be found here: https://github.com/jupyter/docker-stacks
FROM jupyter/scipy-notebook:82b978b3ceeb

# Extra weight comes from datascience set up rather than python 2 I reckon

LABEL maintainer="Antoine Dao"

USER root

# Add repository notebooks into the joyvan home directory
COPY Notebooks/ $HOME
RUN cd $HOME \
    && git clone https://github.com/barbagroup/CFDPython

USER $NB_USER
