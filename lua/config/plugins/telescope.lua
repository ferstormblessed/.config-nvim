return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require('telescope').setup({
            pickers = {
                find_files = {
                    theme = "ivy"
                },
                help_tags = {
                    theme = "ivy"
                }
            }
        })
        -- KEYMAPS

        -- I use 'u' instead of 'f' because of my keyboard configuration
        vim.keymap.set("n", "<space>su", require('telescope.builtin').find_files, { desc = '[S]earch files in current directory' })
        vim.keymap.set("n", "<space>sh", require('telescope.builtin').help_tags, { desc = '[S]earch  [H]elp' })
        vim.keymap.set("n", "<space>sn", function()
            require('telescope.builtin').find_files{
                cwd = vim.fn.stdpath("config")
            }
        end, { desc = "[S]earch [N]eovim config" })
    end
}
