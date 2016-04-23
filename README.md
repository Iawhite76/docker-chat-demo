# To get this thang running
* Install docker with homebrew
** ```brew update```
** ```brew cask install dockertoolbox```
* Make sure you have virtualbox installed and create a default vm
** ```docker-machine create --driver virtualbox default```
* Start the docker machine
** ```docker-machine start default```
* Set the docker machine env
** ```eval "$(docker-machine env default)"```
* Build and bring up your machine
** ```docker-compose build```
** ```docker-compose up```
