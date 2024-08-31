-- (START) Helpful links
-- https://github.com/disrupted/dotfiles/blob/977dc2ef64fb12cc9ba850f42c60ad4a51a513b6/.config/nvim/init.lua
-- https://www.reddit.com/r/neovim/comments/uuh8xw/noob_vimkeymapset_vs_vimapinvim_set_keymap_key/
-- (END)   Helpful links

-- (START) My .vimrc
-- -- (START) Spaces and tabs
vim.opt.backspace = "indent,eol,start"
vim.opt.autoindent = true
vim.opt.smartindent = true
-- -- (END)   Spaces and tabs

-- -- (START) UI configuration
-- TODO: Figure out filetype stuff.
vim.opt.wildmenu = true
vim.opt.showmatch = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
-- -- (END)   UI Configuration

-- -- (START) Searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
-- -- (END)   Searching

-- -- (START) Folding
vim.opt.foldenable = true
vim.keymap.set("n", " ", "za", { remap = true, silent = false, desc = "Make the space bar fold and unfold." })
-- -- (END)   Folding

-- -- (START) Custom movements
vim.keymap.set("n", "j", "gj", { remap = true, silent = false, desc = 'More sane "j" movement over newlines, etc.' })
vim.keymap.set("n", "k", "gk", { remap = true, silent = false, desc = 'More sane "k" movement over newlines, etc.' })
vim.keymap.set(
	"n",
	"B",
	"^",
	{ remap = true, silent = false, desc = 'Make "B" move you to the beginning of the line.' }
)
vim.keymap.set("n", "E", "$", { remap = true, silent = false, desc = 'Make "E" move you to the end of the line.' })
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true, silent = false, desc = 'Change window with "CTRL+h".' })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true, silent = false, desc = 'Change window with "CTRL+j".' })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true, silent = false, desc = 'Change window with "CTRL+k".' })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true, silent = false, desc = 'Change window with "CTRL+l".' })
-- -- (END)   Custom movements

-- -- (START) Custom leader/escape
vim.g.mapleader = ","
vim.keymap.set("i", "jj", "<esc>", { remap = true, silent = false, desc = 'Change window with "CTRL+k".' })
-- -- (END)   Custom leader/escape

-- -- (START) Leader shortcuts
vim.keymap.set("n", "<leader>s", ":mksession<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>sf", ":mksession!<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>fi", ":setlocal foldmethod=indent<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>fm", ":setlocal foldmethod=marker<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>r", ":20winc ><CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>l", ":20winc <<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>u", ":res +5<<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>d", ":res -5<<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>wq", ":wqall<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>wa", ":wall<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>qa", ":qall<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>sa", "<esc>ggVG", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>n", ":nohlsearch<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>sp", ":set paste<CR>", { remap = true, silent = false, desc = "" })
vim.keymap.set("n", "<leader>snp", ":set nopaste<CR>", { remap = true, silent = false, desc = "" })
-- -- (END)   Leader shortcuts

-- -- (START) Custom functions
-- TODO: Figure out LSP stuff so TrimWhitespace is not needed.
-- -- (END)   Custom functions
-- (END)   My .vimrc
