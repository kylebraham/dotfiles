function la
  if type -q lsd
       lsd -a $argv
  else
      ls -A $argv
  end     
end