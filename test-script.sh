echo "Sleep 5"
sleep 5
echo "curl 3 times"
curl -q localhost:8083
curl -q localhost:8083
a=`curl -q localhost:8083`
if [ "$a" = "Number of visits is 3" ];
 then
  echo "The script test ended OK"
   exit 0
 else
   echo "The script test fail"
   exit 1
fi
