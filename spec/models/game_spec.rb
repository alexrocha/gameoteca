require 'rails_helper'

RSpec.describe Game, type: :model do
  it { should have_and_belong_to_many(:publishers) }
  it { should have_and_belong_to_many(:developers) }
  it { should have_and_belong_to_many(:genres) }
  it { should have_and_belong_to_many(:platforms) }
end
