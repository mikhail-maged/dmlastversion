echo 'please enter the name of databse must start with at least one alph and _ the only special char available'
read
echo $REPLY
dbname=$REPLY
#y=$(find -type d -name "$tbname" | wc -l)


y=0
ny=($(ls dbcontainer/))
echo ${ny[@]}
for infiles in ${ny[@]}
do
	if [ "$dbname" = $infiles ]
	then
		if [[ -d dbcontainer/$dbname ]]
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
else
	echo 'not exist'
	#cheking the name of table in our pattern shape
	ptcheck=1
	case $dbname in
	@([A-Za-z])*([A-Za-z0-9_])) ptcheck=0
	;;
	*) ptcheck=1
	;;
	esac
	if [ $ptcheck -eq 0 ]
	then
		echo "name in pattern"
		mkdir dbcontainer/$REPLY 
		echo "database has been created"
	else 
		echo "name not apply the pattern"
	fi
	
	
fi
