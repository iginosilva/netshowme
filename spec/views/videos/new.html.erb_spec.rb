require 'rails_helper'

RSpec.describe "videos/new", type: :view do
  before(:each) do
    assign(:video, Video.new(
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :active => false,
      :channel => nil,
      :user => nil
    ))
  end

  it "renders new video form" do
    render

    assert_select "form[action=?][method=?]", videos_path, "post" do

      assert_select "input[name=?]", "video[title]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[url]"

      assert_select "input[name=?]", "video[active]"

      assert_select "input[name=?]", "video[channel_id]"

      assert_select "input[name=?]", "video[user_id]"
    end
  end
end
