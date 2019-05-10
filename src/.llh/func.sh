fr() { find . -name "*$1*" | grep --color=auto $1}
dsfn() {
  # Stop first-n docker 
  # $1(n):int: int for first-n
  for i in {1..$1} 
  do
    docker stop "$(dpa|awk '{print $1}'|head -$(($i+1))|tail -1)"
  done
}
ddfn() {
  for i in {1..$1}
  do
   docker rm "$(dpa|awk '{print $1}'|head -2|tail -1)"
  done
}
