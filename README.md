<p align="center" >
 <img src="Pictures/bbanner.png" height=300px><br>
 <b> config files for GNU/Linux and BSD </b>
</p>
<p align="center">
<a href="https://github.com/yowls/scripts"><img width="200px" style="padding: 0 10px;" src="Pictures/related1.png"></a>
<a href="https://github.com/yowls/startpages"><img width="200px" style="padding: 0 10px;" src="Pictures/related2.png"></a>
<a href="https://github.com/yowls/firefoxcss"><img width="200px" style="padding: 0 10px;" src="Pictures/related3.png"></a>
</p>

## Table of contents:
<img src="Pictures/debian_logo.png" align=right height=500px >
<ul align=left>
<li>Introduction</li>
  <ul>
  <li><a href="https://github.com/yowls/dotfiles/tree/debian#about">About</a></li>
  <li><a href="https://github.com/yowls/dotfiles/tree/debian#Q&A">Q&A</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#What-you-gonna-find-here">What you gonna find in this branch</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#My-other-branchs">Check my other branchs</a></li>
  </ul>
<li>Screenshots</li>
  <ul>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Plasma">Plasma setup</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Qtile">Qtile setup</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Herbstluftwm">Herbstluftwm setup</a></li>
  </ul>
<li>Dependences</li>
  <ul>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Must-have">Must have</a></li>
  <li><a href="https://github.com/yowls/dotfiles/tree/debian#Recommended-fonts">Recommended fonts</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian/.config/qtile#Requiered-dependences">Qtile</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian/.config/herbstluftwm#Requiered-dependences">Herbstluftwm</a></li>
  </ul>
<li>Installation</li>
  <ul>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Preparations">Preparations</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Execute">Execute</a></li>
  </ul>
<li>List of programs</li>
  <ul>
  <li><a href="https://github.com/yowls/dotfiles/tree/debian#Main">Main</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Others">Others</a></li>
  </ul>
<li>Extra information</li>
  <ul>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian/.config/qtile">Qtile</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian/.config/herbstluftwm">Herbstluftwm</a></li>
	<li><a href="https://github.com/yowls/dotfiles/tree/debian#Extra-information">Others</a></li>
  </ul>
<li><a href="https://github.com/yowls/dotfiles/tree/debian#Known-issues">Known issues</a></li>
<li><a href="https://github.com/yowls/dotfiles/tree/debian/Pictures">Gallery</a></li>
<li>Acknowledgement</li>
<li>Contributors</li>
<li>Social media</li>
<li>Licence</li>
<li>Disclaimer</li>
</ul>

<img src=Pictures/content_master/2_about.png width=200px><br>
> "some time i feel cool even paralize"<br>
> -- <cite>Carl Sagan</cite>

### About
<img src="Pictures/profilepic.jpg" align="right" width= 400px>
<p align=left>
Welcome! <br>
This is my first big repository, a collection of customizations for my UNIX based systems.<br>
My greatest inspiration was the subreddit <a href="https://www.reddit.com/r/unixporn/">r/Unixporn</a>. Since then I have been doing this since the beginning of 2020.<br>

About my setup, this repository has 3 current branches, one for every operating system I use on my laptop. Debian Buster, Arch linux and FreeBSD (in addition to windows). Yep i have multi boot.<br>

In each branch certain things change, such as used Desktop Environments(DE), Window Managers(WM) and some other program used.<br>
You can find more information about it if you change branches. Since each one is more specialized in that particular OS.<br>
The Master branch has nothing in particular, it is only a redirecting to the other branches. However, you can find some settings that I use on all OS, that is to say that for example, on all branches there's an archive .zshrc or a .vimrc identical or very similar.<br>
It is the common factor of all branches, and if in the future I get to add another, I always work from the main branch so there are no compatibility issues. Since I try to make it as vanilla as possible, compatible with most UNIX-based operating systems.<br>
ah and of course, **(I use arch btw)**
</p>

### Q&A
* **Im noob, What am I supposed to do here?**

