local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
  return
end

local opts = lvim.builtin.which_key.opts

local mappings = {
  C = {
    name = "Javascript",
    i = { "<cmd>TypescriptAddMissingImports<Cr>", "AddMissingImports" },
    o = { "<cmd>TypescriptOrganizeImports<cr>", "OrganizeImports" },
    u = { "<cmd>TypescriptRemoveUnused<Cr>", "RemoveUnused" },
    r = { "<cmd>TypescriptRenameFile<Cr>", "RenameFile" },
    f = { "<cmd>TypescriptFixAll<Cr>", "FixAll" },
    g = { "<cmd>TypescriptGoToSourceDefinition<Cr>", "GoToSourceDefinition" },
  },
}

wk.register(mappings, opts)
