$x = 2
$result = 1
for i in 1..10
  val =  i % 2 == 0 ? 1 : -1
  $result += val*($x**i)*(1+i)/(2+i)
end

print "1) Result = " + $result.to_s, "\n"

print "Enter n:\n"
$n = gets.chomp.to_f
$result = 0
val = 0
for i in 1..$n
  val += Math.sin(i)
  $result += 1.0/val
end
print "4) Result = " + $result.to_s, "\n"