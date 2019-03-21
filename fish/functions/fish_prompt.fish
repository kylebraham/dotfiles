function fish_prompt

    # FYI need nerdfonts for prompt
    # define git functions if not already defined
    if not set -q -g __fish_git_functions_defined
        set -g __fish_git_functions_defined
        function _git_branch_name
            echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
        end
        function _is_git_dirty
            echo (git status -s --ignore-submodules=dirty ^/dev/null)
        end
    end

    # colors
    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l magenta (set_color -o magenta)
    set -l red (set_color -o red)
    set -l blue (set_color -o blue)
    set -l green (set_color -o green)
    set -l normal (set_color normal)

    # user
    set -l user $cyan(printf "\uf2c0 $USER")
    # set path
    set -l cwd $magenta(printf "\uf07b "; prompt_pwd)
    # cluster context
    set -l cluster_info $blue(printf "\ue900 ";oc config current-context | perl -pe "s/:.*//") 
     set -l cluster_info $blue(printf "\Ufd31 ";oc config current-context | perl -pe "s/:.*//")

    set -l start_braket $normal'['
    set -l end_braket $normal']'

    # if git branch
    if [ (_git_branch_name) ]
        set git_info $green(printf "\ue725 ";_git_branch_name)

        # if dirty
        if [ (_is_git_dirty) ]
            set -l dirty "$red ✗"
            set git_info "$git_info$dirty"
        else
            set git_info "$git_info"
        end
    end

    echo -n -s "$start_braket$user$end_braket--$start_braket$cluster_info$end_braket--$start_braket$cwd$end_braket--$start_braket$git_info$end_braket-->"
    echo -e '\n'
end