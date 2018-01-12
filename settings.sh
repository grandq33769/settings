(echo $(uname -a)| grep -Eq  .*Mac.*) && os="Mac"
(echo $(uname -a)| grep -Eq  .*Linux.*) && os="Linux"
echo "Operating System: $os"

[ "$os" == "Mac" ]] && tool="brew" 
[ "$os" == "Linux" ] && tool="apt-get" 
echo $tool

sudo $tool install vim
sudo $tool install tmux
sudo $tool install openssh-clinet

sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo cp .vimrc ~/
sudo cp .zshrc ~/

source ~/.vimrc
source ~/.zshrc
