FROM jupyter/scipy-notebook

LABEL maintainer="Panepo <panepo@github.io>"

# install tensorflow
RUN conda install --quiet --yes -c anaconda tensorflow

# install keras
RUN conda install --quiet --yes -c anaconda keras=2.2.4

# install opencv
RUN conda install --quiet --yes -c conda-forge opencv=3.4.3

RUN conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER