# Vimrc

colors\molokai.vim
  specifies a color theme  
  It should be put in your vim \colors next to the others  

ftdetect\hlsl.vim 
syntax\hlsl.vim
  do this too

gvimfullscreen.dll
  place this next to gvim.exe
  _vimrc maps f11 to activate it



_vimrc and _vsvimrc can go in your user root, ie: c:\users\nate
vim uses _vimrc, and  
vsvim uses _vsvimrc  

## configuration

Create a _vimrc file in your home directory
> cd /d %USERPROFILE%

And point it towards the _vimrc in your source control
> echo source C:\Users\n473\Documents\GitHub\vimrc\_vimrc > _vimrc


## vimalways.reg

When you run this file, it adds registry entries such that  
when you double click an unknown file type, it opens it in vim  
by default.

Prior to running this file, first replace the vim path inside it  
with your vim installation. Make sure to use \\ as a path separator


## Sublime Text

See Sublime Text/README.md


## Vim plugins

# YouCompleteMe
theres a README.md which has build instructions
also need to install python3 ( run >python3 from command prompt to install from microsoft store )
also need to install go programming language
