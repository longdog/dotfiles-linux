function cdp
	if test -z $argv
        cd ~/projects
    else
        cd ~/projects/$argv
	end
end
