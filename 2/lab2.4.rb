$number = 145
$result = []
while $number != 0 do
  $result.push($number.modulo(2))
  $number = $number/2
end
print "Result = " + $result.reverse.join("").to_s, "\n"