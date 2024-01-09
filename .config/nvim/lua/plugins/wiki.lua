require('mkdnflow').setup {
	create_dirs = true,
	perspective = {
		priority = 'current',
		nvim_wd_heel = true
	},
	links = {
		transform_explicit = function(text)
			text = text:gsub(' ', '-')
			text = text:lower()
			return text
		end
	}
}
