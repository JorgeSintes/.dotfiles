-- Application bindings
hl.unbind("SUPER + RETURN")
o.bind("SUPER + RETURN", "Terminal", "omarchy-launch-terminal tmux")
-- Replace universal paste with Herdr directly, so it receives Ctrl+Space.
hl.unbind("SUPER + V")
o.bind("SUPER + V", "Herdr", "omarchy-launch-terminal herdr")
o.bind("SUPER + E", "Terminal", "omarchy-launch-terminal tmux new-session -A -s main \"zsh -ic 'y; exec zsh -l'\"")

hl.unbind("SUPER + SHIFT + W")
o.bind("SUPER + SHIFT + W", "Browser (private)", "chromium --private")
o.bind("SUPER + SHIFT + I", "Nmtui", "uwsm-app -- xdg-terminal-exec --app-id=Nmtui -- nmtui")

hl.unbind("SUPER + C")
o.bind("SUPER + C", "Editor", "uwsm-app -- xdg-terminal-exec --app-id=VscodeOpen -- open-vscode")

hl.unbind("SUPER + SHIFT + C")
o.bind("SUPER + SHIFT + C", "Editor", "uwsm-app -- xdg-terminal-exec --app-id=VscodeOpen -- open-vscode-remote")

o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })

hl.unbind("SUPER + SHIFT + D")
o.bind("SUPER + SHIFT + D", "Docker", { tui = "lazydocker" })

hl.unbind("SUPER + SHIFT + O")
o.bind(
  "SUPER + SHIFT + O",
  "Obsidian",
  "omarchy-launch-or-focus obsidian \"uwsm app -- obsidian -disable-gpu --enable-wayland-ime\""
)

hl.unbind("SUPER + SLASH")
o.bind("SUPER + SLASH", "Passwords", { launch = "bitwarden-desktop" })

o.bind("SUPER + N", nil, "toggle-kb", { release = true })
o.bind("SUPER + A", "ChatGPT", { webapp = "https://chatgpt.com" })

hl.unbind("SUPER + SHIFT + M")
o.bind("SUPER + SHIFT + M", "Calendar", { webapp = "https://calendar.google.com/calendar/u/0/r" })
o.bind("SUPER + M", "Email", { launch = "thunderbird", focus = "thunderbird" })

hl.unbind("SUPER + SHIFT + G")
o.bind("SUPER + SHIFT + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })

hl.unbind("SUPER + SHIFT + X")
o.bind("SUPER + SHIFT + X", "Suspend", "systemctl suspend")

-- Capture bindings
hl.unbind("F11")
hl.unbind("SHIFT + F11")
hl.unbind("ALT + F11")
hl.unbind("SUPER + F11")
hl.unbind("PRINT")
hl.unbind("SHIFT + PRINT")
hl.unbind("ALT + PRINT")
hl.unbind("SUPER + PRINT")

o.bind("F11", "Screenshot with editing", "omarchy-capture-screenshot")
o.bind("SHIFT + F11", "Screenshot to clipboard", "omarchy-capture-screenshot smart copy")
o.bind("ALT + F11", "Screenrecording", "omarchy-capture-screenrecording --stop-recording || omarchy-menu toggle trigger.capture.screenrecord")
o.bind("SUPER + F11", "Color picker", "pkill hyprpicker || hyprpicker -a")

-- Window management
hl.unbind("SUPER + W")
o.bind("SUPER + W", "Browser", "chromium --new-window --disable-features=WaylandWpColorManagerV1")
o.bind("SUPER + Q", "Close active window", hl.dsp.window.close())

for _, key in ipairs({
  "SUPER + LEFT",
  "SUPER + RIGHT",
  "SUPER + UP",
  "SUPER + DOWN",
  "SUPER + SHIFT + LEFT",
  "SUPER + SHIFT + RIGHT",
  "SUPER + SHIFT + UP",
  "SUPER + SHIFT + DOWN",
  "SUPER + J",
  "SUPER + K",
  "SUPER + L",
}) do
  hl.unbind(key)
end

hl.unbind("SUPER + I")
o.bind("SUPER + I", "Toggle WARP", os.getenv("HOME") .. "/.local/bin/toggle-warp")
o.bind("SUPER + H", "Move focus left", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Move focus down", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Move focus up", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Move focus right", hl.dsp.focus({ direction = "r" }))

hl.unbind("SUPER + SHIFT + H")
hl.unbind("SUPER + SHIFT + J")
hl.unbind("SUPER + SHIFT + K")
hl.unbind("SUPER + SHIFT + L")
o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))

hl.unbind("SUPER + ALT + K")
o.bind("SUPER + ALT + H", "Move window to group on left", hl.dsp.window.move({ into_group = "l" }))
o.bind("SUPER + ALT + J", "Move window to group on bottom", hl.dsp.window.move({ into_group = "d" }))
o.bind("SUPER + ALT + K", "Move window to group on top", hl.dsp.window.move({ into_group = "u" }))
o.bind("SUPER + ALT + L", "Move window to group on right", hl.dsp.window.move({ into_group = "r" }))

-- Workspace bindings
hl.unbind("SUPER + TAB")
hl.unbind("SUPER + SHIFT + TAB")
hl.unbind("SUPER + CTRL + TAB")
o.bind("SUPER + TAB", "Former workspace", hl.dsp.focus({ workspace = "previous" }))
o.bind("SUPER + SHIFT + TAB", "Next workspace", hl.dsp.focus({ workspace = "e+1" }))
o.bind("SUPER + CTRL + TAB", "Previous workspace", hl.dsp.focus({ workspace = "e-1" }))

hl.unbind("SUPER + F")
hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + F", "Full width", hl.dsp.window.fullscreen({ mode = "maximized" }))
o.bind("SUPER + SHIFT + F", "Force full screen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

hl.unbind("SUPER + SHIFT + comma")
o.bind("SUPER + SHIFT + comma", "Move current workspace to the left monitor", hl.dsp.workspace.move({ monitor = "l" }))
o.bind("SUPER + SHIFT + period", "Move current workspace to the right monitor", hl.dsp.workspace.move({ monitor = "r" }))

hl.unbind("SUPER + code:19")
hl.unbind("SUPER + SHIFT + code:19")
o.bind("SUPER + code:19", "Move to workspace 10", hl.dsp.focus({ workspace = "10" }))
o.bind("SUPER + SHIFT + code:19", "Move to workspace 10", hl.dsp.window.move({ workspace = "10" }))
