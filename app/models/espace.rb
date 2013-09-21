class Espace < ActiveRecord::Base
  has_and_belongs_to_many :ensembles
  
  
  mount_uploader :avatar
  before_save :update_image_attributes
  
  private

  def update_image_attributes
    if self.avatar.present?
      #self.content_type = avatar.file.content_type
      #self.file_size = avatar.file.size
      self.width, self.height = `identify -format "%wx%h" \"#{avatar.file.path}\"`.split(/x/)
      # if you also need to store the original filename:
      # self.original_filename = image.file.filename
    end
  end
 
end
