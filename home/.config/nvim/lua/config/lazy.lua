-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ -- Dracula theme (does not work when I put it in the plugin directory).
			"Mofiqul/dracula.nvim",
			lazy = false,
			priority = 1000,
			config = function()
				vim.cmd([[colorscheme dracula]])
			end,
		},
		{ -- nvim-treesitter
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function()
				local configs = require("nvim-treesitter.configs")

				configs.setup({
					ensure_installed = {
						"awk",
						"bash",
						"c",
						"clojure",
						"cmake",
						"cpp",
						"css",
						"csv",
						"dockerfile",
						"git_config",
						"git_rebase",
						"gitattributes",
						"gitcommit",
						"gitignore",
						"go",
						"gomod",
						"gosum",
						"gotmpl",
						"gowork",
						"hcl",
						"helm",
						"html",
						"javascript",
						"json",
						"lua",
						"make",
						"markdown",
						"markdown_inline",
						"proto",
						"python",
						"ruby",
						"rust",
						"sql",
						"ssh_config",
						"typescript",
						"vim",
						"yaml",
					},
					sync_install = false,
					highlight = { enable = true },
					indent = { enable = true },
				})
			end,
		},
		{ -- Telescope
			-- Installed with the directions here: https://github.com/nvim-telescope/telescope.nvim/tree/5972437de807c3bc101565175da66a1aa4f8707a?tab=readme-ov-file#getting-started
			-- Per the above, I installed/have installed:
			-- 	* plenary.nvim
			-- 	* ripgrep
			-- 	* fd
			-- 	* nvim-treesitter
			-- 	* devicons
			-- And I chose not to install (yet):
			-- 	* telescope-fzf-native.nvim
			-- 	* neovim LSP
			"nvim-telescope/telescope.nvim",
			lazy = false,
			tag = "0.1.8",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons",
			},
			config = function()
				local builtin = require("telescope.builtin")
				vim.keymap.set(
					"n",
					"<leader>tf",
					builtin.find_files,
					{ remap = true, silent = false, desc = '"tf" = "telescope find_files"' }
				)
				vim.keymap.set(
					"n",
					"<leader>tl",
					builtin.live_grep,
					{ remap = true, silent = false, desc = '"tf" = "telescope live_grep"' }
				)
				vim.keymap.set(
					"n",
					"<leader>tg",
					builtin.git_files,
					{ remap = true, silent = false, desc = '"tf" = "telescope git_files"' }
				)
				vim.keymap.set("n", "<leader>ts", function()
					builtin.grep_string({ search = vim.fn.input("Grep: ") })
				end, {
					remap = true,
					silent = false,
					desc = '"ts" = "telescope search" (i.e. "search for a string")',
				})
			end,
		},
		{ -- mason-lspconfig.nvim
			"williamboman/mason-lspconfig.nvim",
			lazy = false,
			-- Ordered according to the setup directions here: https://github.com/williamboman/mason-lspconfig.nvim/tree/482350b050bd413931c2cdd4857443c3da7d57cb?tab=readme-ov-file#setup
			dependencies = {
				"williamboman/mason.nvim",
				"neovim/nvim-lspconfig",
			},
			config = function()
				require("mason").setup()
				require("mason-lspconfig").setup({
					ensure_installed = { "lua_ls", "pylsp" },
				})
				require("lspconfig").lua_ls.setup({})
				require("lspconfig").pylsp.setup({})
			end,
		},
		{ -- coq.nvim
			-- Installed according to: https://github.com/ms-jpq/coq_nvim/tree/0b4015f9c18fb17e58891e645a652040e6f3e98d?tab=readme-ov-file#install
			"neovim/nvim-lspconfig",
			lazy = false,
			dependencies = {
				{ "ms-jpq/coq_nvim", branch = "coq" },
				{ "ms-jpq/coq.artifacts", branch = "artifacts" },
				{ "ms-jpq/coq.thirdparty", branch = "3p" },
			},
			init = function()
				vim.g.coq_settings = {
					auto_start = "shut-up",
				}
			end,
			config = function()
				-- TODO: Override <C-h> to get window jump behavior back.
				local lsp = require("lspconfig")
				local coq = require("coq")
				lsp.pylsp.setup(coq.lsp_ensure_capabilities({}))
				vim.cmd([[COQnow --shut-up]])
			end,
		},
		-- { -- Load all plugins from the plugin directory.
		-- 	import = "plugins",
		-- },
	},

	-- automatically check for plugin updates
	checker = { enabled = true, notify = false },
})
