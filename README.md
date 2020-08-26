# Container for the GATK

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
singularity exec gatk.sif java -jar $GATKHOME/$GATK
singularity exec gatk.sif java -jar $PICARDHOME/picard.jar
```

