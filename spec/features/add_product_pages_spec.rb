require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Lambas Bread'
    fill_in 'Cost', :with => '10.00'
    fill_in 'Origin', :with => 'Lorien'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when form is not filled out" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
