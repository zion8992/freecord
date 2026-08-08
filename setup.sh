# Download and install nvm
# Copied from node website
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.6/install.sh | bash

# restart the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 24

# install dependencies
npm install @11ty/eleventy

# run 11ty
npx @11ty/eleventy

# make the directory that pages will copy
mkdir -p public

# copy the 11ty out to public
mv _site public
