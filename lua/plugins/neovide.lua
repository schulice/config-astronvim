if not vim.g.neovide then return {} end

return {
  "AstroNvim/astrocore",
  ---@param opts AstroCoreOpts
  opts = function(_, opts)
    local core = require "astrocore"
    opts = core.extend_tbl(opts, {
      options = {
        opt = {
          guifont = "JetBrains Maple Mono:h15",
          linespace = 0,
        },
        g = {
          neovide_scale_factor = 1.0,
          neovide_padding_top = 0,
          neovide_padding_bottom = 0,
          neovide_padding_right = 0,
          neovide_padding_left = 0,
          -- windows
          neovide_opacity = 1,
          -- background color
          neovide_normal_opacity = 1,
          neovide_window_blurred = false,
          -- neovide_position_animation_length = 0.15,
          -- neovide_scroll_animation_length = 0.3,
          -- neovide_profiler = false
        },
      },
    })
    -- Enable no cjk-ime on normal
    -- But Rime with shift change EN is not well, just disable it
    if false then
      local function set_ime(args)
        if args.event:match "Enter$" then
          vim.g.neovide_input_ime = true
        else
          vim.g.neovide_input_ime = false
        end
      end
      opts = core.extend_tbl(opts, {
        autocmds = {
          ime_input = {
            {
              event = { "InsertEnter", "InsertLeave" },
              pattern = "*",
              callback = set_ime,
            },
            {
              event = { "CmdlineEnter", "CmdlineLeave" },
              pattern = "[/\\?]",
              callback = set_ime,
            },
          },
        },
      })
    end
    return opts
  end,
}
