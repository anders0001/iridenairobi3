class Blogpost < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end