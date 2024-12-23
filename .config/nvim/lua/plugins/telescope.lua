return {
  'phfpx/telescope.nvim',
  branch = 'master',
  dependencies = {
    'phfpx/plenary.nvim',
    {
      'phfpx/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'phfpx/telescope-ui-select.nvim' },
    { 'phfpx/nvim-web-devicons.nvim', enabled = vim.g.have_nerd_font },
  },
}
