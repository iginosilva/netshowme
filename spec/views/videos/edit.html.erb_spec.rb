require 'rails_helper'

RSpec.describe "videos/edit", type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :active => false,
      :channel => nil,
      :user => nil
    ))
  end

  it "renders the edit video form" do
    render

    assert_select "form[action=?][method=?]", video_path(@video), "post" do

      assert_select "input[name=?]", "video[title]"

      assert_select "textarea[name=?]", "video[description]"

      assert_select "input[name=?]", "video[url]"

      assert_select "input[name=?]", "video[active]"

      assert_select "input[name=?]", "video[channel_id]"

      assert_select "input[name=?]", "video[user_id]"
    end
  end
end
