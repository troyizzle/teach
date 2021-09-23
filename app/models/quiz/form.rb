# frozen_string_literal: true

module Quiz
  class Form < ApplicationRecord
    validates :name, presence: true
  end
end
