dir=$1
minimum=$2
if [ $1 == "--help" ]; then
  echo "This awesome script will list files in a given directory whose size is larger than K bytes"
  echo "First argument being a path"
  echo "Second argument being K bytes"
  echo "for more information of this awesome script. Please contact us at secrettears53410@gmail.com"
  echo "well, we don't really have any additional information to give you so please don't"
  exit
fi
num='^[0-9]+$'
if ! [[ $minimum =~ $num ]] ; then
  echo "error: wrong input, for more help please enter --help in the first argument"
  exit
fi
dirn=`basename $1/`
for f in `ls $dirn`
do
  if [ -f $f ]; then
    file=$(wc -c <"$f")
    if [ $file -ge $minimum ] ; then
    echo $f
  fi
fi
done
