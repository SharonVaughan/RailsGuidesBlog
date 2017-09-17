class Article < ApplicationRecord
  validates :title, :text, 
  	presence: true, length: { minimum: 5 }
  # validates :text, presence: true, length: { minimum: 5 }
end