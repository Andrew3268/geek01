module SalesHelper
  def render_with_hashtags(s_hashtag)
    s_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/sales/hashtag/#{word.delete('#')}"}.html_safe
  end 
end
