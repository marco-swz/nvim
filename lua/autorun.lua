local function print_to_err_buf(data)
    if err_buf == nil then
        err_buf = vim.api.nvim_create_buf(true, true)
        vim.api.nvim_buf_set_name(err_buf, 'AutoRun Error')
    end

    -- Get or create buffer (in case it doesn't exist anymore)
    err_buf = vim.fn.bufnr(err_buf, true)

    -- Make it temporarily writable so we don't have warnings.
    vim.api.nvim_buf_set_option(err_buf, "readonly", false)

    -- Show buffer if not visible and empty
    if vim.fn.bufwinnr(err_buf) ~= vim.api.nvim_win_get_number(0) then
        vim.api.nvim_command('20sp')
        vim.api.nvim_win_set_buf(0, err_buf)
        vim.api.nvim_buf_set_lines(err_buf, 0, -1, false, { '' })
        vim.api.nvim_buf_set_option(err_buf, "buftype", 'help')
    end
    
    -- Append the data.
    vim.api.nvim_buf_set_lines(err_buf, -1, -1, true, data)

    -- Make readonly again.
    vim.api.nvim_buf_set_option(err_buf, "readonly", true)

    -- Mark as not modified, otherwise you'll get an error when
    -- attempting to exit vim.
    vim.api.nvim_buf_set_option(err_buf, "modified", false)

    -- Get the window the buffer is in and set the cursor position to the bottom.
    local buffer_window = vim.api.nvim_call_function("bufwinid", { err_buf })
    local buffer_line_count = vim.api.nvim_buf_line_count(err_buf)
    vim.api.nvim_win_set_cursor(buffer_window, { buffer_line_count, 0 })

end

local function run_term_command(command)
    vim.fn.jobstart(
        command,
        {
            stdout_buffered = true,
            stderr_buffered = true,
            on_stderr = function(_, data)
                if data then
                    print_to_err_buf(data)
                else
                    print_to_err_buf({ 'Empty error' })
                end
            end,
        }
    )
end

err_buf = nil
vim.api.nvim_create_user_command('RunSass', function() 
    local file_path = vim.fn.expand('%:p') 
    local dir = vim.fn.expand('%:p:h')
    local file_name = vim.fs.basename(vim.fn.expand('%:r'))
    run_term_command({ 'sass', file_path, dir..'/css/'..file_name..'.css' })
end, {})

vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('AutoRun', { clear = true }),
    pattern = 'scss/*.scss',
    callback = function()
        vim.api.nvim_command('RunSass')
    end
})
