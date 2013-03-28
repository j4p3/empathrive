# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string(255)
#  description :string(255)
#  media_url   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Experience < ActiveRecord::Base
	attr_accessible :description, :media_url, :title
	belongs_to :user

	validates :user_id, presence: true
	validates :title, presence: true, length: { maximum: 140 }
	validates :description, presence: true
end
