=begin
class Article < ApplicationRecord
end
=end
class Article < ActiveRecord::Base
    has_many :comments
end