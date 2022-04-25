module ApplicationHelper
  def profile_picture account
    thumb = account.image.attached? ? url_for(account.image) : "default_avatar.png"
    image_tag(thumb, width: 150, class: "profile_pic img-circle")
  end
end
