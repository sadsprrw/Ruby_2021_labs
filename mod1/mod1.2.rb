#Variant - 8

class Car

  def initialize(id, brand, model, year_of_issue, color, cost, registration_number)
    @id = id
    @brand = brand
    @model = model
    @year_of_issue = year_of_issue
    @color = color
    @cost = cost
    @registration_number = registration_number
  end

  attr_accessor :id, :brand, :model, :floor, :year_of_issue, :color, :cost, :registration_number

  def to_s
    @id.to_s + "_" + @brand.to_s + "_" + @model.to_s + "_" + @year_of_issue.to_s + "_" + @color + \
  "_" + @cost.to_s + "_" + @registration_number.to_s
  end
end

x1 = Car.new(7, "Audi", "Q7", 2007, "Black", 8000, 12345)
x2 = Car.new(23, "Audi", "S8", 2020, "Green", 40000, 55555)
x3 = Car.new(97, "BMW", "X5", 2013, "Blue", 15000, 15645)
x4 = Car.new(17, "Opel", "Loni", 2000, "Red", 2000, 54321)
x = [x1,x2,x3,x4]

print "Enter Brand:\n"
a_brand = gets.chomp.to_s
print "a) \n"
for i in 0..x.size-1 do
  if x[i].brand == a_brand
    puts x[i].to_s, "\n"
  end
end

print "Enter Brand:\n"
b_brand = gets.chomp.to_s
print "Enter exploitation years number:\n"
b_year = gets.chomp.to_f
print "b) \n"
current_year = Time.new.year
for i in 0..x.size-1 do
  if x[i].brand == b_brand
    if current_year - x[i].year_of_issue > b_year
      puts x[i].to_s, "\n"
    end
  end
end

print "Enter year of issue:\n"
c_year = gets.chomp.to_f
print "Enter cost:\n"
c_cost = gets.chomp.to_f
print "c) \n"
for i in 0..x.size-1 do
  if x[i].year_of_issue == c_year
    if x[i].cost > c_cost
      puts x[i].to_s, "\n"
    end
  end
end