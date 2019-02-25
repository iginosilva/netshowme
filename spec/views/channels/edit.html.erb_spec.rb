require 'rails_helper'

RSpec.describe "channels/edit", type: :view do
  let(:user) {
    User.create(email: "senhordoteste@email.com", password: "123456", password_confirmation: "123456")
  }

  before(:each) do
    @channel = assign(:channel, Channel.create!(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :active => false,
      :user_id => user.id
    ))
  end

  it "renders the edit channel form" do
    # binding.pry

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
