echo "Enter your guess"
read guess

function file {
	local number=$(ls -l | wc -l)-l
	echo "$number"
}
correct =$(file)
while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "number is great"
	else
		echo "number is less"
	fi
	echo "try again"
	read guess
done
echo "Congratulations"
