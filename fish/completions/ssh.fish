function __fish_complete_ssh_hosts
    awk '/^Host / {for (i=2; i<=NF; i++) print $i}' ~/.ssh/config
end

complete -f -c ssh -a '(__fish_complete_ssh_hosts)'
