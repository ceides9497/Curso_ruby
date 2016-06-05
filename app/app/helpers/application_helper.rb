module ApplicationHelper
  def get_title(title)
    title.empty? ? "UCBTweet" : "#{title} | UCBTweet"
  end
end
