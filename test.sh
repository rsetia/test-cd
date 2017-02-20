url=$1
correct_response="Hello World!" 

echo "going to curl $url..."
OUTPUT="$(curl $1)"

if [ "$OUTPUT" = "$correct_response" ] 
then
	exit
else
	exit 1
fi 
