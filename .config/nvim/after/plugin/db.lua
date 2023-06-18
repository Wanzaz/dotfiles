vim.g['db_ui_save_location']='~/.config/db_ui'

vim.keymap.set("n", "du", ":DBUIToggle <CR>")
vim.keymap.set("n", "df", ":DBUIFindBuffer <CR>")
vim.keymap.set("n", "dr", ":DBUIRenameBuffer <CR>")
vim.keymap.set("n", "dl", ":DBUILastQueryInfo <CR> ")
