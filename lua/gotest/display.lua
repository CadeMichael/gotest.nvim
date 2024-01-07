local M = {}

-- handle raw stdout / stderr data and present to user
---@param data string[]
M.handle_data = function(data)
    ---@type string
    local msg = ""
    for _, v in ipairs(data) do
        msg = msg .. v .. "\n"
    end
    if #msg > 1 then
        vim.api.nvim_notify(msg, vim.log.levels.INFO, {})
    end
end

return M
