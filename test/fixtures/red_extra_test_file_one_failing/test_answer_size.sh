#!/bin/bash

source ./hiker.sh

test_the_answer_is_three_digits_long()
{
  local actual=$(answer)
  assertEquals 3 ${#actual}
}

# load and run shUnit2
source shunit2
