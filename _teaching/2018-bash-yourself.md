---
title: "Bash yourself!"
collection: teaching
type: "Assignment"
permalink: /teaching/2018-bash-yourself
venue: "UCSC EEB"
date: 2018-12-05
location: "Santa Cruz, California"
---

**Opening the command line**

If you have a Mac, please read this [article](https://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line) and find the terminal on your system.

If you are a Windows user, download and install [putty](https://www.putty.org/). Ask someone to get you on the server. 

If you are using Linux, you know what to do.

**BASH 101**

Go to this website: [https://linuxjourney.com/](https://linuxjourney.com/).

Click on ["Command line"](https://linuxjourney.com/lesson/the-shell) and complete the tutorial, answering all questions and completing excersises.
Do all excersises on your computer in the command line.

**Basic text wrangeling**

Go to this website: [https://linuxjourney.com/](https://linuxjourney.com/).

Click on ["Text-Fu"](https://linuxjourney.com/lesson/stdout-standard-out-redirect).
Complete the tutorial, answering all questions and completing excersises.
Do all excersises on your computer in the command line.

**Advanced BASH: scripting!**

Go to this website: [https://www.shellscript.sh](https://www.shellscript.sh).

GO through the entire tutorial, repeating all examples on your computer. 
*Do not* do exercises at the end of the tutorial (it's up to you, but they are useless for our goals) (https://www.shellscript.sh/exercises.html) - they are not useful for our purpuses. 

**Final assignment**

When you are done with all assignments, come to me and ask for the final assignment.
Only after completing the final assignment you are allowed to be on the lab server.
For the final assignment, you will be given a real working shell script. Your goal is to figure out what this script is doing. In order to pass, you will need to comment on EACH LINE of the script explaining what it does. 

**The current version of the final assignment is here:**
[test_bash.sh](https://raw.githubusercontent.com/avershinina/avershinina.github.io/master/test_bash.sh).

Please comment *each line*, explaining what is going on. Make your comments as detailed as possible. 
Send me this same script with your comments as **.sh** file.
Use your own favorite text editor. 

There are two programs used in the test script. Your task is not only to explain what bash does but also explain what each program command does. You will need to go to the program website and look for options and flags. Finding commands and arguments in the software of interest is an essential bioinfo skill. Don't go into details here, just describe briefly what the command does. 
These programs are:

* [angsd](http://www.popgen.dk/angsd/index.php/ANGSD).
* [samtools](http://www.htslib.org/doc/samtools.html).

**Example answers:**

```bash
### Example software line
samtools sort genome.bam -o genome.sorted.bam # sort BAM file with samtools, output file name file.sorted.bam

### Example for loop
for i in *Q.trf.rpt.mskr.filtered.snp # for each file that has extension Q.trf.rpt.mskr.filtered.snp
do # run this code:
echo "Subsetting: "$i  # output "Subsetting: filename"
grep -E 'chr10|chr11|chr12|chr13|chr14|chr15' $i > $i".subsampled" # open $i, find lines where one of these 6 chromosomes can be found, output a line containing the corresponding chromosome. Redirect output to a new file named as $i, but with an extension ".subsampled".

done # finish the for loop.

```

## Ask questions!

- ask me;
- ask your peers;
- google;
- google more.

*Have fun with it!*
