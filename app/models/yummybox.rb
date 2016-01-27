class Yummybox < ActiveRecord::Base
  monetize :price_cents

  has_attached_file :picture,
    styles: { medium: "800x800>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

end
