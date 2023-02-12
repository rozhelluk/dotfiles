### [The 50 Most Popular Linux](https://www.youtube.com/watch?v=ZtqBQ68cfJc)

- tldr - like a man, but faster
- exa - ls
- bat - cat
- dust - disk usage
- ffmpeg

### dconf backup

- dconf dump /org/gnome/ > my_gnome_settings.backup
- dconf load /org/gnome/ < my_gnome_settings.backup
- dconf reset -f /org/gnome/

### Create a bootable USB

- _ wipefs --all /dev/sda - formating
- dd bs=4M if=/home/user/linux.iso of=/dev/sda status=progress oflag=sync

### [CLI tools you won't be able to live without](https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6)

- scc -  Count lines of code
- fzf Fuzzy file finder
- wc

> snapper
