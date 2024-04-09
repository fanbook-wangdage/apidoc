npm install vuepress-theme-reco --save-dev;
theme-cli init blogs;
npm install;
npm run build;
#set NODE_OPTIONS=--openssl-legacy-provider --max_old_space_size=8192 && vuepress build .