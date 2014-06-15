class Blog < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name
  validates_presence_of :name, :content
  validates :name, uniqueness: true
end
