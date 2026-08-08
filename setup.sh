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
npm install @11ty/eleventy

# run 11ty
echo "$0: Build site"
npx @11ty/eleventy

# make the directory that pages will copy
echo "$0: Creating 'public'"
mkdir -p public

# copy the 11ty out to public
echo "$0: Moving 11ty site to public"
mv _site public
