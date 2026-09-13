#!/bin/bash

source ./hiker.sh

test_life_the_universe_and_everything()
{
  local expected=42
  local actual=$(answer)
  assertEquals ${expected} ${actual}
}

test_the_answer_is_three_digits_long()
{
  local actual=$(answer)
  assertEquals 3 ${#actual}
}

test_the_answer_is_the_question()
{
  local actual=$(answer)
  assertEquals "6 * 7" "${actual}"
}

# load and run shUnit2
source shunit2
