class Battle
  attr_accessor :damage :hp

  def hp
    @maxhp - @damage
  end

  def select
    select = gets.to_i
    if select == 1
      puts "you used #{skills[1]}"
    elsif select == 2
      puts "you used #{skills[2]}"
    elsif select == 3
      puts "you used #{skills[3]}"
    else
      puts "please select an action"
      select = gets.to_i
    end
    
  end
end