class Tag < ActiveRecord::Base
  has_many :hash_joins
  has_many :recipes, through: :hash_joins
end
