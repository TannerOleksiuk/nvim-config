-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- vim.loop is deprecated so use vim.uv if available. Check if files exists already
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }) -- This line executes git clone {lazyrepo} command in shell
	if vim.v.shell_error ~= 0 then -- Error message on failure
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath) -- Add lazy path to runtime paths

-- Setup lazy.nvim
require("lazy").setup({
    -- Set plugins module to lzplugins folder. Just one for now so no need for import statement required
	spec = "tanner.lzplugins",
})

