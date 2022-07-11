echo "please enter table name"
read
dbpath=$1
#y=$(find -type d -name "$REPLY" < $dbpath | wc -l)

tbname=$REPLY


y=0
ny=($(ls $dbpath/))
echo ${ny[@]}
for infiles in ${ny[@]}
do
	if [ "$tbname" = $infiles ]
	then
		if [[ -f $dbpath/$tbname ]]
		then
			echo "new find run"
			y=1
			break;
		fi 
	fi
done


#cheking the existence of table
if [ $y -ne 1 ]
then
	echo "not exist"
	
else
	rm $dbpath/$tbname
	echo "that table has been deleted"

fi


