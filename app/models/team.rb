class Team < ActiveRecord::Base
	has_and_belongs_to_many :user2s
	validates :team_name, presence: true, uniqueness: { case_sensitive: false }
end
