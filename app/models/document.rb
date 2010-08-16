class Document < ActiveRecord::Base
  belongs_to :ticket
  has_attached_file :doc, :url  => "/assets/attachments/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/attachments/:id/:style/:basename.:extension"
  validates_attachment_presence :doc
end
