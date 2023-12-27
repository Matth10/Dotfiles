if test ! $(which spoof)
then
  if test $(which npm)
  then
    sudo npm install spoof commitizen cz-conventional-changelog -g
  fi
fi
