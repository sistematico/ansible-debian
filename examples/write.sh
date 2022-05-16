trap ctrl_c INT

function ctrl_c() {
        echo "** Trapped CTRL-C"
}

read -d '' versionNotes
echo -e "$versionNotes" > /tmp/yt.txt