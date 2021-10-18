$number = "1000010010010"
$result = 0
for i in 0..$number.size-1 do
  $result += $number[$number.size - 1 - i] == '1' ? 2**(i) : 0
end
print "Result = " + $result.to_s, "\n"