class Post < ApplicationRecord
	has_many :comments, dependent: :delete_all
	belongs_to :user
	validates_presence_of :title
	validates_presence_of :body
end
