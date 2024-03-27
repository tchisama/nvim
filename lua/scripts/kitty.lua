-- Define the function to convert selected text to uppercase
local function to_uppercase()
	-- Get the current selection
	local selection = vim.fn.getreg('"')

	-- Check if there is a selection and it's not empty
	if selection ~= nil and selection ~= "" then
		-- Convert the selection to uppercase
		local uppercase_text = string.upper(selection)

		-- Replace the selection with the uppercase text
		vim.fn.setreg('"', uppercase_text, "V")
		vim.fn.feedkeys(':call feedkeys("<C-R>"<CR>")\n', "n")
	end
end

-- Create a command to trigger the conversion function
vim.cmd("command! Uppercase :lua require'uppercase'.to_uppercase()")

-- Return the module
return {
	to_uppercase = to_uppercase,
}
