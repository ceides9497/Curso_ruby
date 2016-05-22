module ApplicationHelper
  def get_title(title)
    if(title.empty?)
      "UCBTweet"
    else
    "#{title}" | UCBTweet
  end
  end

end
