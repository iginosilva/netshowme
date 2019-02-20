require 'rails_helper'

RSpec.describe "channels/index", type: :view do
  before(:each) do
    assign(:channels, [
      Channel.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :active => false,
        :user => nil
      ),
      Channel.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug",
        :active => false,
        :user => nil
      )
    ])
  end

  it "renders a list of channels" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
