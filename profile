# Begin /etc/profile
for script in /etc/profile.d/*.sh
do
  source $script
done
unset script
# End /etc/profile
