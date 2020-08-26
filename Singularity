Bootstrap: docker
From: broadinstitute/gatk:4.1.8.1

%labels
   MAINTAINER Arun Seetharam
   EMAIL arnstrm@iastate.edu

%runscript
   echo "use the '$GATKHOME' for location of gatk jar file which is '$GATK'"
   echo "use the '$PICARDHOME' for the location of picard.jar file" 
   echo "all tools are in the path (datamash, bioawk, bwa, samtools)" 

%test
    samtools --help
    bwa --help
    which datamash
    echo "$GATKHOME $GATK $PICARDHOME"
    java -version

%environment
    export GATKHOME=/gatk
    export GATK=gatk-package-4.1.8.1-local.jar
    export PICARDHOME=/picard

%post
   apt-get update
   apt-get install -y build-essential wget curl git autoconf
   apt-get install -y gcc g++ bison
   apt-get install -y autoconf automake make perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev   
   apt-get install -y bwa datamash
   # install samtools
   cd /opt
   wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2
   tar xf samtools-1.10.tar.bz2
   cd samtools-1.10
   ./configure
   make
   make install
   # install bioawk
   cd /opt
   git clone https://github.com/lh3/bioawk.git
   cd bioawk
   make
   mv bioawk maketab /usr/bin/
  # picard
  mkdir -p /picard
  cd /picard
  wget https://github.com/broadinstitute/picard/releases/download/2.23.3/picard.jar

