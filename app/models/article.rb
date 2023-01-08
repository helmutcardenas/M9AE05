class Article < ApplicationRecord
  has_one_attached :photo do |attachable|
    attachable.variant :thumb, resize_to_limit: [2500, 2500]
    attachable.variant :index, resize_to_fill: [500, 500]
  end

  has_one_attached :documento
  has_many_attached :images
end
