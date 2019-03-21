function ls 
  if type -q lsd
       lsd $argv
  else
      ls $argv
  end     
end 

