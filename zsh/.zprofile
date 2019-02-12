if (( $+commands[fortune] && $+commands[cowthink] )); then
  fortune | cowthink -f stegosaurus -W 60
fi

export TESTTWO=bar
