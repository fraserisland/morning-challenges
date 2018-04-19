# The Company is currently wanting to produce another 500 units of product sku 276834,
# which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood
# to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm.
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

#work out how many lamps fit side by side per sheet.
# x =  (how many lamps fit) * (1 lamp area)
# x - (plywood sheet.)


def lamps_fit(plywood_width, plywood_height, lamp_diameter, lamps)

  ply_area = (plywood_width)*(plywood_height)

  lamp_r = (lamp_diameter/2)

  lamp_area = (Math::PI * lamp_r * lamp_r)

  lamp_per_ply = (plywood_height/lamp_diameter).floor

  lamp_per_ply*= (plywood_width/lamp_diameter).floor

  total_ply_board_needed = (lamps / lamp_per_ply).floor

  excess = (total_ply_board_needed * ply_area) - (lamps * lamp_area)

puts lamp_per_ply
puts ply_area

  return "The total amount of boards needed for #{lamps} lamps is #{total_ply_board_needed}, and the total amount
   of plywood excess will be #{(excess.round(2))}mm²."
end

puts lamps_fit(2400, 1200, 320, 500)
