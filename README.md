# wpctl
 
Wallpaper Control is a minimalist wallpaaper automation tool for linux based on [Unsplash](https://unsplash.com/)


## Getting Started
It is working with Unsplash Api

- Minimalist 100 lines of code zero dependency
- Auto resolution detection
- Multi monitor handling
- Tested on Ubuntu 18.04 with GNOME Desktop

### Prerequisities

```bash
sudo apt-get install wget notify-send
```

### Installing

```bash
sudo wget --quiet https://github.com/mozanunal/wpctl/releases/download/0.0.2/wpctl \
          -O /usr/local/bin/wpctl && \
          sudo chmod +x /usr/local/bin/wpctl

```

Try the application
```bash
user@user:$ wpctl
Please provide a valid wallpaper source
Usage:
wpctl <SOURCE>
       random
       daily
       collection
       topic1,topic2
user@user:$ wpctl random
--> Random is selected as source.
https://source.unsplash.com/random/1920x1080
--> From source 'random' wallpaper set. 1920 x 1080
```

Wallpapers can automatically updated using crontab. Write following command and add line according to your favorite configuration
```
crontab -e
```


Every hours pick a random wallpaper
```
0 * * * * wpctl random
```

Every day get daily photo as wallpaper
```
0 10 * * * wpctl daily
```

Every 15 mins pick a cat image as your wallpaper
```
*/15 * * * * wpctl cat
```

Every 3 hours pick a blue image as your wallpaper
```
0 */3 * * * wpctl blue
```


### Uninstalling

Remove binaries
```bash
sudo rm /usr/local/bin/wpctl
```

Remove picture
```
rm -rf $HOME/wpctl
```

## Authors

* **Mehmet Ozan Ünal**

## License

* MIT

## Acknowledgments

* [Unsplash](https://unsplash.com/)

