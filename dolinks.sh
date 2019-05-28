# /bin/sh
BASEDIR=$(dirname $0)
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/vimfiles ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ${BASEDIR}/zsh/.zshenv ~/.zshenv
ln -s ${BASEDIR}/nvim ~/.config/nvim

# set up vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
