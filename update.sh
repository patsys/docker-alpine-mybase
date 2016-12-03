apk update && apk version |  wc -l | { read test; if [ "$test" -le 1 ];  then  return 1; fi; }
r=$?
if [ r -eq 1 ]; then
  exit $r
fi
for file in /etc/my_update/*; do "$file";
te=$?
if [ $te -ne 0 ]; then
echo "update: $file return:$te"
exit $te
fi
done
exit 0

