grab:
	declare -a FILES=(".bible_verses" ".tmux.conf" ".vimrc" ".zshrc" "Brewfile") \
	; for file in "$${FILES[@]}"; do \
		cp ~/"$${file}" .; \
	done

# TODO: Make put target
