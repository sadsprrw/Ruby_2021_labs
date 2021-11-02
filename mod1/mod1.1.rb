#Variant - 8
print "Enter x begin:\n"
xb = gets.chomp.to_f
print "Enter x end:\n"
xe = gets.chomp.to_f

print "Enter a,b,c:\n"
$a = gets.chomp.to_f
$b = gets.chomp.to_f
$c = gets.chomp.to_f

print "Enter dx:\n"
dx = gets.chomp.to_f


def func(dxk)
  if $c < 0 && $a != 0
    -$a*dxk**2
  else
    if $c > 0 && $a == 0
    ($a-dxk)/$c*dxk
    else
      dxk/$c
    end
  end
end

if($a.truncate ^ $b.truncate) & ~($a.truncate & $c.truncate) != 0
  $a = $a.truncate
  $b = $b.truncate
end

(xb..xe).step(dx).each do |i|
  puts func(i)
end