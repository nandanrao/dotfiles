curl -O https://download.clojure.org/install/linux-install-1.10.0.411.sh
chmod +x linux-install-1.10.0.411.sh
sudo ./linux-install-1.10.0.411.sh
rm -f linux-install-1.10.0.411.sh

curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
sudo mv lein /opt/lein
sudo ln -s /opt/lein /usr/local/bin/lein
lein
