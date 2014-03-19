# Boxen

This is a template Boxen project designed for your organization to fork and
modify appropriately.
The Boxen rubygem and the Boxen puppet modules are only a framework for getting
things done.
This repository template is just a basic example of _how_ to do things with them.

## Getting Started

* Boxen __requires__ at least the Xcode Command Line Tools installed.
* Boxen __will not__ work with an existing rvm install.
* Boxen __may not__ play nice with a GitHub username that includes dash(-)
* Boxen __may not__ play nice with an existing rbenv install.
* Boxen __may not__ play nice with an existing chruby install.
* Boxen __may not__ play nice with an existing homebrew install.
* Boxen __may not__ play nice with an existing nvm install.
* Boxen __recommends__ installing the full Xcode.

### Dependencies

**Install the Xcode Command Lines Tools and/or full Xcode.**
This will grant you the most predictable behavior in building apps like
MacVim.

How do you do it?

#### OS X 10.9 (Mavericks)

If you are using [`b26abd0` of boxen-web](https://github.com/boxen/boxen-web/commit/b26abd0d681129eba0b5f46ed43110d873d8fdc2)
or newer, it will be automatically installed as part of Boxen.
Otherwise, follow instructions below.

### Bootstrapping

Create a **new** git repository somewhere on the internet.
It can be private or public -- it really doesn't matter.
If you're making a repository on GitHub, you _may not_ want to fork this repo
to get started.
The reason for that is that you can't really make private forks of public
repositories easily.

Once you've done that, you can run the following to bootstrap
your boxen:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/fusion94/boxen /opt/boxen/repo
cd /opt/boxen/repo
git push -u origin master
```

Now that your boxen is bootstrapped, you can run the following to
install the default configuration from this repo:

```
cd /opt/boxen/repo
./script/boxen
```

You can also skip the above steps and <a href="#customizing">customize your
boxen</a> before installing it.


### Distributing

That's enough to get your boxen into a usable state on other machines,
usually.
From there, we recommend setting up
[boxen-web](https://github.com/boxen/boxen-web)
as an easy way to automate letting other folks install your boxen.

If you _don't_ want to use boxen-web, folks can get using your boxen like so:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/fusion94/boxen /opt/boxen/repo
cd /opt/boxen/repo
ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future ./script/boxen --no-fde
```

Keep in mind this requires you to encrypt your hard drive by default.
If you do not want to do encrypt your hard drive, you can use the `--no-fde`.

```
./script/boxen --no-fde
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

## What You Get

This project provides the following by default:

* Homebrew
* Git
* Hub
* dnsmasq w/ .dev resolver for localhost
* rbenv
* Full Disk Encryption requirement
* Node.js 0.6
* Node.js 0.8
* Node.js 0.10
* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0
* ack
* Findutils
* GNU tar

## Customizing

You can always check out the number of existing modules we already
provide as optional installs under the
[boxen organization](https://github.com/boxen). These modules are all
tested to be compatible with Boxen. Use the `Puppetfile` to pull them
in dependencies automatically whenever `boxen` is run.


## Binary packages

We support binary packaging for everything in Homebrew, rbenv, and nvm.
See `config/boxen.rb` for the environment variables to define.
