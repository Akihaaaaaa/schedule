class Subject < ApplicationRecord
    has_many :comments, dependent: :destroy
    mount_uploader :image, ImageUploader
end
