require 'rails_helper'

describe Product do
  context "when the product has comments" do

    before do
		  #here you put your code to generate test content
		  @product = Product.create!(name: "race bike")
		  @user = User.create!(:email => "email@email.com", :password => "123456")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Great!")
      @product.comments.create!(rating: 3, user: @user, body: "Average bike!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  
    it 'is an invalid product' do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end

  end
end