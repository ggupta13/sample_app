class Micropost < ActiveRecord::Base
	belongs_to :user2
	default_scope -> { order('created_at DESC') }
	validates :content, presence: true, length: { maximum: 140 }
	validates :user2_id, presence: true
end
