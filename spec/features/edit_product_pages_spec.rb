require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit edit_product_path(product)
    fill_in 'Name', :with => 'Elvish Power Bar'
    click_on 'Update Product'
    expect(page).to have_content 'Elvish Power Bar'
  end

  it "gives error when no description is entered" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit edit_product_path(product)
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'errors'
  end

  it "deletes a product" do
    product = Product.create(:name => 'Lambas Bread', :cost => '10.00', :origin => 'Lorien')
    visit product_path(product)
    click_button 'Delete Product'
    expect(page).not_to have_content 'Ever since'
  end
end
