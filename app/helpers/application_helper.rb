module ApplicationHelper
  def profile_pic_url(width, height)
      "https://graph.facebook.com/#{current_user.uid}/picture?width=#{width}&height=#{height}"
  end
end
