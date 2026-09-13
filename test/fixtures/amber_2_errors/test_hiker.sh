#!/bin/bash

source ./hiker.sh

test_life_the_universe_and_everything()
{
  local expected=42
  local actual=$(answer)
  assertEquals ${expected} ${actual}
}

test_the_answer_is_two_digits_long()
{
  local actual=$(answer)
  assertEquals 2 ${#actual}
}

# load and run shUnit2
source shunit2
