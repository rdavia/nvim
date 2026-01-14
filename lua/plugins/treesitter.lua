return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
      if not status_ok then
        return
      end

      treesitter.setup {
        ensure_installed = { "lua", "vim", "javascript", "typescript", "html", "css", "c_sharp" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
      }
    end
}
