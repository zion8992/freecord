# Download and install nvm
echo "$0: Download nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.6/install.sh | bash

# restart the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
echo "$0: Install nodejs 24"
nvm install 24

# install dependencies
echo "$0: Install dependencies"
npm install

# run 11ty
echo "$0: Build site"
npm run build

# debug
echo "[debug] $0: ls _site"
ls _site
