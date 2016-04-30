cd Desktop
cd Mothur.win_64
cd mothur
mothur.exe

> make.contigs(file=stability.files, processors=8)
 
> screen.seqs(fasta=stability.trim.contigs.fasta, group=stability.contigs.groups, summary=stability.trim.contigs.summary, maxambig=0, maxlength=275)
 
> unique.seqs(fasta=stability.trim.contigs.good.fasta)
 
> count.seqs(name=stability.trim.contigs.good.names, group=stability.contigs.good.groups)
 
> pcr.seqs(fasta=silva.bacteria.fasta, start=11894, end=25319, keepdots=F, processors=8)
 
> system(rename silva.bacteria.pcr.fasta silva.v4.fasta)
 
> align.seqs(fasta=stability.trim.contigs.good.unique.fasta, reference=silva.v4.fasta)