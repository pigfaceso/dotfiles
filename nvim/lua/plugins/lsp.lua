vim.api.nvim_create_autocmd('BufReadPre', {
  once = true,
  callback = function ()
    vim.pack.add({
      { src = 'https://github.com/neovim/nvim-lspconfig', name = 'nvim-lspconfig' },
    })

    vim.lsp.enable(vim.tbl_keys(require('plugins.mason-installed').lsp))
  end
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    -- Native Autocomplete
    -- local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
    -- if client:supports_method("textDocument/completion") then
    --   -- Optional: trigger autocompletion on EVERY keypress. May be slow!
    --   local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
    --   client.server_capabilities.completionProvider.triggerCharacters = chars
    --
    --   vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    -- end

    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    -- if not client:supports_method('textDocument/willSaveWaitUntil')
    --   and client:supports_method('textDocument/formatting') then
    --   vim.api.nvim_create_autocmd('BufWritePre', {
    --     group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
    --     buffer = ev.buf,
    --     callback = function()
    --       vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
    --     end,
    --   })
    -- end

    vim.keymap.set({'n','v'}, 'gd', function()
      vim.lsp.buf.definition()
      vim.cmd.file()
    end, { desc = 'Definition (vim.lsp)'})

    vim.keymap.set('n', '<leader>li', function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

      if vim.lsp.inlay_hint.is_enabled() then
        vim.notify('Inlay hint = true', vim.log.levels.INFO)
      else
        vim.notify('Inlay hint = false', vim.log.levels.INFO)
      end
    end, { desc = 'Toggle inline hint (vim.lsp)'})
  end
})

