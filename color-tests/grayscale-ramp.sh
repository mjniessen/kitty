#!/usr/bin/env bash

function grayscale_ramp() {
  local grey
  printf "            "
  for grey in {232..255}
  do
    printf "\033[48;5;${grey}m  "
  done
  printf "\033[0m\n"
}

function color_cube() {
  local green 
  local red 
  local blue 
  local color 

  for green in {0..5}
  do
    for red in {0..5}
    do
      for blue in {0..5}
      do
        (( color = 16 + ( red * 36 ) + ( green * 6 ) + blue ))
        printf "\033[48;5;${color}m  "
      done
      printf "\033[0m"
    done
    printf "\n"
  done
}

color_cube
grayscale_ramp

