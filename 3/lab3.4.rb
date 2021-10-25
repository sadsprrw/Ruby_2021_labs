$eps = 0.00001
$n = 2
$result = 0
$prev = 1

def factorial(n)
  n > 1 ? n * factorial(n-1) : 1
end

before_pow = 1
while $prev.abs > $eps
  before_pow = before_pow * (2*$n - 1.0) / (2*$n + 1)
  $prev = before_pow ** ($n*($n+1))
  $result += $prev
  $n += 1
end
print "1) Result = " + $result.to_s, "\n"

PI = 3.1415
$result = 1
$n = 1
$prev = 1
val = 1
while $prev.abs > $eps
  val = val * (-1)
  $prev = 1.0/($n + 2) * val
  $result += $prev
  $n += 2
end

print "2) Result = " + $result.to_s, "\n"
print "     pi/4 = " + (PI/4).to_s, "\n"

$result = 0
$n = 1
$prev = 1
while $prev.abs > $eps
  $prev = factorial(3 * $n - 1) * factorial(2 * $n - 1)/ (factorial(4 * $n) * 3 ** (2.0*$n) * factorial(2 * $n))
  $result += $prev
  $n += 1
end
print "3) Result = " + $result.to_s, "\n"

$n = 5
$c = 3
def func_y(x)
  ((x**2 + x * (x**2 - $c**2) ** (1.0/2))**(1.0/$n) + (x**2 + 1.0)/(1.0/x + 1.0/$n) + (3*x + $c**x)/(x + 1.0))
end
def func_z(x)
  2*((Math.sin(4*x))**(-1.0) - Math.tan(7*PI/2 + 4*x)) + Math.tan(5*PI + x)
end

print "4) Result: \n"
print "--------1-------- \n"
1.step($n, ($n - 1).to_f / ($n + $c)) do |i|
  puts func_y(i)
end

print "--------2-------- \n"
i = PI / $n
delta = (PI - PI / $n) / ((3.0/2) * $n + $c)
while i <= PI do
  puts func_z(i)
  i += delta
end

print "--------3-------- \n"
(2..$c).step(($c - 2).to_f / (2*$n)) do |j|
  if j > 2 && j < $n
    puts  func_y(j)
  elsif j > $n && j < 2*$n
    puts  func_z(j)
  else
    puts  func_y(j) + func_z(j)
  end
end