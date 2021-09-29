require 'rails_helper'

RSpec.describe "Charges", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "three lists on the screen" do
    visit "/charges"
    expect(page).to have_content('Failed Charges')
    expect(page).to have_content('Disputed Charges')
    expect(page).to have_content('Successful Charges')
  end

  it "shows 10 items of successful charges item" do
    visit "/charges"
    expect(page).to have_xpath('//table/tbody[@class="successful-charges"]/tr', count: 10)
  end

  it "shows 5 items of failed charges item" do
    visit "/charges"
    expect(page).to have_xpath('//table/tbody[@class="failed-charges"]/tr', count: 5)
  end

  it "shows 5 items of disputed charges item" do
    visit "/charges"
    expect(page).to have_xpath('//table/tbody[@class="disputed-charges"]/tr', count: 5)
  end
end
