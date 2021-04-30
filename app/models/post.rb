class Post < ApplicationRecord
  # is_impressionable :counter_cache => true
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :user
end
