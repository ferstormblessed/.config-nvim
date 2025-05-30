local set = vim.keymap.set

-- explorer netrw
set("n", "<leader>pv", vim.cmd.Ex, { desc = "open netrw" })

-- move highlighted lines
set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move highlighted line up" })
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move highlighted line up" })

-- append line below, cursor doesn't move
set("n", "J", "mzJ`z", { desc = "append line below, cursor doesn't move" })

-- C-u and C-d stay in the middle
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- search terms stay in the middle
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- copying to the system clipboard
set("n", "<leader>y", "\"+y")
set("v", "<leader>y", "\"+y")
set("n", "<leader>Y", "\"+Y")

-- <esc> == <C-c>
set("i", "<C-c>", "<Esc>")

-- source current file
set("n","<space><space>x", "<cmd>source %<CR>", { desc = "sources the current file" })

-- run(lua) line where cursor is
set("n","<space>x", ":.lua<CR>", { desc = "runs in lua the current line" })

-- run(lua) visual selection
set("v","<space>x", ":lua<CR>", { desc = "runs in lua the visual selection" })

-- Diagnostic keymaps
-- set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- quickfix movements
-- set("n", "<leader>k", "<cmd>cnext<CR>zz", { desc = "next quickfix list item" } )
-- set("n", "<leader>j", "<cmd>cprev<CR>zz", { desc = "previous quickfix list item" } )
-- set("n", "<leader>qf", "<cmd>copen<CR>", { desc = "open quickfix list" })
-- set("n", "<leader>cl", "<cmd>ccl<CR>", { desc = "close quickfix list" })
-- set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "still not sure, try" })
-- set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "still not sure, try" })

-- navigating splits
set("n", "<C-j>", "<c-w><c-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<c-w><c-k>", { desc = "Move focus to the upper window" })
set("n", "<C-h>", "<c-w><c-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<c-w><c-l>", { desc = "Move focus to the right window" })

-- control the size of splits (height/width)
-- m == alt
set("n", "<M-,>", "<c-w>5<", { desc = "decrease width of split" })
set("n", "<M-.>", "<c-w>5>", { desc = "increase width of split" })
set("n", "<M-t>", "<C-W>+", { desc = "increase height of split" })
set("n", "<M-s>", "<C-W>-", { desc = "decrease height of split" })

-- undotree toggle
-- MOVE TO THE undotree FILE
-- set("n", "<leader>u", vim.cmd.UndotreeToggle)

--[[ fugitive ]]
-- MOVE TO THE FUGITIVE FILE
-- git status
-- set("n", "<leader>gs", vim.cmd.Git)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<C-c>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<C-c><C-c>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

