<!--
<img src="https://miro.medium.com/max/900/1*oO43IFLliI6AxohJ2sc9Ug.jpeg" align=center height=300px>
-->
```zsh
 _______        _______           _______  _        _       
/ ___   )      (  ____ \|\     /|(  ____ \( \      ( \      
\/   )  |      | (    \/| )   ( || (    \/| (      | (      
    /   )_____ | (_____ | (___) || (__    | |      | |      
   /   /(_____)(_____  )|  ___  ||  __)   | |      | |      
  /   /              ) || (   ) || (      | |      | |      
 /   (_/\      /\____) || )   ( || (____/\| (____/\| (____/\
(_______/      \_______)|/     \|(_______/(_______/(_______/

```

My config for the best shell.

## Table of Content
+ [Dependences](#Dependences)
+ [Installation](#Installation)
+ [About Files](#scroll_About-Files)
+ [Aliases](#Alias)
<!--+ [Themes]-->
<!--+ [Pluggins]-->


## Dependences
Install [ohmyzsh](https://ohmyz.sh/#install)
install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
install [zsh-syntax-hightlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
install [autojump](https://github.com/wting/autojump)
install [p10K](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

## Installation
Just clone the repostory and copy the config:
```bash
	$ git clone https://github.com/yowls/dotfiles/ Yowls
	$ mv ~/.zshrc ~/.zshrc.old
	$ cp Yowls/.zshrc ~/
	$ rm -rf Yowls #Optional
```

Also i made a simplified zsh config for root, to use it do:
```bash
	$ sudo cp Yowls/.zsh/root.zshrc /root/.zshrc
```


## 📜 About Files
All the config is in ´.zshrc´ in the home directory<br>
History file will be in: *~/.cache/zsh_history*

## Alias
All the alias that i use is in ´.alias´ in the home dir
