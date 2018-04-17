
# 2. A business called “The Company” created a new phone called the companyPhone
# that needs packing to send away for sale. The Company needs to know how
# many phones in their pretty new packaging (rectangular prisms) that measures:
# with  width 5cm, length 7.4cm, and depth 4cm we can fit into a box that is 32cm wide,
# 43cm long and 22.1cm high.   (think about writing some pseudo code first
# that steps through all the commands you need to write.  Keep it as simple as you can.

#phone : width 5cm, length 7.4cm, depth 4cm

#box : 32cm wide, 43cm long, 22.1cm high.

def how_many_fit(p_width, p_length, p_depth, b_width, b_length, b_depth)
  w = b_width / p_width
  h = b_length / p_length
  d = b_depth / p_depth
  return "the maximum amount of phone able to fit are #{(w * h * d).floor}"
end

puts how_many_fit(5,7.4,4,32,43,22.1)
