if pgrep ngrok > /dev/null
then
    :
else
    echo "Starting ngrok in tmux session"
    tmux new-session -d -s "ngrok" './ngrok tcp 22'
fi
