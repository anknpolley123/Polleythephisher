
# PolleyThePhisher 🎣

A multi-purpose phishing toolkit designed for security research and educational purposes. This tool features various templates for popular social and web platforms.

## ⚠️ Legal Disclaimer
Usage of **PolleyThePhisher** for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state, and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program.

---

## 🚀 Features
* **Multi-Platform:** Support for Yahoo, Xbox, WordPress, VK, Yandex, and more.
* **Docker Support:** Ready to run in a containerized environment for better isolation.
* **Automated Scripts:** Includes easy-to-use launch and setup scripts.
* **Mobile Compatible:** Optimized for Kali Linux / NetHunter environments.


  ## Contact
  For any Further Information, Please mail me on ankonpolley@proton.me.com
  Or Please Message me in Instagram: @itz_vorzhevik_volnyshev
  alt: @itz_ankon_polley
  Support Me on Twitter'X': @AnkonPolley
  And In Pinterest: https://pin.it/33E6z0Fld
  
## Install Dependencies


sudo apt install php curl wget

git unzip -y

---

## 🛠️ Installation

To get started, clone the repository and set the permissions:

```bash
# Clone the repository
git clone https://github.com/anknpolley123/Polleythephisher.git

# Enter the directory
cd Polleythephisher

# Give execution permissions
chmod +x Polleythephisher.sh run_docker.sh scripts/launch.sh

# Give one more permission
chmod +x Polleythephisher.sh

## Now, Run it
./Polleythephisher or bash Polleythephisher.sh

## For Link failure 
Run With Cloudflare

## Install cloudflare
# For Amd64

wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb 

sudo dpkg -i cloudflared-linux-amd64.deb

sudo apt --fix-broken install -y

# Run A Temporary Server

cloudflared tunnel --url http://localhost:8080

## For Arm64

wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64.deb

sudo dpkg -i cloudflared-linux-arm64.deb

sudo apt --fix-broken install -y
# Run a Temporary Server 

cloudflared tunnel --url http://localhost:8080

