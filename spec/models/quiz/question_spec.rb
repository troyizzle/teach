require 'rails_helper'

RSpec.describe Quiz::Question, type: :model do
  describe 'associations' do
    it { should belong_to(:form).class_name('Quiz::Form') }
  end
end
