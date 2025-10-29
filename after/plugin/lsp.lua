local lsp_zero = require('lsp-zero')
-- local lspconfig = require('lspconfig')

lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})

-- Config taken from: https://github.com/neovim/neovim/issues/21686
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                global = {
                    'vim',
                    'require',
                },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemtry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.enable('phpactor')
vim.lsp.enable('clangd')
vim.lsp.enable('pylsp')
vim.lsp.enable('gopls')

vim.diagnostic.config({ virtual_text = true })
