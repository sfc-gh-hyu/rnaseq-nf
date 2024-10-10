FROM mambaorg/micromamba
MAINTAINER Paolo Di Tommaso <paolo.ditommaso@gmail.com>

RUN \
   micromamba install -y -n base -c defaults -c bioconda -c conda-forge \
      salmon=1.10.2 \
      fastqc=0.12.1 \
      multiqc=1.17 \
      python=3.11 \
      typing_extensions \
      importlib_metadata \
      procps-ng \
   && micromamba clean -a -y

COPY . /rnaseq-nf
COPY bin/fastqc.sh /usr/bin

ENV PATH="$MAMBA_ROOT_PREFIX/bin:$PATH"
USER root
