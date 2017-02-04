url=$1
correct_response="Hello World!" 

OUTPUT="$(curl $1)"

if [ "$OUTPUT" = "$correct_response" ] 
then
	exit
else
	exit 1
fi 
