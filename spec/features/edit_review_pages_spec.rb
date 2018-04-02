require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    review = Review.create(:author => 'Frodo', :content_body => 'abcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyz', :rating => '3', :product_id => product.id)
    visit edit_product_review_path(product, review)
    fill_in 'Author', :with => 'Samwise'
    click_on 'Update Review'
    expect(page).to have_content 'Samwise'
  end

  it "gives error when no author is entered" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    review = Review.create(:author => 'Frodo', :content_body => 'abcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyz', :rating => '3', :product_id => product.id)
    visit edit_product_review_path(product, review)
    fill_in 'Author', :with => ''
    click_button 'Update Review'
    expect(page).to have_content 'errors'
  end

  it "deletes a review" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    review = Review.create(:author => 'Frodo', :content_body => 'abcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyz', :rating => '3', :product_id => product.id)
    visit product_review_path(product, review)
    click_on 'Delete Review'
    expect(page).not_to have_content 'abcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyz'
  end
end
