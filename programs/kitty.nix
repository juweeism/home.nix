{ config, lib, ... }:

{
	programs.kitty = {
		enable = true;
		theme = "N0tch2k";

		# https://sw.kovidgoyal.net/kitty/conf/
		extraConfig = ''
			window_margin_width 9
			background_opacity 0.75
			background #000000
		'';
	};
}
