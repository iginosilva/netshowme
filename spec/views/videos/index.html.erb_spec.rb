require 'rails_helper'

RSpec.describe "videos/index", type: :view do
  before(:each) do
    assign(:videos, [
      Video.create!(
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :active => false,
        :channel => nil,
        :user => nil
      ),
      Video.create!(
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :active => false,
        :channel => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of videos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
