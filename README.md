
# Container for the GATK 

# Installed software:

1. [`apt` pacakges list](apt-packages.tsv)
2. [`python` packages list](python-packages.tsv)
3. [`r` pacakges list](r-packages.tsv)
4. [`conda` packages list](conda-packages.tsv)

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