Well, not much really, you can see the gallery/screenshots I did to see if it encourages you to experiment a little bit with *Nix* based OS. You can also find similar images in [r/unixporn](https://www.reddit.com/r/unixporn/)

* **Esto puede perjudicar a mi equipo?**

No deberias tener ningun problema, aunque siempre cae la posibilidad de que algo salga mal, en cualquier caso Linux es un OS suficiente robusto para poder arreglarlo.

* **What does 'Dotfiles' mean?**

The word 'dotfiles' refers to any configuration file that is used to modify a program. Algunos de ellos empiezan con un punto (los que estan en el directorio home), por ej: .zshrc. Otros estan en una carpeta llamada '.config'

* **¿Que significa 'ricing'?**

Bajo este contexto, se refiere a la palabra R.I.C.E (Race Inspired Cosmetic Enhancements), lo que es put parts on cars to make them look fast. En este caso, personalizar la interfaz para que se vea mejor.

### What you gonna find here<br>
**Plasma** as *Desktop Environment* <br>
**Qtile** && **Herbstluft** as *Window Manager* <br>

### My other branches
+ [Master branch](https://github.com/yowls/dotfiles/tree/master) --- --- ---{ Summary }
+ [Arch branch](https://github.com/yowls/dotfiles/tree/arch) --- --- --- ---{ Awesome wm + openbox }
+ [Freebsd branch](https://github.com/yowls/dotfiles/tree/freebsd)--- -- ---{ Bspwm + 2bwm }

## Screenshots
Just a fews screenshots of my setup in Debian
### Plasma
<img src="Pictures/pldemo.png" align=right width=300px>

`Details:`
+ **Os**: Debian Buster
+ **Theme**: Materia
+ **Icons**: Flat remix
+ **Zsh theme**: Powerlevel10k
+ **Terminals**: urxvt, konsole
+ **Decoration**: Neofetch, pfetch
+ **Other apps**:
  - vim with vimplug
  - feh for the image
+ **KDE plasma rules**: No title bar and frame

<br>
<br>

### Qtile
<img src="Pictures/hldemo.png" align=right width=300px>

`Details:`
+ **Os**: Debian Buster
+ **Terminal**: Konsole
+ **Shell**: Zsh + powerlevel10k
+ **Panel**: Built in

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

### Herbstluftwm
<img src="Pictures/hldemo.png" align=right width=300px>

`Details:`
+ **Os**: Debian Buster
+ **Terminal**: konsole
+ **Shell**: Zsh with powerlevel10k
+ **Panel**: Polybar
+ **Applications**:
  - neofetch
  - htop
  - feh
  - colorls

<br>
<br>
<br>
<br>

*For more photos see: [enter in gallery here](https://github.com/yowls/dotfiles/tree/debian/Pictures)*

## Dependences
### Must have
Programs that i use in every setup
* Zsh + [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh) + [Power Level 10K](https://github.com/romkatv/powerlevel10k)
* Rofi
* Vim + gvim (for pasting fix) + [VimPlug](https://github.com/junegunn/vim-plug) (for pluggins)
* Rxvt-Unicode

### Recommended fonts
always is good to have a nerd font
+ [Nerd font](https://github.com/ryanoasis/nerd-fonts)
choose what you want
i personaly prefer Fira code

`If you want to use QTile`<br>
**[See more information](Qtile page)**

`If you want to use Herbstluftwm`<br>
**[see more information](Herbstluftwm page)**

`If you plan to use Plasma`<br>
It doesnt requiered any special dependencies to work, just install some themes and widgets for the panel, and leave it as you want.

## Installation
Instructions to set my rice.<br>
You can complete all the dependences of only one to work with it.<br>
This setup should work on moslty debian based, but anyways, dont promise you nothing. Good luck.

### Preparations:
Make sure there´s no conflict between your files and mine.<br>
**Make a backup** of your files anyways, doing:
```shell
        $ cp ~/.config ~/.oldconfig
        $ cp ~/{.zshrc .bashrc .Xresources} ~/.oldconfig
```
And make sure you have all needed dependencies to work properly.

### Execution:
First clone the directory in home directoy:
```shell
	$ git clone --depth=1 https://github.com/yowls/dotfiles/tree/debian
```
Change zsh default shell with
```shell
	$ chsh -s zsh
```
After all installation and execution, you should reboot and in the display manager choose your option.<br>
And buala, that´s all.

*I will do a script to do it automatically, i hope soon*

## List of programs
In any case, I publish the versions of the programs in case in any future update something broke and I haven't updated it yet.

### Main:
+ Browser      = Firefox (78.0.1)
+ Shell        = Zsh (5.7.1)
+ Terminal     = konsole (18.04.0)
+ Text editor  = Vim (8.1)
+ File Manager = Dolhin (18.08)
+ Compositor   = Compton (0.1~beta2+20150922-1) (*debian version*)
+ Launcher     = Rofi (1.5.1)


+ Plasma  (5.14)
+ QTile   (0.15.1)
+ Herbstluftwm  (0.8.2)

### Others
+ redshift for you pretty eyes
+ dunst for notification
+ flameshot in plasma and maim in wm´s for screenshots
+ ? for record?


## Extra information
### To know more about the details of every rice, i recommend you to see
+ [More information about Qtile](https://github.com/yowls/dotfiles/tree/debian/.config/qtile)
+ [More about Herbstluft](https://github.com/yowls/dotfiles/tree/debian/.config/herbstluftwm)

### ZSH
Useful terminal aliases in .zshrc:
```
	code code code
```

### Xresources
Xresources color scheme:
+ Color scheme
 - [color scheme]
+ photo demostration in terminal
 - [demostration]

*in master branch just put .colors,bg,fg*

### Vim
.vimrc file will going to install some pluggins using [VimPlug](https://github.com/junegunn/vim-plug)<br>
Some of them are:
* Gitgutter
* NERDTree
* Lightline
* css-color

Also, you may notice that clipboard doesnt work well when trying to pase from outside.
To fix that, **install gvim**. 
This will give vim the ability to copy/paste from/to others programs.
Otherwise, you can fix it using xclip, making a keybind in .vimrc replacing paste command. But the easiest way is just install gvim.

Plus, you need to create a `undodir` folder in .vim for a history of undo´s. So you can undo a line of a file previously closed

## known issues
Nothing recorded yet.<br>
If you are having an issue, first check you are using the same version as me, then open a ticket at issue section or just make a pull request.

## Gallery
a few more photos<br>
[Check my full gallery](https://github.com/yowls/dotfiles/tree/debian/Pictures), all the setups of the branch here.

## Disclaimer
This is MY setup and it is opinionated and made to work how I want. Anyone can download and use it, but unless you and me are the same person, you'll probably find things that you don't want. It is OK. Use this as a starting point for making your own.

Under no circumstances I am responsible for any kind of damage derived from the use of this on your machine. If you lose files, if your install breaks something, if something explodes. My dotfiles comes with no warranties. Again; you shouldn't play with my toys if you don't want to get hurt. (This doesn't mean my dotfiles will hurt you, you know, but this is legal boilerplate to cover my ass in case something happens).
