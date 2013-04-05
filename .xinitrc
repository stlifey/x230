# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

if [ -f $HOME/.xmodmap ]; then
    /usr/bin/xmodmap $HOME/.xmodmap
fi

/usr/bin/xrandr --dpi 128
/usr/bin/xrandr --output LVDS1 --auto
/usr/bin/xrandr --output VGA1 --auto

exec openbox-session
