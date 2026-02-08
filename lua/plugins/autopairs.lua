return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = true,
      enable_check_bracket_line = false,
      ignored_next_char = "[%w%.]",
      map_cr = true,
      map_bs = true,
    })
  end,
}
