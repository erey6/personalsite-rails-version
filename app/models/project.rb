class Project < ApplicationRecord
    has_many :sitelinks, dependent: :destroy
    accepts_nested_attributes_for :sitelinks
end
