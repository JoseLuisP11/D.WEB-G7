require './app/models/application_record'

class Note < ApplicationRecord
    has_one_attached :image
end
