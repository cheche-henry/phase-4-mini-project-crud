# app/models/spice.rb

class Spice < ApplicationRecord
    attribute :title, :string
    attribute :image, :string
    attribute :description, :text
    attribute :notes, :string
    attribute :rating, :float
  end
  