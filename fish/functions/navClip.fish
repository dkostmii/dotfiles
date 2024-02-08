function navClip
  if test $XDG_SESSION_TYPE = "wayland"
    set -f path $(wl-paste)
  else
    set -f path $(xclip -o)
  end

  cd $path
end
