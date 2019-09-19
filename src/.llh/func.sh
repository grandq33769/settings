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
  for i in {1..$1}
  do
   docker rm "$(dpa|awk '{print $1}'|head -2|tail -1)"
  done
}
drmifn() {
  for i in {1..$1}
  do
   docker rmi "$(di|awk '{print $3}'|head -2|tail -1)"
  done
}
