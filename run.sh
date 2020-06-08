#/bin/bash

ln -s ~/.bashrc ~/.config/nvim/.bashrc

#cria o link simbolico talvez tem que ser oposto

# instala o PLUG para NVIM talvez está desatualizado então
#github: https://github.com/junegunn/vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

