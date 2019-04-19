#! /bin/bash
# username.sh
# Alex Hamel
echo "Create a username."
echo "It can only contain lowercase letters, numbers, and the underscore character,"
echo "It must be 3 - 12 characters long,"
echo "and it must start with a lowercase letter."
read USERNAME
while echo "$USERNAME" | egrep -v "^(([a-z])([a-z0-9_]{2,11}))$" > /dev/null 2>&1
do
	echo "The username you enterred broke one of these rules:"
	echo "It can only contain lowercase letters, numbers, and the underscore character,"
	echo "It must be 3 - 12 characters long,"
	echo "It must start with a lowercase letter."
	echo "Enter another username:"
	read USERNAME
done
echo "Thank you"
