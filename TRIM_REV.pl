#!/usr/bin/perl
# To trim 3' end of reads within fastq files to a set length
# and trim length of associated quality score line accordingly, to facilitate
# PANDAseq
# REVERSE

$results  = "SLX-14583.FLD0"."$ARGV[0]".".000000000-C5PTC.s_1.r_2.trim.fq";
open(OUTPUT, ">>$results");

open (INPUT, "SLX-14583.FLD0"."$ARGV[0]".".000000000-C5PTC.s_1.r_2.fq") or die "\nInput file could not be found\n\n";

$line = 1;
while (<INPUT>){
	chomp ($_);
	if ($line == 2){
		$trim_seq = substr($_,0,120);
		print OUTPUT "$trim_seq\n";   
	}elsif($line == 4){
		$trim_quality = substr($_,0,120);
		print OUTPUT "$trim_quality\n";
	}else{
		print OUTPUT "$_\n";
	}
	$line = $line +1;
	if ($line == 5){
		$line = 1;
	}
}
	
exit;
