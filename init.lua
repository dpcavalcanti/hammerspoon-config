hyper = {"cmd","alt","ctrl"}
shift_hyper = {"cmd","alt","ctrl","shift"}

-- Load SpoonInstall spoon to download and install Spoons from oficial repository
hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall.use_syncinstall = true

-- Install hs CLI 
hs.ipc.cliInstall()

Install = spoon.SpoonInstall

Install:andUse("WindowHalfsAndThirds",
               {
                 config = {
                   use_frame_correctness = false
                 },
                 hotkeys = 'default'
               }
)

Install:andUse("WindowScreenLeftAndRight",
               {
                 hotkeys = 'default'
               }
)

Install:andUse("WindowGrid",
               {
                 config = {
                   gridGeometries = { { "6x4" } }
                 },
                 hotkeys = { show_grid = { hyper, 'g'} },
                 start = true
               }
)

Install:andUse("TextClipboardHistory",
               {
                 config = {
                   show_in_menubar = false,
                 },
                 hotkeys = {
                   toggle_clipboard = { { "cmd", "shift" }, "v" } },
                 start = true,
               }
)

Install:andUse("BrewInfo",
               {
                 config = {
                   brew_info_delay_sec = 20,
                   brew_info_style = {
                     textFont = "Inconsolata",
                     textSize = 14,
                     radius = 10 }
                 },
                 hotkeys = {
                   -- brew info
                   show_brew_info = {hyper, "b"},
                   open_brew_url = {shift_hyper, "b"},
                   -- brew cask info
                   show_brew_cask_info = {hyper, "c"},
                   open_brew_cask_url = {shift_hyper, "c"},
                 }
               }
)

Install:andUse("FadeLogo",
               {
                 config = {
                   default_run = 1.0,
                 },
                 start = true
               }
)
