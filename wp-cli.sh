#!/bin/sh

RES_X=1920
RES_Y=1080
PICTURE_DIRECTORY=$HOME/Pictures/UnsplashWallpapers
DATE=$(date '+%Y_%m_%d_%H_%M_%S')


getScreenRes ()
{
    RES_X=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)
    RES_Y=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)
}

getWallPaper ()
{
    RESULT=$(`wget -qO- $SOURCE_URl -O $PICTURE_DIRECTORY/wallpaper$DATE.jpeg`)
}

setWallPaper()
{
    gsettings set org.gnome.desktop.background picture-uri "file://$PICTURE_DIRECTORY/wallpaper$DATE.jpeg"
}

setSource()
{
    case $SOURCE_ARG in
        "random") SOURCE_URl=https://source.unsplash.com/random/$RES_X'x'$RES_Y
        echo "--> Random is selected as source.";;
        "daily") SOURCE_URl=https://source.unsplash.com/daily
        echo "--> Daily is selected as source.";;
        "collection") SOURCE_URl=https://source.unsplash.com/collection/454888/$RES_X'x'$RES_Y
        echo "--> Collection is selected as source.";;
        *) SOURCE_URl=https://source.unsplash.com/$RES_X'x'$RES_Y'/?'$SOURCE_ARG
        echo "--> $SEARCH_TERM is selected as source."
        ;;
    esac
}

printHelp()
{
    echo "Usage:"
    echo "wp-cli.sh SOURCE"
    echo "          random"
    echo "          daily"
    echo "          collection"
    echo "          topic1,topic2"
}


if [ -z $1 ]
then
    echo "Please provide a valid wallpaper source"
    printHelp
elif [ -n $1 ]
then
    SOURCE_ARG=$1
    getScreenRes
    mkdir -p $PICTURE_DIRECTORY
    setSource
    echo $SOURCE_URL
    getWallPaper
    setWallPaper
    echo "-->From source '$SOURCE_ARG' wallpaper set. $RES_X x $RES_Y"
    notify-send "From source '$SOURCE_ARG' wallpaper set. $RES_X x $RES_Y"
fi

echo "$RESULT"
