file_path=/root/modul1
file_count=$(find "$file_path" -type f | wc -l)
echo "Number of files: $file_count"
largest_file=$(find "$file_path" -type f -exec du -h {} + | sort -rh | head -n 1 | awk '{print $2}')
largestfile_size=$(du -h "$largest_file" | awk '{print $1}')
echo "Largest file: $largest_file"
echo "Size of largest file: $largestfile_size"
