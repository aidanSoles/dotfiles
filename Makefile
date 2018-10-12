# Keep "Brewfile" in current directory (doesn't need to be copied)

grab:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc") \
	; for file in "$${FILES[@]}"; do \
		cp ~/"$${file}" .; \
	done \
	; declare -a DIRECTORIES=() \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ~/"$${directory}" .; \
	done

put:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc") \
	; for file in "$${FILES[@]}"; do \
		cp ./"$${file}" ~; \
	done \
	; declare -a DIRECTORIES=(".oh-my-zsh" ".vim" ".zsh" ) \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ./"$${directory}" ~; \
	done
