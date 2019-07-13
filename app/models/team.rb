class Team < ActiveRecord::Base
  has_many :heroes

  def heroes
    Heroe.where("team_id = ?", self.id)
  end

end 