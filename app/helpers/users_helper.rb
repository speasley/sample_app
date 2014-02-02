module UsersHelper
  
  def gravatar_for(user,params)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://www.gravatar.com/avatar/#{gravatar_id}.png?s=#{params[:size]}"
    image_tag(gravatar_url,alt:user.name,class:"gravatar")
  end
  
end
