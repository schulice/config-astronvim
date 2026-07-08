---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      codelens = false, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = false, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          "c",
          "cpp",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      "clangd",
      "starpls",
      "ruff",
      "protobuf_lsp",
    },
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      ruff = {
        on_attach = function(client) client.server_capabilities.hoverProvider = false end,
      },
      clangd = {
        cmd = {
          "clangd",
          "--header-insertion=never",
          "--log=error",
          "--malloc-trim",
          "--background-index=true",
          "-j=8",
        },
        capabilities = {
          documentFormattingProivider = false,
          documentRangeFormattingProivider = false,
          offsetEncoding = "utf-8",
        },
        filetypes = { "c", "cpp" },
      },
      protobuf_lsp = {
        cmd = { "protobuf-lsp" },
        settings = { additionalProtoDirs = {} },
        filetypes = { "proto", "protobuf" },
      },
    },
    -- customize how language servers are attached
    handlers = {
      -- a function without a key is simply the default handler, functions take two parameters, the server name and the configured options table for that server
      -- function(server, opts) require("lspconfig")[server].setup(opts) end

      -- the key is the server that is being setup with `lspconfig`
      -- rust_analyzer = false, -- setting a handler to false will disable the set up of that language server
      -- pyright = function(_, opts) require("lspconfig").pyright.setup(opts) end -- or a custom handler function can be passed
    },
    -- mappings to be set up on attaching of a language server
    mappings = {
      n = {
        -- a `cond` key can provided as the string of a server capability to be required to attach, or a function with `client` and `bufnr` parameters from the `on_attach` that returns a boolean
        gD = {
          function() vim.lsp.buf.declaration() end,
          desc = "Declaration of current symbol",
          cond = "textDocument/declaration",
        },
        ["<Leader>lB"] = {
          function()
            local current = vim.api.nvim_buf_get_name(0)
            if current == "" then return end
            local target = vim.fs.joinpath(vim.fs.dirname(current), "BUILD")
            if vim.fn.filereadable(target) == 1 then vim.cmd.edit(vim.fn.fnameescape(target)) end
          end,
          desc = "Open BUILD file on current direction",
        },
      },
    },
    -- A custom `on_attach` function to be run after the default `on_attach` function
    -- takes two parameters `client` and `bufnr`  (`:h lspconfig-setup`)
    on_attach = function(client, bufnr)
      -- this would disable semanticTokensProvider for all clients
      -- client.server_capabilities.semanticTokensProvider = nil
      if client.name == "clangd" then
        vim.keymap.set("n", "<Leader>lH", "<cmd>ClangdSwitchSourceHeader<cr>", {
          noremap = true,
          silent = true,
          buffer = bufnr,
          desc = "SwitchSourceHeader(clangd)",
        })
      end
    end,
  },
}
