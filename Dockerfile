FROM broadinstitute/gatk:4.1.8.1 AS spython-base
LABEL MAINTAINER Arun Seetharam
LABEL EMAIL arnstrm@iastate.edu
ENV GATKHOME=/gatk
ENV GATK=gatk-package-4.1.8.1-local.jar
ENV PICARDHOME=/picard
RUN echo "echo "use the '$GATKHOME' for location of gatk jar file which is '$GATK'"" >> /entrypoint.sh
RUN echo "echo "use the '$PICARDHOME' for the location of picard.jar file"" >> /entrypoint.sh
RUN echo "echo "all tools are in the path (datamash, bioawk, bwa, samtools)"" >> /entrypoint.sh
RUN chmod u+x /entrypoint.sh
RUN echo "samtools" >> /tests.sh
RUN echo "bwa" >> /tests.sh
RUN echo "which datamash" >> /tests.sh
RUN echo "echo "$GATKHOME $GATK $PICARDHOME"" >> /tests.sh
RUN echo "java -version" >> /tests.sh
RUN chmod u+x /tests.sh
RUN apt-get update
RUN apt-get install -y build-essential wget curl git autoconf automake
RUN apt-get install -y gcc g++ bison make
RUN apt-get install -y perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev
RUN apt-get install -y bwa
RUN apt-get install -y datamash
RUN cd /opt
RUN wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2
RUN tar xf samtools-1.10.tar.bz2
RUN cd samtools-1.10
RUN ./configure
RUN make
RUN make install
RUN cd /opt
RUN git clone https://github.com/lh3/bioawk.git
RUN cd bioawk
RUN make
RUN mv bioawk maketab /usr/bin/
RUN mkdir -p /picard
RUN cd /picard
RUN wget https://github.com/broadinstitute/picard/releases/download/2.23.3/picard.jar
CMD /bin/bash /entrypoint.sh
HEALTHCHECK /bin/bash /tests.sh
