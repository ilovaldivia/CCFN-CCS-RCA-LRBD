# This script will move and rename the outputfiles from OSR
$ module load gcc
cd Summary_results_Nv42

for a in CCS_Total CCS_Respiration CCS_Nutrient CCS_Diameter CCS_Transphenic CCFN_Total CCFN_Respiration CCFN_Nutrient CCFN_Diameter CCFN_Reference CCS_Reference
do
	for b in HN LN1 LN2 LN3 LN4 LN5 LN6 LN7 LN8 LN9 LN10 LN11 LN12 LN13 LN14
	do
		for e in rep1 #rep2 rep3 rep4 rep5 
		do
			echo "$a"_"$b"_"$e".tab
			cp ../"$a"_"$b"/"$e"/tabled_output.tab ./"$a"_"$b"_"$e".tab
		done
	done
done
