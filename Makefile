# Keep "Brewfile" in current directory (doesn't need to be copied)

osx-grab:
	mkdir -p .config/kitty \
	; declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc" ".zshenv" ".skhdrc" ".config/kitty/kitty.conf") \
	; for file in "$${FILES[@]}"; do \
		cp ~/"$${file}" "$${file}"; \
	done \
	; declare -a DIRECTORIES=() \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ~/"$${directory}" .; \
	done

osx-put:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc" ".zshenv" ".skhdrc" ".config/kitty/kitty.conf") \
	; for file in "$${FILES[@]}"; do \
		cp ./"$${file}" ~/"$${file}"; \
	done \
	; declare -a CLEAR_DIRECTORIES=(".tmux") \
	; for directory in "$${CLEAR_DIRECTORIES[@]}"; do \
		rm -rf ~/"$${directory}"/*; \
	done \
	; declare -a DIRECTORIES=(".oh-my-zsh" ".tmux" ".vim" ".zsh" ) \
	; for directory in "$${DIRECTORIES[@]}"; do \
		cp -r ./"$${directory}" ~; \
	done
