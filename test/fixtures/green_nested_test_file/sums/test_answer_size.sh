#!/bin/bash

source ./hiker.sh

test_the_answer_is_two_digits_long()
{
  local actual=$(answer)
  assertEquals 2 ${#actual}
}

# load and run shUnit2
source shunit2
