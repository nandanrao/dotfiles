##############################################
# Tools
##############################################
sudo apt install --yes \
	git \
        clang \
        libcurl4-gnutls-dev \
	zsh \
        tree \
	silversearcher-ag \
	autoconf \
        xclip \
        checkinstall \
        cmake \
        extra-cmake-modules \
        google-cloud-sdk \
        kubectl \
	htop \
        sway \
        grim \
        slurp \
        jq \
        openvpn \
        unrar \
        suckless-tools



sudo snap install slack --classic
sudo snap install helm --classic

# For yaml parsing!
sudo add-apt-repository ppa:rmescandon/yq
sudo apt update
sudo apt install yq -y

# Hub (Git autocomplete)
# https://askubuntu.com/questions/816540/how-do-you-install-hub-git-wrapper-on-ubuntu-with-autocomplete-and-man-documen
sudo add-apt-repository ppa:cpick/hub
sudo apt update
sudo apt install --yes \
	hub

# Pandoc
# Get lates: https://github.com/jgm/pandoc/releases/tag/2.2.3.2
wget https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb
sudo dpkg -i pandoc-2.7.2-1-amd64.deb
rm -f pandoc-2.7.2-1-amd64.deb


# Zotero
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
sudo apt update
sudo apt install --yes zotero

##############################################
# Emacs
##############################################

# TODO: Install emacs 26!
# https://ppa.launchpad.net/~kelleyk/+archive/ubuntu/emacs

# For pdf-tools in emacs
sudo apt install --yes \
     libpoppler-glib-dev \
     libpoppler-private-dev


##############################################
# Languages
##############################################

sudo apt install --yes \
        default-jdk \
        r-base \
        ruby-dev

# Julia
wget -q --show-progress -O julia-1.0.0.tar.gz https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz
tar -xf julia-1.0.0.tar.gz
sudo mv julia-1.0.0 /opt/
sudo ln -s /opt/julia-1.0.0/bin/julia /usr/local/bin/julia
rm -rf julia.tar.gz


# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh

# TeX
sudo apt install --yes texlive-base
sudo apt install --yes texlive texlive-fonts-extra
tlmgr init-usertree
tlmgr option repository ftp://tug.org/historic/systems/texlive/2018/tlnet-final



##############################################
# Misc.
##############################################

# Gitignore!
echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc

# Hyper CLI
# REPLACE WITH LATEST VERSION
sudo mkdir /opt/hyper
sudo wget https://github.com/hyperhq/hypercli/releases/download/v1.10.12/hyper-linux-x86_64.tar.gz -O /opt/hyper/hyper.tar.gz
sudo tar -xzf /opt/hyper/hyper.tar.gz
sudo ln -s /opt/hyper/hyper /usr/local/bin/hyper


# Spotify CLI - required for awesome-spotify-widget
git clone https://gist.github.com/fa6258f3ff7b17747ee3.git sp-cli
chmod +x sp-cli/sp
mv sp-cli/sp /usr/local/bin/
rm -rf sp-cli

# Mendeley Desktop!
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt install gconf2
sudo apt --fix-broken install

# Autokey
sudo add-apt-repository ppa:sporkwitch/autokey
sudo apt update
sudo apt install -y autokey

git clone https://github.com/metakermit/dotfiles /tmp/dotfiles
mv /tmp/dotfiles/autokey ~/.config/
rm -rf /tmp/dotfiles

# Geo
sudo add-apt-repository ppa:ubuntugis/ppa
sudo apt update
sudo apt install --yes \
	gdal-bin

# Random
sudo apt install --yes \
	libcairo2-dev
