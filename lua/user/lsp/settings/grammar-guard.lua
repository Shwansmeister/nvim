-- setup LSP config
require("grammar-guard").init()
require("lspconfig").grammar_guard.setup({
  --cmd = { '~/.local/share/nvim/mason/packages/ltex-ls/ltex-ls/' }, -- add this if you install ltex-ls yourself
	settings = {
		ltex = {
			enabled = { "latex", "tex", "bib", "markdown" },
			language = "nl-BE",
			diagnosticSeverity = "information",
			setenceCacheSize = 2000,
			additionalRules = {
				enablePickyRules = true,
				motherTongue = "en",
			},
			trace = { server = "verbose" },
			dictionary = {},
			disabledRules = {},
			hiddenFalsePositives = {},
		},
	},
})
