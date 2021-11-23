$x_left_bound = 0.1
$x_right_bound = 1.0
$n_left_bound = 16
$n_right_bound = 58

def series_sum(x, n)
  if x < $x_left_bound || x > $x_right_bound
    raise "x is out of bounds"
  end
  sum = 0
  if n >= $n_left_bound && n <= $n_right_bound
    (0..n).each do |i|
      sum += yield(x, i)
    end
  else
    e = 0.001
    fault = e + 1
    prev_sum = sum
    i = 0
    while fault > e
      sum += yield(x, i)
      i += 1
      fault = (prev_sum - sum).abs
      prev_sum = sum
    end
  end

  sum
end

def factorial(x)
  f = 1
  (1..x).each { |i|
    f *= i
  }
  f
end

def f1(x, i)
  (-1)**i * (2*i**2 + 1)/factorial(2*i)
end

res = series_sum(0.1, 1) {|x, i| f1(x, i)}
print "Sum result = " + res.to_s, "\n"