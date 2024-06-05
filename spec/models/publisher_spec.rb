require 'rails_helper'

RSpec.describe Publisher, type: :model do
  it { should have_and_belong_to_many(:games) }
end
