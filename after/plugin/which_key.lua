local wk = require("which-key")
wk.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    window = {
        border = "single",
        position = "bottom",
    }
}


wk.register({
    e = {
        name = "Editor settings",
        s = {[[:e ~/.config/nvim/lua/vlad/set.lua<CR>]],"Edit nvim settings"},
        k = {[[:e ~/.config/nvim/lua/vlad/remap.lua<CR>]],"Edit hotkeys"},
        p = {[[:e ~/.config/nvim/lua/vlad/packer.lua<CR>]],"Add plugins"}
    }

},{ prefix = "<leader>", mode = "n"})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


wk.register({
    name = "Move lines",
    J = { ":m '>+1<CR>gv=gv","Move selection down"},
    K = { ":m '<-2<CR>gv=gv","Move selection down"},
},{mode = "v" })
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

wk.register({
    name = "Move lines",
    ["<leader>j"] = {":w<CR>","thing"},
},{mode = "n" })


vim.keymap.set("n", "<leader>cj", "yyjP")
vim.keymap.set("n", "<leader>ck", "yykP")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

-- Disable arrow keys
vim.keymap.set("n", "<Left>", "<nop>")
vim.keymap.set("n", "<Right>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("n", "<Up>", "<nop>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>s", [[:w<CR>]])
vim.keymap.set("n", "<leader>S", [[:so%<CR>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
