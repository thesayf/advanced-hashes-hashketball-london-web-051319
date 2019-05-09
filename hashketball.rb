def game_hash
{
  :home => {:team_name => "Brooklyn Nets",
            :colors => ["Black", "White"], 
            :players => {
              "Alan Anderson" => {
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1,
              },
              "Reggie Evans" => {
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7,
              },
              "Brook Lopez" => {
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15,
              },
              "Mason Plumlee" => {
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 12,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5,
              },
              "Jason Terry" => {
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1,
              },
      
            }},
  :away => {:team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"], 
            :players => {
              "Jeff Adrien" => {
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2,
              },
              "Bismack Biyombo" => {
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 7,
                :blocks => 15,
                :slam_dunks => 10,
              },
              "DeSagna Diop" => {
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5,
              },
              "Ben Gordon" => {
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0,
              },
              "Brendan Haywood" => {
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 22,
                :blocks => 5,
                :slam_dunks => 12,
              },
      
            }},
}
end

def num_points_scored(name)
game_hash[:home][:players].keys.each do |named|
if name == named
return game_hash[:home][:players][name][:points]
end 
game_hash[:away][:players].keys.each do |named|
if name == named
return game_hash[:away][:players][name][:points]
end
end
end
end 

  def team_colors(team_name)
  if team_name == game_hash[:home][:team_name]
  return game_hash[:home][:colors]
  end 
  if team_name == game_hash[:away][:team_name]
  return game_hash[:away][:colors]
  end
  end
  
  def shoe_size(name)
  game_hash[:home][:players].keys.each do |named|
  if name == named
  return game_hash[:home][:players][name][:shoe]
  end 
  game_hash[:away][:players].keys.each do |named|
  if name == named
  return game_hash[:away][:players][name][:shoe]
  end
  end
  # game_hash[:away][:players].keys
  end
  end


 def player_numbers(team_name)
  if team_name == game_hash[:home][:team_name]
  return game_hash[:home][:colors]
  end 
  if team_name == game_hash[:away][:team_name]
  return game_hash[:away][:colors]
  end
  end


def player_numbers(team)
home_players = game_hash[:home][:players].keys 
away_players = game_hash[:away][:players].keys

final_h = home_players.collect do |player|
game_hash[:home][:players][player][:number]
end

final_a = away_players.collect do |player|
game_hash[:away][:players][player][:number]
end

team == game_hash[:home][:team_name] ? final_h : final_a

end

 def player_stats(name)
  game_hash[:home][:players].keys.each do |named|
  if name == named
  return game_hash[:home][:players][name]
  end 
  game_hash[:away][:players].keys.each do |named|
  if name == named
  return game_hash[:away][:players][name]
  end
  end
  # game_hash[:away][:players].keys
  end
  end
  
  def big_shoe_rebounds
  biggest = 0
  rebounds = 0
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      size = player[:shoe]
      if size > biggest
        biggest = size
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end



