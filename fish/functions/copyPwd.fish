function copyPwd
  if test $XDG_SESSION_TYPE = "wayland"
    wl-copy $PWD
  else
    echo $PWD | xclip -i
  end

  echo "Copied PWD to clipboard."
end
