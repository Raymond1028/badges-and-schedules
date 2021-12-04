# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

# put bbadge maker info into an array
def batch_badge_creator(names)
  badges = Array.new
  # make sure data is in
  #right place, error:the arraycwas being emptied on every iteration
  names.each do |name|
    badges << badge_maker(name)
  end
  #don't use return. It ends the function
  #puts badges
  return badges
end

def assign_rooms(names)
  room_count = 0
  room_assign = Array.new
  names.each_with_index do |name,index|# names.ech
    #room_count += 1
    room_assign << "Hello, #{name}! You'll be assigned to room #{index + 
    1}!" #room_count
    #room_count +=1
  end
  return room_assign
end

# def printer
# print batch_badge_creaor(names)
# print assign_rooms(names)
# end

def printer(names)
  batch_badge_creator(names).each do |badge|
    puts badge
  end
  assign_rooms(names).each do |assignment|
    puts assignment
  end
end
