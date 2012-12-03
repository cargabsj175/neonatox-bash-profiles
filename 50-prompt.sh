# Begin /etc/profile.d/50-prompt.sh
export PS1="\u:\w\$ "
if [ "${TERM:0:5}" = "xterm" ]; then
  export PS1="\[\e]2;\u@\H :: \w\a\]$PS1"
fi
shopt -s checkwinsize
# End /etc/profile.d/50-prompt.sh
