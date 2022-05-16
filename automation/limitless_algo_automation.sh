# This folder is .gitignore-d and was not uploaded to Github

# Copy this file to your home directory (~ on mac)
# And source it in your shell init script (source ~/limitless_algo_automation.sh)

algo() {
  # Keep everything in the correct folder
  cd /Users/martinkruusement/Projektid/algo
  limitless_algo_art
  echo Creating new algorithm: $1
  mkdir $1
  cd $1
  git clone https://github.com/martinkruusement/algo-starter .
  mv algo-starter.sublime-project $1.sublime-project
  npm install
  # Wipe git history of the template repo and start fresh
  rm -rf .git
  git init
  echo "" >> .gitignore          
  echo "# Ignore automation scripts" >> .gitignore 
  echo "/automation" >> .gitignore 
  git add .
  git commit -m "Created $1"
  # Connect the new repo to github as your new public repository
  gh repo create algo-$1 --public --source=. --remote=upstream --push
  # Launch Wallaby server on Chrome
  open -a 'Google Chrome' 'http://localhost:51245/' # Wallaby server
  subl $1.sublime-project
  npm test
}

limitless_algo_art(){
  echo "\033[0;34m"
  echo "                         ,          ▄████▄"
  echo "                      ▄██▀██▌      ╟█▌  └██      ╓██▀██▌"
  echo "                      ██   ██⌐     └██▄▄▓█▀      ██   ╟█▌"
  echo "                      ╙██▓██▀        └▓▓╙        ╙██▓▓█▀"
  echo "               ,▄▄▄▄    ▐█▌           ▓█           j█▌    ▄▄▓▄,"
  echo "              Æ█▀╙╙██▌   ██▓▄       \033[1;37mL\033[0;034m ██         ▄▓██▀  ╒██╙╙▀██"
  echo "              ██Q  ▄██╖    ╙▀███▄,  \033[1;37m1\033[0;034m ██    ,▄▓██▀╙    ╓▓█▌  ,██"
  echo "               ╙▀██▀╙╙▀██▓▄    └╟█▌ \033[1;37mM\033[0;034m ██ \033[1;37mA\033[0;034m ▐██╙    ▄▓██▀▀╙▀██▀▀"
  echo "                 ▒▒      ╙▀██▌  ▐█▌ \033[1;37m1\033[0;034m ██ \033[1;37mL\033[0;034m ▐█▌▒]██▀╙"
  echo "                  ▒        ╞█▌  ▐█▌ \033[1;37mT\033[0;034m ██ \033[1;37mG\033[0;034m ▐█▌▒▐█▌"
  echo "                  ░      ,▄██▌  ▐█▌ \033[1;37mL\033[0;034m ██ \033[1;37m0\033[0;034m ▐█▌░▐██▄,"
  echo "               ,▄▓▓▄ ,▄▓██▀╙    ▐█▌ \033[1;37m3\033[0;034m ██   ▐█▌    └▀███▄╥,▄▓▓▄▄"
  echo "              ▐█▀└└▀██▀╙    ╓▄██▓▒  \033[1;37m5\033[0;034m ██    ╙▀██▓▄    └╙███└└╙██"
  echo "              ╟█▄ ,▄██   ▓██▀╙  ▒░  \033[1;37m5\033[0;034m ██        ╙▀██▓▄  ╘█▌, ▄█▓"
  echo "               ╙▀██▀╙   ▐█▌      ░    █▓           j█▌   └▀▒░▓░▒"
  echo "                      ╓▓████▄         ▓▓          ▄████▄   ░ ▒"
  echo "                      ██   ╟█⌐     ,██▀▀██µ      ╫█   ╟█▌  ░"
  echo "                      ▀█▓▄▄██      ╟█▌   ██       ██▄▄██"
  echo "                        ╙╙╙         ▀██▓█▀          └└\033[1;37m"
  echo
}
