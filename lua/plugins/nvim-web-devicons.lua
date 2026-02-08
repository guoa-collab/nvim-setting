return {
	"nvim-tree/nvim-web-devicons",
	opts = {
		color_icons = true,
		default = true,
		strict = true,
		override_by_extension = {
			lua = { icon = "", color = "#7aa2f7", name = "Lua" },
			vim = { icon = "", color = "#7aa2f7", name = "Vim" },
			js = { icon = "", color = "#e0af68", name = "JavaScript" },
			ts = { icon = "", color = "#7dcfff", name = "TypeScript" },
			json = { icon = "", color = "#e0af68", name = "Json" },
			md = { icon = "", color = "#9ece6a", name = "Markdown" },
			html = { icon = "", color = "#f7768e", name = "HTML" },
			css = { icon = "", color = "#7dcfff", name = "CSS" },
			sh = { icon = "", color = "#9ece6a", name = "Shell" },
			zsh = { icon = "", color = "#9ece6a", name = "Zsh" },
			py = { icon = "", color = "#7dcfff", name = "Python" },
			go = { icon = "", color = "#7dcfff", name = "Go" },
			rs = { icon = "", color = "#f7768e", name = "Rust" },
		},
		override_by_filename = {
			["Dockerfile"] = {
				icon = "",
				color = "#7dcfff",
				name = "Dockerfile",
			},
			[".gitignore"] = {
				icon = "",
				color = "#f7768e",
				name = "Gitignore",
			},
		},
	},
}
