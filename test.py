#!/usr/bin/env python3

"""
!moet uitgevoerd worden op een linux systeem
"""

import os
import subprocess

RNA_LINK = "ftp://ftp.ncbi.nih.gov/genomes/Alligator_sinensis/RNA/rna.fa.gz"
RNA_FILE = "rna_alligator_sinesis.fa"
SEQS_FILE = "sequenties_groep_14.fa"

def main():
    get_rna()
    results = blast_seqs_rna()
    for x in results:
        print(x)

def get_rna():
    if not os.path.isfile(RNA_FILE):
        os.system("wget -O " + RNA_FILE + ".gz \"" + RNA_LINK + "\"")
        os.system("gunzip " + RNA_FILE + ".gz")
    if not os.path.isfile(RNA_FILE + ".nhr"):
        os.system("formatdb -pF -i " + RNA_FILE)

def blast_seqs_rna():
    if not os.path.isfile(SEQS_FILE):
        print("!!sequentie file niet gevonden zorg ervoor dat er een file met " +
              "de sequenties onder de naam \"" + SEQS_FILE + "\" aanwezig is.")
    else:
        command = "blastall -i " + SEQS_FILE + " -d " + RNA_FILE + " -p blastn -m9"
        blast = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE)
        out, err = blast.communicate()
        out = str(out).replace("\\t", "\t").split("\\n")
        newblast = False
        best_results = []
        for x in out:
            if x[0] == "#":
                newblast = True
            else:
                if newblast == True:
                    best_results.append(x)
                    newblast = False
    return(best_results)

        

main()

#ftp://ftp.ncbi.nih.gov/genomes/Alligator_sinensis/RNA/rna.fa.gz
