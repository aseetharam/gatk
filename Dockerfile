ARG BASE_IMAGE=broadinstitute/gatk
ARG BASE_TAG=latest
FROM $BASE_IMAGE:$BASE_TAG

LABEL maintainer="arnstrm"
LABEL version="1.0"
LABEL description="Docker image for GATK nextflow workflows"

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
RUN apt-get update
RUN apt-get install -y build-essential wget curl git autoconf automake
RUN apt-get install -y gcc g++ bison make
RUN apt-get install -y perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev

# install conda
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -u -p /opt/miniconda
ENV PATH="/opt/miniconda/bin:${PATH}"
RUN conda update -n base -c defaults conda

# install conda packages
RUN conda install -y -c bioconda pbmm2
RUN conda install -y -c bioconda minimap2
RUN conda install -y -c bioconda bcftools
RUN conda install -y -c bioconda freebayes
RUN conda install -y -c bioconda bwa
RUN conda install -y -c bioconda datamash
RUN conda install -y -c bioconda bedtools
RUN conda install -y -c bioconda vcftools
RUN conda install -y -c bioconda samtools
RUN conda install -y -c bioconda star
RUN conda install -y -c bioconda snpeff
RUN conda install -y -c bioconda bwa-mem2 
RUN conda install -y -c bioconda bioawk