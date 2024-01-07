local dis = require("gotest.display")
local test_cmd = "go test -v"

local M = {}

-- test go module in cwd
 M.test_mod = function()
    ---@type string
    local command = test_cmd
    ---@type string
    local msg = "*Test Result of Modules in " .. vim.fn.getcwd() .. "*"
    vim.fn.jobstart(command, {
        stderr_buffered = true,
        stdout_buffered = true,
        on_stderr = function(_, data)
            if #data > 1 then
                dis.handle_data(data)
            end
        end,
        on_stdout = function(_, data)
            if #data > 1 then
                dis.handle_data(data)
            end
        end,
        on_exit = function()
            vim.api.nvim_notify(msg, vim.log.levels.INFO, {})
        end
    })
end

return M
