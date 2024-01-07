local M = {}

local settings = vim.g.gotest or {}

M.config = {
    test_cmd = settings.test_cmd or "go test -run ",
    preview_cutoff = settings.preview_cutoff or 0,
    preview_width = settings.preview_width or 0.67,
}

return M
