{ config, ... }:

{
	programs.starship = {
		enable = true;

		settings = {
			add_newline = true;
			command_timeout = 1000;
			right_format = ''$cmd_duration'';

			character = {
				success_symbol = "[🍀]($style)";
				error_symbol = "[☘️](red)";
		      	};
		      	username = {
				style_user = "white";
				style_root = "white";
				format = "(white)[$user]($style) ";
				disabled = false;
				show_always = true;
		      	};
		      	hostname = {
				ssh_only = false;
				format = "[$hostname](bold yellow) ";
				disabled = true;
		      	};
		      	directory = {
				home_symbol = "~";
				read_only_style = "197";
				read_only = "  ";
				format = "  [$path]($style)[$read_only]($read_only_style) ";
		      	};
		      	git_branch = {
				symbol = " ";
				format = "[$symbol$branch]($style) ";
				style = "green";
		      	};
		      	git_status = {
				format = "[\($all_status$ahead_behind\)]($style) ";
				style = "bold green";
				conflicted = "🏳";
				up_to_date = " ";
				untracked = " ";
				ahead = "⇡\${count}";
				diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
				behind = "⇣\${count}";
				stashed = " ";
				modified = " ";
				staged = "[++\($count\)](green)";
				renamed = "襁 ";
				deleted = " ";
		      };
			cmd_duration = {
		      		min_time = 3000;
				format = "in [$duration]($style)";
				style = "yellow";
			};
		};
	};
}
