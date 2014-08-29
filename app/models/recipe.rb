class Recipe < ActiveRecord::Base
  belongs_to :contributor
  has_many :hash_joins
  has_many :tags, through: :hash_joins
end
