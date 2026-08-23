lambda { |stdout,stderr,status|
  output = stdout + stderr
  # shunit2 reports "Ran N test." or "Ran N tests.", then "OK" or
  # "FAILED (failures=N)". It counts only failed assertions, so a test that
  # errored rather than failed reaches the report as failures=0.
  # A bash error names its file and line, as in "./hiker.sh: line 6:", and
  # that marks code that could not run rather than a test that ran and failed.
  broken = /: line \d+:/.match(output)
  ran = /^Ran [1-9]\d* tests?\.$/.match(output)
  return :green if status == 0 && ran && /^OK/.match(output) && !broken
  return :red   if /^FAILED \(failures=[1-9]\d*/.match(output) && !broken
  return :amber
}
