class Document < ApplicationRecord

  acts_as_list 

   # Indicate a sort column
  # without_updating_timestamps: true, # If you do NOT want timestamps to be updated on sorting
  # without_validations: true # If you do NOT want validations to be run on sorting
   belongs_to :user
   has_one_attached :file
   validates :file, attached: true, content_type: ['application/pdf']

end
