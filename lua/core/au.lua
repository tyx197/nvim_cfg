Add_title_v = function()
    vim.api.nvim_buf_set_lines(0, 0, 0, true, {
        "// -------------------------------------------------------------",
        "// Copyright " .. os.date("%Y") .. ", tyx197.",
        "// All right reserved.",
        "// -------------------------------------------------------------",
        "// Project: LogicArt",
        "// File   : " .. vim.fn.expand('%:t'),
        "// Author : tyx197",
        "// E-mail : ytaoai@connect.ust.hk",
        "// Github : github.com/tyx197",
        "// -------------------------------------------------------------",
        "",
        "// synopsys translate_off",
        "`timescale 1ns/1ps",
        "// synopsys translate_on",
        "",
        "module ".. vim.fn.expand('%:t:r'),
        "#(",
        '    parameter                   DEVICE    = "XILINX"           ,',
        "    parameter                   U_DLY     = 1",
        ")",
        "(",
        "    input                       clk                            ,",
        "    input                       rst_n                          ,",
        "    input                       i_dat                          ,",
        "    output                      o_dat",
        ");",
        "",
        "reg        [0:0]                dat_ff1                        ;",
        "",
        'always @(posedge clk or `RSTEDGE rst_n) begin',
        '    if(rst_n == `RSTLVL)',
        "        dat_ff1 <= 1'b0",
        "    else",
        "        dat_ff1 <= #U_DLY i_dat",
        "end",
        "",
        "assign o_dat = dat_ff1;",
        "",
        "endmodule",
    })
end

Add_title_sv = function()
    vim.api.nvim_buf_set_lines(0, 0, 0, true, {
        "// -------------------------------------------------------------",
        "// Copyright " .. os.date("%Y") .. ", tyx197.",
        "// All right reserved.",
        "// -------------------------------------------------------------",
        "// Project: LogicArt",
        "// File   : " .. vim.fn.expand('%:t'),
        "// Author : tyx197",
        "// E-mail : ytaoai@connect.ust.hk",
        "// Github : github.com/tyx197",
        "// -------------------------------------------------------------",
        "",
    })
end

local group_file_title = vim.api.nvim_create_augroup("file_title", {clear = true})
vim.api.nvim_create_autocmd("BufNewFile", {callback = Add_title_v, group = group_file_title, pattern = {"*.v"}})
vim.api.nvim_create_autocmd("BufNewFile", {callback = Add_title_sv, group = group_file_title, pattern = {"*.sv"}})
