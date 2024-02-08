function cleanClipboard
  if test $XDG_SESSION_TYPE = "wayland"
    wl-copy --clear
  else
    xclip -i < /dev/null && xclip -i -selection clipboard < /dev/null
  end

  echo "Clipboard cleared!"
end
