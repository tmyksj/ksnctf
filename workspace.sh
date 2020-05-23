#!/bin/bash

root=$(dirname $0)
task=$1

if [ -z "$task" ]; then
    exit 1
fi

mkdir -p "$root/$task"
cd "$root/$task"

if [ ! -f "README.md" ]; then
    cat << EOF > "README.md"
# $task

# Flag
\`\`\`
\`\`\`
EOF
fi

while true; do
    echo -e -n "\e[34;1m$task\e[m > "
    read cmd

    case "$cmd" in
        "h")
            echo
            echo -e "    \e[30;1mworkspace\e[m   .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  ."
            echo "    .                                                                    ."
            echo "    .       h ........... show help                                      ."
            echo "    .                                                                    ."
            echo "    .       ac .......... commit & exit                                  ."
            echo "    .       e ........... exit                                           ."
            echo "    .                                                                    ."
            echo "    .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  ."
            echo
            ;;
        "ac")
            git reset HEAD .
            git add .
            git commit -m "$task"
            exit
            ;;
        "e")
            exit
            ;;
    esac
done
