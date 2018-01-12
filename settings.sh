(echo $(uname -a)| grep -Eq  .*Mac.*) && os="Mac"
(echo $(uname -a)| grep -Eq  .*Linux.*) && os="Linux"
echo "Operating System: $os"

[ "$os" == "Mac" ] && tool="brew" 
[ "$os" == "Linux" ] && tool="apt-get" 
echo $tool

$tool install vim -y
$tool install tmux -y
$tool install openssh-clinets -y
$tool install python -y
$tool install python3 -y
$tool install python-pip -y
$tool install python-pip3 -y
$tool install zsh -y


sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo cp .vimrc ~/
sudo cp .zshrc ~/

chsh -s $(which zsh)

echo "Relogin the account and run settings2.sh pls"
