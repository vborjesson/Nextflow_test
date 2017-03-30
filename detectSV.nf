#!/usr/bin/env nextflow 

params.in = '' 
sequence = file(params.in)

process findDupli {
	publishDir "~/detectSV", mode: 'copy', overwrite: true
	errorStrategy 'ignore'

	input:
	file sequence

	output:
	file 'output1' into records 

	script:
	'''
	python3 testnext.py ${sequence}  
	'''
}




