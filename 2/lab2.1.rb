dots =  [[414,42], [274,45], [190,34], [132,21], [72,54], [56,107], [42,152], [60,221], [108,252], [156,285],
[204,307], [247,304], [296,303], [359,304], [403,303], [452,294], [464,255], [461,223], [460,193], [466,173],
[437,156], [386,146], [348,121], [353,86], [371,75], [410,70], [422,52]]
$sum = 0
for i in 0..dots.size-1 do
  if i == dots.size-1
    $sum += (dots[i][0]+dots[0][0])*(dots[0][1]-dots[i][1])
  else
    $sum += (dots[i][0]+dots[i+1][0])*(dots[i+1][1]-dots[i][1])
  end
end
$sum = $sum.abs/2
print "Result = " + $sum.to_s, "\n"