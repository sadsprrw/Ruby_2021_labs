b = [0]*16
sum_int = 0
sum_ind = 0
(0..15).each { |i|
  b[i] = rand(0.0...100.0)
  if b[i].truncate % 2 == 0
    sum_int += b[i].truncate
    sum_ind += i
  end
}
print b, "\n"
print "1. Integer sum = " + sum_int.to_s, "\n"
print "2. Index sum = " + sum_ind.to_s, "\n"