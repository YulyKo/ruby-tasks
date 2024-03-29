side_a = 10
side_b = 10
side_c = 5

puts "a = #{side_a} || b = #{side_b} || c = #{side_c}"

def calculate_h(side)
  h = side * (Math.sqrt(3) / 2)
end

h__from_a = calculate_h(side_a)
h__from_b = calculate_h(side_b)
h_from_c = calculate_h(side_c)

puts "h from a = #{side_a} || h from b = #{side_b} || h from c = #{side_c}"

def calculate_m(side_a, side_b, side_c)
  m_a = 0.5 * Math.cbrt(2 * side_b**2 + (2 * side_c**2) - side_a**2)
end

median_of_a = calculate_m(side_a, side_b, side_c)
median_of_b = calculate_m(side_b, side_c, side_a)
median_of_c = calculate_m(side_c, side_b, side_a)

puts "m of a = #{median_of_a} || m of b = #{median_of_b} || m of c = #{median_of_c}"

def calculate_l (a, b, c)
  sqrt = Math.sqrt((a * b) * ( a + b + c ) * ( a + b - c ) )
  sum = a + b
  l = sqrt / sum
end

bisector_a = calculate_l(side_a, side_b, side_c)
bisector_b = calculate_l(side_b, side_c, side_a)
bisector_c = calculate_l(side_c, side_b, side_a)

puts "bisector of a = #{bisector_a} || bisector of b = #{bisector_b} || bisector_of c = #{bisector_c}"

def calculating_s(a, b, c)
  p = (a + b + c) / 2
  s = Math.sqrt(p * ( p - a ) * ( p - b ) * ( p - c ))
end

radius_of_the_circle_described = 0.25 * ((side_a * side_b * side_c) / calculating_s(side_a, side_b, side_c))
puts "the radius of the circle described = #{radius_of_the_circle_described}"

radius_of_the_inscribed_circle = calculating_s(side_a, side_b, side_c) / ((side_a + side_b + side_c) / 2)
puts "the radius of the inscribed circle = #{radius_of_the_inscribed_circle}"
