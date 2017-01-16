set fish_greeting ""
function l
    ls -Fb $argv
end
function la
    ls -Fba $argv
end
function ll
    ls -Fblah $argv
end
function lS
    ls -FblahrS $argv
end
function lt
    ls -Fblahrt $argv
end

function tm
    tmux attach $argv
end
function tmn
    tmux new $argv
end
