(echo $(uname -a)| grep -Eq  .*Mac.*) && os="Mac"
(echo $(uname -a)| grep -Eq  .*Linux.*) && os="Linux"
echo "Operating System: $os"

[ "$os" == "Mac" ] && tool="brew" 
[ "$os" == "Linux" ] && tool="apt-get" 
echo $tool

$tool install vim -y
$tool install htop -y
$tool install tmux -y
$tool install curl -y
$tool install locales -y
$tool install openssh-clients -y
$tool install python -y
$tool install python3 -y
$tool install python-pip -y
$tool install python-pip3 -y
$tool install zsh -y

# Install fonts
git clone https://github.com/powerline/fonts.git --depth=1
bash ./fonts/install.sh
rm -rf fonts

locale-gen --lang en_US.UTF-8

pip install yapf
pip3 install yapf

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cp .vimrc ~/
cp .zshrc ~/

chsh -s $(which zsh)

echo "Relogin the account and run zsh pls"
