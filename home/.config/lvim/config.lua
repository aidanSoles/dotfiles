-- start: plugins

lvim.plugins = {
  { "mofiqul/dracula.nvim" }, -- install dracula theme
  { "kyazdani42/nvim-tree.lua" } -- install nvim-tree
}

-- end: plugins

-- start: key bindings

lvim.keys.insert_mode["jj"] = "<esc>" -- remap "jj" -> <esc>
vim.opt.timeoutlen = 300 -- make key timeout slower for "jj"

-- scroll to top/bottom of the line based off of scrolling direction (https://github.com/aidanSoles/dotfiles/blob/357ec03944bc2030f97a8eedaaf4b395e0e9081d/.vimrc#L72-L73)
lvim.keys.normal_mode["j"] = "gj" -- remap "j" -> "gj"
lvim.keys.normal_mode["k"] = "gk" -- remap "k" -> "gk"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>" -- remap <ctrl> + "s" -> save

lvim.keys.normal_mode[",m"] = ":mksession<cr>" -- remap , + "m" -> make session
lvim.keys.normal_mode[",mf"] = ":mksession!<cr>" -- remap , + "mf" -> (force) make session
lvim.keys.normal_mode[",n"] = ":nohlsearch<cr>" -- remap , + "n" -> clear highlighting
lvim.keys.normal_mode[",w"] = ":res +5<cr>" -- remap , + "w" -> increase window size vertically
lvim.keys.normal_mode[",s"] = ":res -5<cr>" -- remap , + "s" -> decrease window size vertically
lvim.keys.normal_mode[",a"] = ":10winc <<cr>" -- remap , + "a" -> increase window size horizontally
lvim.keys.normal_mode[",d"] = ":10winc ><cr>" -- remap , + "d" -> decrease window size horizontally
lvim.keys.normal_mode[",wq"] = ":wqall<cr>" -- remap , + "wq" -> save and quit all files
lvim.keys.normal_mode[",wa"] = ":wall<cr>" -- remap , + "wa" -> save all files
lvim.keys.normal_mode[",qa"] = ":qall<cr>" -- remap , + "qa" -> quit all files
lvim.keys.normal_mode[",sa"] = "<esc>ggVG" -- remap , + "sa" -> select all
lvim.keys.normal_mode[",t"] = ":NvimTreeToggle<cr>" -- remap , + "t" -> open nvim-tree
lvim.keys.normal_mode[",tr"] = ":NvimTreeRefresh<cr>" -- remap , + "tr" -> refresh nvim-tree

-- end: key bindings

-- start: themes

lvim.colorscheme = "dracula" -- use dracula theme

-- end: themes

-- start: general

lvim.log.level = "warn" -- show warnings and above

lvim.format_on_save = true -- format files on save

-- end: general
