=begin 
Author: Kevin Austin
College Student Fees Calculator
=end

require_relative 'support'

prompt = ">> "
puts "ABC Fee Calculator"

  # Asks for number of units enrolled
begin  
  print "Enter number of units enrolled: ", prompt
  units = gets.chomp.to_i
rescue
  puts "Oops! You must enter a valid number of units! Please try again."
end
  # Asks for the session term
begin
  print "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session: ", prompt
  session = gets.chomp.to_i
rescue
  puts "Oops! You must enter a valid session number![0-3] Please try again."
end
  # Asks whether one is a state resident or not
begin
  print "Are you a state resident[0] or not[1]: ", prompt
  resident = gets.chomp.to_i
rescue
  puts "Oops! You must enter a valid resident number! Please try again."
end
  # Asks if one wants a parking decal
begin
  print "Want a parking decal? yes[0] or no[1]: ", prompt
  decal = gets.chomp.to_i
rescue 
  puts "Oops! You must enter a valid decal number! Please try again."
end
  # Asks if one wants a AS sticker
begin
  print "Want an AS sticker? yes[0] or no[1]: ", prompt
  sticker = gets.chomp.to_i
rescue
  puts "Oops! You must enter a valid sticker number! Please try again."
end
  # Asks if one wants an ID card
begin
  print "Want an ID card? yes[0] or no[1]: ", prompt
  id_card = gets.chomp.to_i
rescue
  puts "Oops! You must enter a valid ID card number! Please try again."
end
  # Calculates total fees
  tuition_fees = 0
  decal_fees = 0
  sticker_fees = 0
  id_fees = 0
  tuition_fees = unit_t(units, resident, tuition_fees) 
  misc_fees = decal_select(session, decal) + sticker_select(sticker, session) + id_select(id_card, session)
  session = session_select(session)
  fee_t = tuition_fees + misc_fees 
  fee_t = '%.2f' % fee_t
  print "For ", session, " session, your total fees are $ ", fee_t, "\n" 
  puts "Thank you for trying the ABC Fees Calculator! \n"


