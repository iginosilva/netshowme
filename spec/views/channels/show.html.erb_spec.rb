require 'rails_helper'

RSpec.describe "channels/show", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :title => "Title",
      :description => "MyText",
      :slug => "Slug",
      :active => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
