local M = {}

function M.cfg()
    require'alpha'.setup(require'alpha.themes.dashboard'.config)
end

return M
