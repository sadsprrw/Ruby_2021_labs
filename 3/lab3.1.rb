$A = true
$B = true
$C = false
$X = 12
$Y = 3
$Z = -2
res = !($A || $B) && ($A && !$B)
print "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾1‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾", "\n"
print "a) Result = " + res.to_s, "\n"
res = (($Z != $Y).object_id <= (6 >= $Y).object_id) && $A || $B && $C && ($X >= 1.5).object_id
print "b) Result = " + res.to_s, "\n"
res = (8 - $X*2 <= $Z) && ($X**2 >= $Y**2) || ($Z >= 15)
print "c) Result = " + res.to_s, "\n"
res = ($X > 0) && ($Y < 0) || ($Z >= ($X*$Y - $Y/$X) - (-$Z))
print "d) Result = " + res.to_s, "\n"
res = !($A || $B && !($C || (!$A || $B)))
print "e) Result = " + res.to_s, "\n"
res = (($X**2 + $Y**2) >= 1) && ($X >= 0) && ($Y >= 0)
print "f) Result = " + res.to_s, "\n"
res = ($A && (($C && $B) != ($B || $A)) || $C) && $B
print "g) Result = " + res.to_s, "\n"
print "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾", "\n"
print "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾2‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾", "\n"
x = 4
p = false
res = (Math.log(x) < x) && !p && (Math.sqrt(x) > x*x) || (2*x == x)
print "Result = " + res.to_s, "\n"
print "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾", "\n"