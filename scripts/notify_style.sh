file_name=$1

nohup echo "sleep 0.2; execute_style.sh ${file_name}" | at now &

return $(cat $file_name)
exit 0
