DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git pull origin master;

#packages
sudo apt-get install git vim zsh wget guake

#oh-my-zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
chsh -s /bin/zsh

./base16-default.dark.sh

function doIt() {
	rsync --exclude ".git/" --exclude "bootstrap.sh" -avh --no-perms . ~;
	source ~/.zshrc;
	source ~/.vimrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
