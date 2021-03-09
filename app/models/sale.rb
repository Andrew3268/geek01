class Sale < ApplicationRecord

  extend FriendlyId
  friendly_id :s_spare_01, use: :slugged

  has_and_belongs_to_many :tags
  belongs_to :user

  validates :s_is_price, presence: true
  validates :s_was_price, presence: true

  after_create do
    sale = Sale.find_by(id: self.id)
    hashtags = self.s_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        sale.tags << tag
    end
  end
  
  before_update do
    sale = Sale.find_by(id: self.id)
    sale.tags.clear
    hashtags = self.s_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
    hashtags.uniq.map do |hashtag|
        tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
        sale.tags << tag
    end
  end
  
end
