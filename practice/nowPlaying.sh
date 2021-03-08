clear
echo "What is Samuel Webb listening to on Spotify?
============================================="
curl -sX "GET" "https://api.spotify.com/v1/me/player/currently-playing?market=ES&additional_types=episode" -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: Bearer BQCvQ3r8nNzbyMNkhqgunOZzZd4ydWV9UkIr0yZv7_jujhft8cSfj-74HPYxL2-hVxSrq_QPOmtTyD-UIohJDTRXiQKk9y7Ra9hsdTjE5C1CauaMev37Bo6ALFLjVwMEvUKOIiancrWt" | tac | awk '/"name"/{$1=$2=""; print $0}' | cat -b | sed -nE 's/"//g;s/,//;s/[ ]+/ /g;s/1/Song:/;s/2/Artist:/;s/3/Album:/;s/:[^ ]*/:/;1,3p'
