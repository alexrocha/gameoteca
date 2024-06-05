require 'rails_helper'

RSpec.describe Developer, type: :model do
  it { should have_and_belong_to_many(:games) }
end
