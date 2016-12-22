apk update 
test=`apk version |  wc -l` 
if [ "$test" -gt 1 ];  then
  exit 1
fi
for file in /etc/my_update/*; do "$file";
te=$?
if [ $te -ne 0 ]; then
echo "update: $file return:$te"
exit $te
fi
done
exit 0

