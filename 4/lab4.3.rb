require 'matrix'

print "Enter n between [3,9]:\n"
$n = gets.chomp.to_i
if $n < 3 || $n > 9
  while $n < 3 || $n > 9
    print "Wrong value for n, please enter value between [3,9]:\n"
    $n = gets.chomp.to_i
  end
end
a = Array.new($n).map!{Array.new($n)}
b = Array.new($n)
x = Array.new($n)
k = 1
for i in 0..$n-1
  for j in 0..$n-1
    if i == j
      a[i][j] = 2.0
    else
      a[i][j] = (k + 2).to_f
    end
  end
  b[i] = (i + 1).to_f
  x[i] = 0.0
end
puts a.map(&:inspect), "\n"

for k in 0..$n-1
  for j in k+1..$n-1
    d = a[j][k] / a[k][k]

    for i in k..$n-1
      a[j][i] = a[j][i] - d * a[k][i]
    end
    b[j] = b[j] - d * b[k]
  end
end

for k in ($n-1).downto(0)
  d = 0
  for j in k..$n-1
    s = a[k][j] * x[j]
    d = d + s
  end
  x[k] = (b[k] - d) / a[k][k]
end

# for k in 0..$n-2
#   akk = a[k][k]
#   for j in k..$n-1
#     a[k][j] = a[k][j] / akk
#   end
#   b[k] = b[k]/akk
#   g = k + 1
#   for i in g..$n-1
#     for j in g..$n-1
#       a[i][j] = a[i][j] - a[i][k]*a[k][j]
#     end
#     b[i] = b[i] - a[i][k] * b[k]
#   end
# end
#
# x[$n-1] = b[$n-1] / a[$n-1][$n-1]
#
# for k in ($n-2).downto(0)
#   x[k] = b[k]
#   for m in ($n-2).downto(k)
#     x[k] = x[k] - a[k][m+1] * x[m+1]
#   end
# end

puts x, "\n"
puts