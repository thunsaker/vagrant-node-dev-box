
# NodeJS development vagrant box.

This repo contains the source code used for building  [this vagrant box](https://atlas.hashicorp.com/brpaz/boxes/node-dev-box).

The idea of this project is to build a basic and easy to use nodeJS development box.

## Included Packages

* base packages (git, tmux, htop)
* nvm with the latest stable node pre-installed
* pre-installed node modules: yeoman grunt-cli bower foreman forever gulp coffee-script uglify-js pm2 sass jshint
* pre-installed yeoman generators: mean, angular, express
* heroku toolbelt
* mongodb
* redis
* vim, vundle and a lot of vim plugins optimized for nodeJS development.


## Usage

#### Using the source code.

1. Clone the repo.

2. In the project folder run:

```
vagrant up
```


#### Using a pre-packaged Vagrant Box.

If you prefer to use a pre-package Vagrant base box, just change the box option in your project Vagrantfile:

```
config.vm.box = 'brpaz/node-dev-box'
```

You can then change other settings in your Vagrantfile, to match your project needs (extra provision scripts, foward ports etc).
This is the prefered way for me. If I want a specific environment for each project, then I create a Vagrantfile and all the needed provision scripts inside that project repo.


## Testing

This project includes some basic [Serverspec](http://serverpec.org) tests.

For running the tests, you need to have ruby installed on your machine. Then in the project root, just run:

```
bundle
```

To install Serverspec and all dependencies.
To run the tests do:

```
rake spec
```

## Build a new base box

To build a new vagrant box from this code, run:

```
vagrant package --output build/package.box
```

## TODO

* Add more ServerSpec tests.

## Contributing

I am not a node dev, so any suggestions for additional packages to install is welcome.
Feel free to fork the project, add modifications and even create new boxes and upload them to [Atlas](atlas.hashicorp.com).
