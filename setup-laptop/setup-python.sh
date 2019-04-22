sudo apt-get install -y \
	build-essential \
	libbz2-dev \
	libssl-dev \
	libreadline-dev \
        libsqlite3-dev \
	tk-dev

# optional scientific package headers (for Numpy, Matplotlib, SciPy, etc.)
sudo apt-get install -y \
	libpng-dev \
	libfreetype6-dev

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt install --yes \
	python3.7 \
	python3.6 \
	python3.7-venv \
	python3.6-venv

##############################################
# Global PIP packages
##############################################

sudo pip install \
     aws-cli \
     td-watson
