#!/bin/bash

source ./hiker.sh

test_life_the_universe_and_everything()
{
  local expected=42
  local actual=$(answer)
  assertEquals ${expected} ${actual}
}

test_the_checksum_of_the_answer()
{
  local actual=$(checksum)
  assertEquals 0 ${actual}
}

# load and run shUnit2
source shunit2
