# wpctl.sh
 
Wallpaper Control is a wallpaaper automation tool for linux based on [Unsplash](https://unsplash.com/)

## Getting Started



### Installing

```
sudo wget --quiet https://github.com/mozanunal/wpctl/releases/download/0.0.1/wpctl \
          -O /usr/local/bin/wpctl && \
          sudo chmod +x /usr/local/bin/wpctl

```

Try the application
```
user@user:$ wpctl
Please provide a valid wallpaper source
Usage:
wpctl SOURCE
      random
      daily
      collection
      topic1,topic2
user@user:$ wpctl random
--> Random is selected as source.

-->From source 'random' wallpaper set. 1920 x 1080

```

## Installing From Source


## Uninstalling

Remove binaries
```
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

