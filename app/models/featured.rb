class Featured < ApplicationRecord
  is_impressionable
  is_impressionable :counter_cache => true
  
  extend FriendlyId
  friendly_id :f_spare_05, use: :slugged

  has_and_belongs_to_many :tags
  belongs_to :user


  after_create do
    featured = Featured.find_by(id: self.id)
    fhashtags = self.f_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    fhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        featured.tags << tag
    end
  end
  
  before_update do
    featured = Featured.find_by(id: self.id)
    featured.tags.clear
    fhashtags = self.f_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    fhashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        featured.tags << tag
    end
  end


  def self.search_by(search_term)
    where("LOWER(f_title) LIKE :search_term", search_term: "%#{search_term.downcase}%")
  end 

end
