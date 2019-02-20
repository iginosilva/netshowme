require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :active => false,
      :user => nil
    ))
  end

  it "renders the edit channel form" do
    render

    assert_select "form[action=?][method=?]", channel_path(@channel), "post" do

      assert_select "input[name=?]", "channel[title]"

      assert_select "textarea[name=?]", "channel[description]"

      assert_select "input[name=?]", "channel[slug]"

      assert_select "input[name=?]", "channel[active]"

      assert_select "input[name=?]", "channel[user_id]"
    end
  end
end
