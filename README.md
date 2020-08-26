[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/4700)
# Container for the GATK 

## Tools included

1. [SamTools](http://www.htslib.org/)
2. [BWA](http://bio-bwa.sourceforge.net/)
3. [Datamash](https://www.gnu.org/software/datamash/)
4. [GATK](https://gatk.broadinstitute.org/hc/en-us)
5. [Picard Tools](https://broadinstitute.github.io/picard/)
6. [BioAWK](https://github.com/lh3/bioawk)
7. [BedTools](https://bedtools.readthedocs.io)

Please be sure to cite all the programs if you use this container.

## Singularity 

to pull the image

```
singularity pull --name gatk.sif shub://aseetharam/gatk:latest
```

to use the image

```
singularity exec gatk.sif samtools
singularity exec gatk.sif bwa
singularity exec gatk.sif datamash
singularity exec gatk.sif java -jar /gatk/gatk-package-4.1.8.1-local.jar
singularity exec gatk.sif java -jar /picard/picard.jar
singularity exec gatk.sif bioawk
singularity exec gatk.sif bedtools
```
