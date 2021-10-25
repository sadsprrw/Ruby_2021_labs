print "Enter x:\n"
$x = gets.chomp.to_f
$y = 0

case $x
when -3..0 then
  $y = ((($x-2).abs)/($x**2 * Math.cos($x)))**(1.0/7)
when 1..12 then $y = 1/((Math.tan($x + 1.0/Math.exp($x))/(Math.sin($x)**2))**(7/2))
else
  if $x == -4
    $y = "undefined"
  else
  $y = 1.0/(1 + $x/(1 + $x/(1+$x)))
  end
end

print "y = " + $y.to_s, "\n"