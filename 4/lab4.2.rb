a = Array.new(8).map!{Array.new(8)}

for i in 0..7
  for j in 0..7
    if i == j
      a[i][j] = 1
    else
      a[i][j] = rand(10)
    end
  end
end

def transpose(array)
  _array = array.dup
  array = [].tap do |a|
    _array.size.times{|t| a << [] }
  end
  _array.each_with_index do |row, row_index|
    row.each_with_index do |column, col_index|
      array[row_index][col_index] = _array[col_index][row_index]
    end
  end
  array
end
print " a = \n"
puts a.map(&:inspect), "\n"
print "3. Transpose a = \n"
puts transpose(a).map(&:inspect), "\n"
