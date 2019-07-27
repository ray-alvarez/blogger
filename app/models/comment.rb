=begin
class Comment < ApplicationRecord::Base
  belongs_to :article
end
=end
class Comment < ActiveRecord::Base
  belongs_to :article
end