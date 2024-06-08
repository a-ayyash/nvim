return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
				},
			},
			defaults = {
				file_ignore_patterns = {
					".git/",
					"node_modules/",
					".npm/",
					"*[Cc]ache/",
					"*-cache*",
					"*.pdf",
					"*.log",
					"*.jpg",
					"*.jpeg",
					"*.png",
					"*.tar.gz",
					"*.tar",
					"*.zip",
					"*.class",
					"*.pdb",
					"*.dat",
				},
				vimgrep_arguments = {
					"rg",
					"--follow", -- Follow symbolic links
					"--hidden", -- Search for hidden files
					"--no-heading", -- Don't group matches by each file
					"--with-filename", -- Print the file path with the matched lines
					"--line-number", -- Show line numbers
					"--column", -- Show column numbers
					"--smart-case", -- Smart case search
					---- Exclude some patterns from search
					"--glob=!**/.git/*",
					"--glob=!**/.idea/*",
					"--glob=!**/.vscode/*",
					"--glob=!**/.venv/*",
					"--glob=!**/build/*",
					"--glob=!**/node_modules/*",
					"--glob=!**/dist/*",
					"--glob=!**/yarn.lock",
					"--glob=!**/yarn.lock",
					"--glob=!**/package-lock.json",
					"--glob=!**/.npm/*",
					"--glob=!**/*[Cc]ache/*",
					"--glob=!**/*-cache*",
					"--glob=!**/*.pdf",
					"--glob=!**/*.log",
					"--glob=!**/*.jpg",
					"--glob=!**/*.jpeg",
					"--glob=!**/*.png",
					"--glob=!**/*.tar.gz",
					"--glob=!**/*.tar",
					"--glob=!**/*.zip",
					"--glob=!**/*.class",
					"--glob=!**/*.pdb",
					"--glob=!**/*.dat",
				},
			},
			--defaults = {
			--path_display = { "smart" },
			--vimgrep_arguments = {
			--"rg",
			--"--follow",        -- Follow symbolic links
			--"--hidden",        -- Search for hidden files
			--"--no-heading",    -- Don't group matches by each file
			--"--with-filename", -- Print the file path with the matched lines
			--"--line-number",   -- Show line numbers
			--"--column",        -- Show column numbers
			--"--smart-case",    -- Smart case search
			--
			---- Exclude some patterns from search
			--"--glob=!**/.git/*",
			--"--glob=!**/.idea/*",
			--"--glob=!**/.vscode/*",
			--"--glob=!**/.venv/*",
			--"--glob=!**/build/*",
			--"--glob=!**/node_modules/*",
			--"--glob=!**/dist/*",
			--"--glob=!**/yarn.lock",
			--"--glob=!**/package-lock.json",
			--},
			--mappings = {
			--i = {
			--["<C-k>"] = actions.move_selection_previous, -- move to prev result
			--["<C-j>"] = actions.move_selection_next, -- move to next result
			--["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			--},
			--},
			--},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("scope")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader><leader>", "<cmd>Telescope scope buffers<cr>", { desc = "Find buffers" })
	end,
}
