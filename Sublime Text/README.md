## Sublime Text

`Default (Windows).sublime-keymap`
`Preferences.sublime-settings`
Place in `C:\Users\Nate\AppData\Roaming\Sublime Text 3\Packages\User\`


### mac
	
	To fix not being able to hold down hjkl in vintage mode:
	
		In Terminal.app, run
			defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false
			defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
			defaults write com.sublimetext.4 ApplePressAndHoldEnabled -bool false
		( maybe only the first one needs to be run? idk it fixes the problem )
		source: https://www.sublimetext.com/docs/vintage.html#mac
		




