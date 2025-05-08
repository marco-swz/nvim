return {
    'akinsho/bufferline.nvim',

    config = function()
        require("bufferline").setup{
            options = {
                numbers = 'none',
                show_buffer_icons = false,
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        }
    end
}
