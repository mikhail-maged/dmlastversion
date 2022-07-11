echo 'please enter the name of databse you want to delete it' 
read
echo $REPLY
#y=$(find -type d -name "$REPLY" | wc -l)

y=0
ny=($(ls dbcontainer/))
echo ${ny[@]}
for infiles in ${ny[@]}
do
	if [ "$REPLY" = $infiles ]
	then
		if [[ -d dbcontainer/$REPLY ]]
		then
			echo "new find run"
			y=1
			break;
		fi 
	fi
done


if [ $y -eq 1 ] 
then
	echo 'exist'
	rm -r dbcontainer/$REPLY
	echo "that has been deleted"
else
	echo 'not exist'
fi

