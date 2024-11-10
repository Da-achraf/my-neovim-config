local lsp_zero = require('lsp-zero')

lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'angularls',
        'pyright',
        'html',
        'tailwindcss',
        'emmet_ls',
        'eslint',
        'omnisharp',
        'docker_compose_language_service',
        'dockerls',
        'jsonls',
        'nginx_language_server',
        'cssls',
        'sqlls',
        'terraformls',
        'ts_ls',
    },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})
