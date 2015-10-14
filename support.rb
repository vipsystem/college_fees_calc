=begin 
Author: Kevin Austin
College Student Fees Calculator
=end

# Calculates tuition (units)
def unit_t(units, resident, tuition_fees)
  if (units < 0 || units > 22)
   raise "Inappropriate number of units entered."
  end
  if (resident == 0)
    tuition_fees += (units * 46.00)
  else (resident == 1)
    tuition_fees += (units * 325.00)
   return tuition_fees
 end
end
# Asks for session term
def session_select(session)
  if (session < 0 || session > 4)
   raise "Inappropriate session number entered."
  end
  if (session == 0)
      session = "Fall"
  elsif (session == 1)
      session = "Winter"
  elsif (session == 2)
      session = "Spring"
  elsif (session == 3)
      session = "Summer"
  return fee_t
  end
end
# Calculates parking decal fee 
def decal_select(session, decal)
  if (decal < 0 || decal > 1)
   raise "Inappropriate number entered for sticker."
  end
  if (session == 0 && decal == 0) || (session == 2 && decal == 0)
     decal_fees = 85
  elsif (session == 1) && (decal == 0) || (session == 3) && (decal == 0)
     decal_fees = 45
  else decal_fees = 0
     return decal_fees
  end
end
# Calculates AS sticker and total fees
def sticker_select(sticker, session)
  if (sticker < 0 || sticker > 1)
   raise "Inappropriate number entered for sticker."
  end
  if (session == 0) && (sticker == 0) || session == 2 && (sticker == 0)
    sticker_fees = 50.50
  elsif (session == 1) && (sticker == 0) || (session == 3) && (sticker == 0)
    sticker_fees = 47.50
  else sticker_fees = 0
  return sticker_fees
  end 
end 
# Calculates ID card and total fees
def id_select(id_card, session)
  if (id_card < 0 || id_card > 1)
   raise "Inappropriate number entered for ID card."
  end
  if (session == 0) && (id_card == 0) || (session == 2) && (id_card == 0)
      id_fees = 19.50
  elsif (session == 1) && (id_card == 0) || (session == 3) && (id_card == 0) 
    id_fees = 13.00
  else id_fees = 0 
  return id_fees
  end
end
