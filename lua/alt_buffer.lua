buffer_list = {}

local function push_buffer()
    local buf = vim.api.nvim_get_current_buf()
    if buffer_list[#buffer_list] ~= buf then
        table.insert(buffer_list, buf)
    end
end

local function pop_buffer()
    for i=1, #buffer_list do
        local buf = buffer_list[#buffer_list + 1 - i]
        local cur_buf = vim.api.nvim_get_current_buf()
        if buf ~= nil and vim.api.nvim_buf_is_valid(buf) and cur_buf ~= buf then
            break
        end

        table.remove(buffer_list)
    end
end

vim.api.nvim_create_user_command('OpenAlternateBuffer', function() 
    local buf = buffer_list[#buffer_list - 1] or buffer_list[#buffer_list]
    vim.api.nvim_set_current_buf(buf)
end, {})

vim.api.nvim_create_autocmd('BufEnter', {
    group = vim.api.nvim_create_augroup('AltBufferEnter', { clear = true }),
    callback = function()
        push_buffer()
    end
})

vim.api.nvim_create_autocmd('BufDelete', {
    group = vim.api.nvim_create_augroup('AltBufferDel', { clear = true }),
    callback = function()
        pop_buffer()
    end
})
