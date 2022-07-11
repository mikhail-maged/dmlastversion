ny=($(ls dbcontainer/))
#echo ${ny[@]}
printf "\n"
for infiles in ${ny[@]}
do
	if [[ -d dbcontainer/$infiles ]]
	then
		echo "$infiles"
		printf "\n"
	fi 

done
