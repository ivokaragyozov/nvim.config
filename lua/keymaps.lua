local which_key = require("which-key")

which_key.setup()

which_key.add({
	-- Navigation
	{ "<c-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Window left" },
	{ "<c-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Window down" },
	{ "<c-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Window up" },
	{ "<c-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Window right" },

	-- Splits
	{ "<leader>|", "<cmd>vsplit<cr>", desc = "Split vertically" },
	{ "<leader>-", "<cmd>split<cr>", desc = "Split horizontally" },

	-- NvimTree
	{ "<leader>t", group = "NvimTree command" },
	{ "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
	{ "<leader>tf", "<cmd>NvimTreeFindFile<cr>", desc = "Find file in tree" },
	{ "<leader>tc", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse file tree" },

	-- Misc
	{ "<esc>", "<cmd>nohlsearch<cr>", desc = "Clear search highlight" },

	-- Diagnostics
	{ "<leader>d", group = "Diagnostics" },
	{ "<leader>dh", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Hover" },
	{ "<leader>dn", "<cmd>lua vim.diagnostic.jump({count=1, float=true})<cr>", desc = "Next diagnostic" },
	{ "<leader>dp", "<cmd>lua vim.diagnostic.jump({count=-1, float=true})<cr>", desc = "Previous diagnostic" },

	-- Fuzzy find
	{ "<leader>f", group = "Fuzzy find commands" },
	{ "<leader>fb", "<cmd>lua require('fzf-lua').buffers()<cr>", desc = "Buffers" },
	{ "<leader>fd", "<cmd>lua require('fzf-lua').diagnostics_document()<cr>", desc = "Diagnostics" },
	{ "<leader>ff", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Files" },
	{
		"<leader>fF",
		"<cmd>lua require('fzf-lua').files({ fd_opts = '--no-ignore --type f --hidden' })<cr>",
		desc = "Files (include hidden)",
	},
	{ "<leader>fg", "<cmd>lua require('fzf-lua').live_grep_native()<cr>", desc = "Live grep" },
	{
		"<leader>fG",
		"<cmd>lua require('fzf-lua').live_grep_native({ rg_opts = '--column --no-ignore --hidden' })<cr>",
		desc = "Live grep (include hidden)",
	},
	{ "<leader>fh", "<cmd>lua require('fzf-lua').helptags()<cr>", desc = "Help" },

	-- Git
	{ "<leader>g", group = "Git" },
	{ "<leader>gb", "<cmd>Git blame<cr>", desc = "Blame" },
	{ "<leader>gc", "<cmd>Git commit<cr>", desc = "Commit" },
	{ "<leader>gd", "<cmd>Gitsigns diffthis<cr>", desc = "Diff" },
	{ "<leader>gh", "<cmd>lua require('fzf-lua').git_bcommits()<cr>", desc = "History" },
	{ "<leader>gn", "<cmd>Gitsigns next_hunk<cr>", desc = "Next hunk" },
	{ "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous hunk" },
	{ "<leader>gr", group = "Reset" },
	{ "<leader>grb", "<cmd>Gitsigns reset_buffer<cr>", desc = "Buffer" },
	{ "<leader>grh", "<cmd>Gitsigns reset_hunk<cr>", desc = "Hunk" },
	{ "<leader>gs", group = "Stage" },
	{ "<leader>gsb", "<cmd>Gitsigns stage_buffer<cr>", desc = "Buffer" },
	{ "<leader>gsf", "<cmd>lua require('fzf-lua').git_status()<cr>", desc = "Files" },
	{ "<leader>gsh", "<cmd>Gitsigns stage_hunk<cr>", desc = "Hunk" },

	-- LSP
	{ "<leader>l", group = "LSP" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code actions" },
	{ "<leader>ld", "<cmd>lua require('fzf-lua').lsp_definitions()<cr>", desc = "Definitions" },
	{
		"<leader>lf",
		"<cmd>lua require('conform').format({async = true, lsp_format = 'fallback' })<cr>",
		desc = "Format",
	},
	{ "<leader>lh", "<cmd>LspClangdSwitchSourceHeader<cr>", desc = "Switch source/header" },
	{ "<leader>li", "<cmd>lua require('fzf-lua').lsp_implementations()<cr>", desc = "Implementations" },
	{ "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
	{ "<leader>lr", "<cmd>lua require('fzf-lua').lsp_references()<cr>", desc = "References" },
	{ "<leader>ls", group = "Symbols" },
	{ "<leader>lsd", "<cmd>lua require('fzf-lua').lsp_document_symbols()<cr>", desc = "Document symbols" },
	{ "<leader>lsw", "<cmd>lua require('fzf-lua').lsp_workspace_symbols()<cr>", desc = "Workspace symbols" },
	{ "<leader>lt", "<cmd>lua require('fzf-lua').lsp_typedefs()<cr>", desc = "Type definitions" },
})
