" Toggle mouse
function! ToggleMouse()
  if &mouse == 'a'
    silent set mouse=
    echo "mouse off"
  else
    silent set mouse=a
    echo "mouse on"
  endif
endfunction
