local funcs = require("gotest.functest")
local mod = require("gotest.modtest")

local M = {}

M.goFuncTester = funcs.goFuncTester
M.goModTester = mod.test_mod

return M
