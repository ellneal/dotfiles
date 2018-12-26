#!/bin/bash

# for file in $(find "/usr/local/etc/bash_completion.d"); do
for file in /usr/local/etc/bash_completion.d/*; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        # shellcheck source=/dev/null # https://github.com/koalaman/shellcheck/wiki/SC1090
        source "$file"
    fi
done

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,functions,path,dockertools,extra,exports}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        # shellcheck source=/dev/null # https://github.com/koalaman/shellcheck/wiki/SC1090
        source "$file"
    fi
done
unset file
