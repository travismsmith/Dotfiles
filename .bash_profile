#!/bin/bash
set -o vi
for file in ~/.{exports,functions,aliases,bashrc,bash_prompt,iterm2_shell_integration.bash}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
  else
    echo "Invalid File: $file"
	fi
done
unset file
