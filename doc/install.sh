#!/bin/bash

doc_dir="./doc"
if [ ! -d $doc_dir ]; then
  mkdir $doc_dir
fi

touch ./doc/push.sh
echo "#!/bin/bash
if [ $# -eq 0 ]
then 
    pushmessage=`date +%A-%d/%B/%Y-%H:%M:%S`
else
    pushmessage="$*"
fi

echo ${pushmessage}

git pull;
git status;
git add -A; 
git commit -m "${pushmessage}";
git push -u origin main;" > ./doc/push.sh

chmod +x ./doc/push.sh

# ./doc/push.sh
echo -en 'test ${}\ntest2{} ' >> ./doc/push.sh