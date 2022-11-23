a=1
for i in domain_p*.pddl; do
  new=$(printf "%02d.jpg" "$a") #04 pad to length of 4
  echo $new

  new=$(printf "domain_p%02d.pddl" "$a") #04 pad to length of 4
  mv "$new" "p$a-domain.pddl"
  let a=a+1
done