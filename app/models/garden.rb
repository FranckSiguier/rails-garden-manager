class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true

  url_regex = url_regex = /(http|https):.*/

  validates :banner_url, format: { with: url_regex, message: "You have to paste a valid URL for the image" }
end
