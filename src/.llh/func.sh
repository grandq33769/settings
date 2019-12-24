fr() { find . -name "*$1*" | grep --color=auto $1}
dil() { di | head -2 | awk {'print $3'} | tail -1 }
dsfn() {
  # Stop first-n docker 
  # $1(n):int: int for first-n
  for i in {1..$1} 
  do
    docker stop "$(dpa|awk '{print $1}'|head -$(($i+1))|tail -1)"
  done
}
drmfn() {
  # Remove first-n docker 
  # $1(n):int: int for first-n
  for i in {1..$1}
  do
   docker rm "$(dpa|awk '{print $1}'|head -2|tail -1)"
  done
}
drmifn() {
  # Remove first-n image
  # $1(n):int: int for first-n
  for i in {1..$1}
  do
   docker rmi "$(di|awk '{print $3}'|head -2|tail -1)"
  done
}
cl() {
 cd ${1} && l
}
lt(){
 # List the last n item
 num=${1}
 l -1 | tail -${num} | head -1
}
lf(){
 # List the first n item
 num=${1}
 l -1 | head -${num} | tail -1
}
ltr(){
 # List last n item in range
 start=${1}
 end=${2}
 l -1 | tail -${end} | head -$(($end-$start+1))
}
lfr(){
 # List first n item in range
 start=${1}
 end=${2}
 l -1 | head -${end} | tail -$(($end-$start+1))
}
mvfr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(lfr ${start} ${end})
 echo ${list} | xargs -I {} mv {} ${des}
}
mvtr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(ltr ${start} ${end})
 echo ${list} | xargs -I {} mv {} ${des}
}
cpfr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(lfr ${start} ${end})
 echo ${list} | xargs -I {} cp {} ${des}
}
cptr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(ltr ${start} ${end})
 echo ${list} | xargs -I {} cp {} ${des}
}
rmfr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(lfr ${start} ${end})
 echo ${list} | xargs -I {} rm -r {} ${des}
}
rmtr(){
 start=${1}
 end=${2}
 des=${3}
 list=$(ltr ${start} ${end})
 echo ${list} | xargs -I {} rm -r {} ${des}
}
cll() {
 cl "$(lt $1)"
}
ol() {
 open "$(lt $1)"
}
clf() {
 cl "$(lf $1)"
}
of() {
 open "$(lf $1)"
}
