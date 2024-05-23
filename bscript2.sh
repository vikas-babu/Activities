file_name=( "b.txt" "file1.txt" "hello.txt" "data.txt")

for (( i=0; i<4; i++ ))
do
	echo " the word count of file $i is $(wc -l ${file_name[i]})";
done

