echo $1
if [ "$1" = "1234567890" ];then
 echo "yep it is the password"
else
 echo "fuck"
fi
echo "Sleep 5"
sleep 5
echo "curl 3 times"
curl -q localhost:8083
curl -q localhost:8083
a=`curl -q localhost:8083`
if [ "$a" = "Number of visits is 2" ];
 then
  echo "The script test ended OK"
   exit 0
 else
   echo "The script test fail"
   exit 1
fi
