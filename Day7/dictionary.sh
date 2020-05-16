#!/usr/local/bin/bash -x
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sounds " ${sound[dog]} #Dog's sound
echo "All animals sounds " ${sounds[@]} #all values
echo "Animal " ${!sounds[@]} #
echo "No. of animals " ${#sounds[@]} #Number of animals
unset souns[dog] #Delete Dog
