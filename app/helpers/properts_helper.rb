module PropertsHelper
  def propert_thumbnail propert
    img = propert.photo.attached? ? url_for(propert.photo) : "placeholder.png"
    image_tag(img, class: "property-thumb")
  end

  def propert_thumbnail_url propert
    img = propert.photo.attached? ? url_for(propert.photo) : "placeholder.png"
  end

  def propert_photo_url propert
    img = propert.photo.attached? ? url_for(propert.photo) : 'placeholder.png'
  end
end
