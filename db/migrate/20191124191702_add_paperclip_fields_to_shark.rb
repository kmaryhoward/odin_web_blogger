class AddPaperclipFieldsToShark < ActiveRecord::Migration[5.2]
  def change
    add_column :sharks, :image_file_name,    :string
    add_column :sharks, :image_content_type, :string
    add_column :sharks, :image_file_size,    :integer
    add_column :sharks, :image_updated_at,   :datetime	  
  end
end
