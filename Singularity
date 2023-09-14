Bootstrap: docker
From: broadinstitute/gatk:latest

%labels
   MAINTAINER Arun Seetharam
   EMAIL arnstrm@iastate.edu

%runscript
   echo "use the '$GATKHOME' for location of gatk jar file which is '$GATK'"
   echo "use the '$PICARDHOME' for the location of picard.jar file" 
   echo "all tools are in the path (datamash, bioawk, bwa, samtools, vcftools)" 

%environment
    export GATKHOME=/gatk
    export GATK=gatk-package-4.4.0.0-local.jar
    export PICARDHOME=/picard
    export PATH=$PATH:/opt/bwa-mem2

%post
   curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
   apt-get update
   apt-get install -y build-essential wget curl git autoconf automake
   apt-get install -y gcc g++ bison make
   apt-get install -y perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev
   # install BWA
   apt-get install -y bwa
   # install datamash   
   apt-get install -y datamash
   # install bedtools
   apt-get install -y bedtools
   # vcftools
   apt-get install -y vcftools
   # install samtools
   apt-get install -y samtools
   # install STAR
   apt-get install -y rna-star
   # install bioawk
   cd /opt
   git clone https://github.com/lh3/bioawk.git
   cd bioawk
   make
   mv bioawk maketab /usr/bin/
   # picard
#   mkdir -p /picard
#   cd /picard
#   wget https://github.com/broadinstitute/picard/releases/download/2.25.1/picard.jar
   # install BWA-mem2
   mkdir -p /bwa-mem2
   cd /opt
   # Compile from source (not recommended for general users)
   # Get the source
   git clone --recursive https://github.com/bwa-mem2/bwa-mem2
   cd bwa-mem2
   # Compile and run
   make

#   curl -L https://github.com/bwa-mem2/bwa-mem2/releases/download/v2.2.1/bwa-mem2-2.2.1_x64-linux.tar.bz2 | tar jxf - 
