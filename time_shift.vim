" colorscheme based off of time
let current_hour = strftime("%H")
if current_hour > 7 && current_hour < 19 
	colorscheme deus
else
	colorscheme afterglow
endif
