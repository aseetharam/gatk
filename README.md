# Container for the GATK 

[![https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg](https://www.singularity-hub.org/static/img/hosted-singularity--hub-%23e32929.svg)](https://singularity-hub.org/collections/4700)

## Tools included


1. SamTools
2. BWA
3. Datamash
4. GATK
5. Picard Tools


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
```

