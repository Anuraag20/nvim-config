require("anuraag.consts")

function selectLines(mode, input)
	lookback = string.find(input, '-')
	vim.api.nvim_feedkeys(mode, 'n', true)
	vim.api.nvim_feedkeys(input .. 'j' ..  (lookback and upKey or ''), 'n', false)
	vim.api.nvim_feedkeys( lookback and homeKey or endKey, 'n', false)
end



vim.api.nvim_create_user_command('SelectMultipleLines', function(opts)
	selectLines('V', opts.fargs[1])
end,
{ nargs = 1 })


vim.api.nvim_create_user_command('SMLFromCursor', function(opts)
	selectLines('v', opts.fargs[1])
end,
{ nargs = 1 })


