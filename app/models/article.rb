class Article < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  belongs_to :category , :foreign_key => :category_id

  has_many :tags
  has_many :comments , -> { order(id: :desc)}

  def photo_thumb
    photo.url(:thumb)
  end

  def photo_medium
    photo.url(:medium)
  end

  before_save do
    self.short = Nokogiri::HTML(self.content).text[0,255]
  end

  before_update do
    self.short = Nokogiri::HTML(self.content).text[0,255]
  end

end
