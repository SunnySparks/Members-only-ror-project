class Post < ApplicationRecord
    belongs_to :user, :optional => false
end
