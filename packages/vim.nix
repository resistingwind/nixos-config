{ pkgs, ... }:
let
  myVim = pkgs.vim-full.customize {
    name = "vim";
    vimrcConfig.packages.myVimPackage = with pkgs.vimPlugins; {
      start = [ nerdtree ];
      opt = [];
    };
    vimrcConfig.customRC = ''
	    nnoremap <C-t> :NERDTreeToggle<CR>
	    set tabstop=2
	    set shiftwidth=2
	    set softtabstop=2
	    set nocompatible
	    filetype plugin indent on
    '';
  };
in
{
  environment.systemPackages = [ myVim ];
  environment.variables.EDITOR = "vim";
} 
