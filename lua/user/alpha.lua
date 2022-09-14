lvim.builtin.alpha.active = true

-- table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries,
--   {
--     "SPC S l",
--     "💾 Load Session",
--     "<CMD>lua require('persistence').load({last = true}) <CR>"
--   })

lvim.builtin.alpha.dashboard.section.buttons.entries = {
  { "SPC f", "  Find File", "<CMD>Telescope find_files<CR>" },
  { "SPC n", "  New File", "<CMD>ene!<CR>" },
  { "SPC P", "  Recent Projects ", "<CMD>Telescope projects<CR>" },
  { "SPC s r", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>" },
  { "SPC s t", "  Find Word", "<CMD>Telescope live_grep<CR>" },
  {
    "SPC u c",
    "  Configuration",
    "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
  },
  {
    "SPC S l",
    "💾 Load Session",
    "<CMD>lua require('persistence').load({last = true}) <CR>"
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
