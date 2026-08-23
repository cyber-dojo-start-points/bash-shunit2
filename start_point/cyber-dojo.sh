# Your tests live in files named test_something.sh or something_test.sh.
# Every one of them runs, however deeply nested. A file named anything else
# is not a test file and will not run, so name new test files that way.
#
# Every .sh file is checked for syntax errors first, even one you have not
# sourced yet, so a file that will not parse cannot sit there unnoticed.

export SHUNIT_COLOR=none

for file in $(find . -name '*.sh'); do
  bash -n "${file}" || exit 1
done

status=0
for file in $(find . \( -name 'test_*.sh' -o -name '*_test.sh' \)); do
  bash "${file}" || status=1
done
exit ${status}
