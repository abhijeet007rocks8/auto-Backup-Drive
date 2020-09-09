while inotifywait -e modify -e create -e delete -e move ~/repos/auto-Backup-Drive; do
  cd ~/repos/auto-Backup-Drive/
  git pull origin master
  git add .
  git commit -m "Auto backup"
  git push origin master
  cd ~
done
