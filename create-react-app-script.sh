### functions
Help()
{
   echo "create simple react project"
   echo
   echo "Example: REACT-SETUP <project-name> <options>"
   echo
   echo "Options:"
   echo "-s     simplify project"
   echo
}

Simplify()
{
    echo "creating simplified project"
}

### handeling options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
   case $option in 
    s)
        Simplify
        exit;;
    esac
done

#initializing project
echo "creating react project named $1";
mkdir ./$1
cd ./$1
npm init -y
# entry point
mkdir public

#echo "Home directory: $REACT_SCRIPTED_HOME"
#read -p "Are you sure? " -n 1 -r
#echo    # (optional) move to a new line
#if [[ ! $REPLY =~ ^[Yy]$ ]]
#then
#    exit 1
#fi

cp $REACT_SCRIPTED_HOME/README.md ./
cp $REACT_SCRIPTED_HOME/include/index.html ./public
cp $REACT_SCRIPTED_HOME/include/package.json ./
# install packages
npm install 
# Configuration
cp $REACT_SCRIPTED_HOME/include/.babelrc ./
cp $REACT_SCRIPTED_HOME/include/webpack.config.js ./
# source code hello world
mkdir ./src
cp $REACT_SCRIPTED_HOME/include/App.jsx ./src
cp $REACT_SCRIPTED_HOME/include/index.js ./src
# to start
echo "write npm start in project root folder to start server"
echo "happy hacking :)"

