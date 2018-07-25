class Article < ApplicationRecord
	belongs_to :user ,optional: true
	belongs_to :categorie ,optional: true
	has_many :likes
	has_many :commentaires
end
