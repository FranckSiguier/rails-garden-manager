class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, presence: true, uniqueness: { scope: :garden_id }
  validates :image_url, presence: true

  url_regex = /(http|https):.*/

  validates :image_url, format: { with: url_regex, message: "You have to paste a valid URL for the image" }
end
