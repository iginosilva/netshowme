require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :active => false,
      :user => nil
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do

      assert_select "input[name=?]", "channel[title]"

      assert_select "textarea[name=?]", "channel[description]"

      assert_select "input[name=?]", "channel[slug]"

      assert_select "input[name=?]", "channel[active]"

      assert_select "input[name=?]", "channel[user_id]"
    end
  end
end
