#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh

rawurlencode() {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
     c=${string:$pos:1}
     case "$c" in
        [-_.~a-zA-Z0-9] ) o="${c}" ;;
        * )               printf -v o '%%%02x' "'$c"
     esac
     encoded+="${o}"
  done
  echo "${encoded}"    # You can either set a return variable (FASTER) 
  REPLY="${encoded}"   #+or echo the result (EASIER)... or both... :p
}

jv_pg_yt_ms_pl_search(){
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	local json="$(curl -s https://www.googleapis.com/youtube/v3/search\?maxResults=1\&q=$(rawurlencode "$1")\&type=video\&part=snippet\&key=$jv_pg_jv_yt_ms_pl_api)"
	local tmp=$(echo "$json" | jq -r "$match.items[0].id.videoId")

  if pgrep vlc &> /dev/null ; then sudo killall vlc ; fi #Si il y en avait d autre de lancée

	say "Je lance la musique $(echo "$json" | jq -r "$match.items[0].snippet.title")"
  
	sh $DIR/launch_music.sh $tmp &>$DIR/playback.log &

  echo "Musique lancée!"
}