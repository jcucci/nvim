local colorscheme = "darkplus"

vim.cmd [[
  augroup user_colors
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
  augroup end
]]

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

