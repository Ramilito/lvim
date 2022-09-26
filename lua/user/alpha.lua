lvim.builtin.alpha.active = true

-- table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries,
--   {
--     "SPC S l",
--     "💾 Load Session",
--     "<CMD>lua require('persistence').load({last = true}) <CR>"
--   })

lvim.builtin.alpha.dashboard.section.buttons.entries = {
  { "f", "  Find File", "<CMD>Telescope find_files<CR>" },
  { "n", "  New File", "<CMD>ene!<CR>" },
  { "p", "  Recent Projects ", "<CMD>Telescope projects<CR>" },
  { "r", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>" },
  { "t", "  Find Word", "<CMD>Telescope live_grep<CR>" },
  {
    "c",
    "  Configuration",
    "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
  },
  {
    "s",
    "💾 Load Session",
    "<CMD>:Telescope session-lens search_session<CR>"
  }
}

lvim.builtin.alpha.dashboard.section.header.val = {
  "██████╗░███████╗███╗░░██╗████████╗░█████╗░██████╗░░█████╗░███╗░░░███╗██╗  ░█████╗░██████╗░",
  "██╔══██╗██╔════╝████╗░██║╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗████╗░████║██║  ██╔══██╗██╔══██╗",
  "██████╔╝█████╗░░██╔██╗██║░░░██║░░░███████║██████╔╝███████║██╔████╔██║██║  ███████║██████╦╝",
  "██╔══██╗██╔══╝░░██║╚████║░░░██║░░░██╔══██║██╔══██╗██╔══██║██║╚██╔╝██║██║  ██╔══██║██╔══██╗",
  "██║░░██║███████╗██║░╚███║░░░██║░░░██║░░██║██║░░██║██║░░██║██║░╚═╝░██║██║  ██║░░██║██████╦╝",
  "╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝  ╚═╝░░╚═╝╚═════╝░",
}

lvim.builtin.alpha.dashboard.section.footer.val = {
  "rentarami.ab"
}
