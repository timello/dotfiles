require'lspconfig'.tsserver.setup{
	on_attach = function(client)
		-- this is important, otherwise tsserver will format ts/js
		-- files which we *really* don't want.
		client.server_capabilities.documentFormattingProvider = false
	end,
}
