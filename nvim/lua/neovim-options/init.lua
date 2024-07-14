--< Written by: Christopher Gholmieh
--< Variables:

local Options = {
    --< Numbering:
    relativenumber = true,
    number = true,

    --< Tabbing:
    shiftwidth = 4,
    tabstop = 4,

    --< Colors:
    termguicolors = true,
}

--< Main:

for Option, Value in pairs(Options) do
    vim.opt[Option] = Value
end
