def prm(a, b, n, dx=(b-a)/n)
  x = a + dx/2
  res = 0
  (1..n).each do
    y = yield(x)
    res += dx * y
    x += dx
  end
  res
end

def trp(a, b, n, dx=(b-a)/n)
  x = a + dx
  res = dx*(yield(a)/2)
  loop do
    y = yield(x)
    res += dx * y
    x += dx
    break if x > b
  end
  res - dx*(yield(b)/2)
end

def f1(x)
  Math.sqrt(2**x - 1)
end

def f2(x)
  Math.asin(Math.sqrt(x))/Math.sqrt(x*(1-x))
end

res = prm(0.3, 1.0, 100000.0) {|x| f1(x)}
print "(prm)f1 result = " + res.to_s, "\n"
res = trp(0.3, 1.0, 100000.0) {|x| f1(x)}
print "(trp)f1 result = " + res.to_s, "\n"
res = prm(0.2, 0.3, 100000.0) {|x| f2(x)}
print "(prm)f2 result = " + res.to_s, "\n"
res = trp(0.2, 0.3, 100000.0) {|x| f2(x)}
print "(trp)f2 result = " + res.to_s, "\n"