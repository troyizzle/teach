# frozen_string_literal: true

module Quiz
  class Form < ApplicationRecord
    has_many :questions, dependent: :destroy

    validates :name, presence: true
  end
end
