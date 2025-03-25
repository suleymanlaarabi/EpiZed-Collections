file_name=$1

mkdir tmp
cp $file_name ./tmp/

result=$(epicheck ./tmp/ ./tmp/)
content=$(cat ./tmp/coding-style-reports.log)
rm -rf ./tmp
fchar=$(echo "$result" | cut -d ' ' -f1)

if [ "$fchar" != "0" ]; then
    value=$(echo "${content}" | head -n 1)
    notify-send -t 4000 -u normal "${value}"
    value="${value%:*}"
    zed ${value%:*}
fi
