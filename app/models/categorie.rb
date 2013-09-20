class Categorie < ActiveRecord::Base
  has_many :items
  has_many :echantillons
  mount_uploader :avatar, AvatarUploader
  after_post_process :save_image_dimensions
  
  def save_image_dimensions
    geo = Paperclip::Geometry.from_file(avatar.queued_for_write[:original])
    self.width = geo.width
    self.height = geo.height
  end
  rails_admin do
  #   # You can copy this to a 'rails_admin do ... end' block inside your item.rb model definition

  #   # Found associations:

  #     configure :categorie, :belongs_to_association 

  #   # Found columns:
        configure :avatar, :paperclip
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :categorie_id, :integer         # Hidden 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  end
  
  private
  # Using a private method to encapsulate the permissible parameters is
  # just a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def avatar_params
    params.require(:avatar).permit(:name, :age)
  end
end
