require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit product_path(product)
    click_link 'Write a Review'
    fill_in 'Author', :with => 'Frodo'
    fill_in 'Content body', :with => 'This food is OK but could use a little more pizzazz'
    fill_in 'Rating', :with => 4
    click_on 'Create Review'
    expect(page).to have_content 'Frodo'
  end

  it "gives error when form is not filled out" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit new_product_review_path(product)
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end

  it "gives error when rating is out of range" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit new_product_review_path(product)
    fill_in 'Author', :with => 'Frodo'
    fill_in 'Content body', :with => 'This food is OK but could use a little more pizzazz'
    fill_in 'Rating', :with => 7
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
