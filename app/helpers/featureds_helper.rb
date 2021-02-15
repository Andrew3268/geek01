module FeaturedsHelper
  def render_with_fhashtags(f_hashtag)
    f_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/featureds/fhashtag/#{word.delete('#')}"}.html_safe
  end 
end
