# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quiz::Form, type: :model do
  describe 'associations' do
    it { should have_many(:questions).class_name('Quiz::Question').dependent(:destroy) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
