require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    it { should have_many(:reviews) }

    end

    describe "InDirect Associations" do

    it { should have_many(:movie_reviews) }

    it { should have_many(:movie_bookmarks) }

    end

    describe "Validations" do

    end
end
