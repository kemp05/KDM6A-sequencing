#!/bin/sh
gunzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_1.fq.gz
./TRIM_FOR.pl $1
gunzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_2.fq.gz
./TRIM_REV.pl $1
gzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_1.fq
gzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_2.fq
/home/bioinformatics/software/pandaseq/pandaseq-2.11/pandaseq -f SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_1.trim.fq -r SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_2.trim.fq -w SLX-14583.FLD0$1.000000000-C5PTC.s_1.r.trim.merge.fq
gzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_1.trim.fq
gzip SLX-14583.FLD0$1.000000000-C5PTC.s_1.r_2.trim.fq
