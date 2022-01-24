class Project < ApplicationRecord
    has_many :sitelinks, dependent: :destroy
    has_one_attached :image
    accepts_nested_attributes_for :sitelinks
    
end
