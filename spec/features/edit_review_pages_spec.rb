# require 'rails_helper'
#
# describe "the edit a review process" do
#   it "edits a product" do
#     product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
#     review = Review.create(:author => 'Frodo', :content_body => 'abcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyzabcdefghjklmnopqrstuvwxyz', :rating => '3')
#     visit edit_product_review_path(product, review)
#     click_on 'Edit Review'
#     fill_in 'Author', :with => 'Samwise'
#     click_on 'Update Review'
#     expect(page).to have_content 'Samwise'
#   end
#
#   # it "gives error when no description is entered" do
#   #   product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
#   #   visit product_path(product)
#   #   click_on 'Edit Product'
#   #   fill_in 'Name', :with => ''
#   #   click_button 'Update Product'
#   #   expect(page).to have_content 'errors'
#   # end
#   #
#   # it "deletes a product" do
#   #   product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
#   #   visit product_path(product)
#   #   click_on 'Delete Product'
#   #   expect(page).not_to have_content 'Lambas Bread'
#   # end
# end
