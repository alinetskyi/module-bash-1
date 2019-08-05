if [[ $# != 1 ]] || [[ $1 == "0" ]];
then
    exit 1
fi

result=$(head -n $1 ~/bash/ex07/resourses/surnames.txt)
string=$(echo "$result" | sed 's/\.//g;s/- / /g' | grep -v "Q-Chem")
echo "$string"

exit 0
