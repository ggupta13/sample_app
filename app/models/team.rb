class Team < ActiveRecord::Base
	has_many :user2
	validates :team_name, presence: true, uniqueness: { case_sensitive: false }
end
