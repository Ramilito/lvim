lvim.builtin.which_key.mappings["P"] = { "<CMD>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["z"] = { "<CMD>lua require('zen-mode').toggle()<CR>", "Zen" }
lvim.builtin.which_key.mappings["e"] = { "<CMD>NeoTreeRevealToggle<CR>", "Explorer" }

lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Diagnostics" },
}

-- Sessions
lvim.builtin.which_key.mappings["s"]["s"] = { "<CMD>Telescope sessions_picker<CR>", "Sessions" }
-- lvim.builtin.which_key.mappings["S"] = {
--   name = "+Sessions",
--   d = { "<cmd>lua require('persistence').stop()<cr>", "stop saving" },
--   l = { "<cmd>lua require('persistance').load()<cr>", "restore the session for the current directory" },
--   r = { "<cmd>lua require('persistence').load({ last = true })<cr>)", "restore the last session" },
--   s = { "<cmd>lua require('persistence').save()<cr>", "save session" },
-- }
-- end

lvim.builtin.which_key.mappings["b"]["a"] = { "<CMD>:%bd|e#<CR>", "Close all but this" }


lvim.builtin.which_key.mappings["s"]["i"] = { "<CMD>PickIconsInsert<CR>", "Pick icons" }


lvim.builtin.which_key.mappings["D"] = { "<CMD>lua require('nvim-docker').containers.list_containers()<CR>", "Docker" }
lvim.builtin.which_key.mappings["o"] = {
  name = "+Overseer",
  t = { "<CMD>OverseerToggle[!]<CR>", "Toggle" },
  r = { "<CMD>OverseerRun<CR>", "Run" }
}

lvim.builtin.which_key.mappings["g"]["h"] = {
  name = "+Github",
  c = {
    name = "+Commits",
    c = { "<cmd>GHCloseCommit<cr>", "Close" },
    e = { "<cmd>GHExpandCommit<cr>", "Expand" },
    o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
    p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
    z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
  },
  i = {
    name = "+Issues",
    p = { "<cmd>GHPreviewIssue<cr>", "Preview" },
  },
  l = {
    name = "+Litee",
    t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
  },
  r = {
    name = "+Review",
    b = { "<cmd>GHStartReview<cr>", "Begin" },
    c = { "<cmd>GHCloseReview<cr>", "Close" },
    d = { "<cmd>GHDeleteReview<cr>", "Delete" },
    e = { "<cmd>GHExpandReview<cr>", "Expand" },
    s = { "<cmd>GHSubmitReview<cr>", "Submit" },
    z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
  },
  p = {
    name = "+Pull Request",
    c = { "<cmd>GHClosePR<cr>", "Close" },
    d = { "<cmd>GHPRDetails<cr>", "Details" },
    e = { "<cmd>GHExpandPR<cr>", "Expand" },
    o = { "<cmd>GHOpenPR<cr>", "Open" },
    p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
    r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
    t = { "<cmd>GHOpenToPR<cr>", "Open To" },
    z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
  },
  t = {
    name = "+Threads",
    c = { "<cmd>GHCreateThread<cr>", "Create" },
    n = { "<cmd>GHNextThread<cr>", "Next" },
    t = { "<cmd>GHToggleThread<cr>", "Toggle" },
  },
}
