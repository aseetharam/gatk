
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
singularity pull --name gatk_4.4.0.sif docker://arnstrm2/gatk:4.4.0
```

## Docker

to pull the image

```
docker pull arnstrm2/gatk:4.4.0
```

example usage:

```bash
singularity exec gatk_4.4.0.sif samtools
singularity exec gatk_4.4.0.sif bwa
singularity exec gatk_4.4.0.sif bwa-mem2
singularity exec gatk_4.4.0.sif bioawk
singularity exec gatk_4.4.0.sif datamash
singularity exec gatk_4.4.0.sif vcftools
singularity exec gatk_4.4.0.sif bcftools
singularity exec gatk_4.4.0.sif bedtools
singularity exec gatk_4.4.0.sif STAR
singularity exec gatk_4.4.0.sif minimap2
singularity exec gatk_4.4.0.sif pbmm2
singularity exec gatk_4.4.0.sif freebayes
singularity exec gatk_4.4.0.sif java -jar /opt/snpEff/snpEff.jar
# running gatk tools
singularity exec gatk_4.4.0.sif gatk --spark-runner LOCAL CreateSequenceDictionary # or
singularity exec gatk_4.4.0.sif java -jar /gatk/gatk-package-4.4.0.0-local.jar CreateSequenceDictionary # or
singularity exec gatk_4.4.0.sif java -jar /gatk/gatk.jar CreateSequenceDictionary
```
