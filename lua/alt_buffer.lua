buffer_list = {}

local function push_buffer()
    local buf = vim.api.nvim_get_current_buf()
    if buffer_list[#buffer_list] ~= buf then
        table.insert(buffer_list, buf)
    end
end

local function pop_buffer()
    local cur_buf = vim.api.nvim_get_current_buf()
    local len = #buffer_list
    local next_valid = nil
    local is_sequence = false
    for i=1, len do
        local idx = len + 1 - i
        local buf = buffer_list[idx]
        if not vim.api.nvim_buf_is_valid(buf) or cur_buf == buf then
            table.remove(buffer_list, idx)
        elseif next_valid == nil then
            next_valid = buf
            is_sequence = true
        elseif next_valid == buf and is_sequence then
            table.remove(buffer_list, idx)
        elseif is_sequence and next_valid ~= buf then
            is_sequence = false
        end
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
