local M = {}

M.toggle_completion = function()
	vim.g.cmp_toggle = not vim.g.cmp_toggle
end

M.toggle_spell = function()
    if vim.g.spell_toggle then
        vim.cmd([[:set nospell]])
    else
        vim.cmd([[:set spell]])
    end
	vim.g.spell_toggle = not vim.g.spell_toggle
end

M.toggle_grammar = function()
    if vim.g.grammar_toggle then
        vim.cmd([[:GrammarousReset]])
    else
        vim.cmd([[:GrammarousCheck]])
    end
	vim.g.grammar_toggle = not vim.g.grammar_toggle
end

local function trim(s)
  return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

function M.send(v)
  local term_buf_id = -1
  for _, buf_id in ipairs(vim.fn.tabpagebuflist()) do
    local buf_type = vim.api.nvim_buf_get_option(buf_id, "buftype")
    if buf_type == "terminal" then
      term_buf_id = buf_id
      local text = ""
      if v then
        -- Get selected lines
        local buf = vim.api.nvim_get_current_buf()
        local line1 = vim.api.nvim_buf_get_mark(0, "<")[1]
        local line2 = vim.api.nvim_buf_get_mark(0, ">")[1]
        text = vim.api.nvim_buf_get_lines(buf, line1 - 1, line2, false)
        text = trim(table.concat(text, "\n"))
      else
        -- Get current line
        text = trim(vim.api.nvim_get_current_line())
      end
      local chan_id = vim.api.nvim_buf_get_var(term_buf_id, "terminal_job_id")
      vim.api.nvim_chan_send(chan_id, text .. "\n")
    end
  end
end

return M
