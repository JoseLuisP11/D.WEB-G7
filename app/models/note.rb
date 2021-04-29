require './app/models/application_record'

class Note < ApplicationRecord
    belongs_to :user
    has_one_attached :image
end
