require 'rails_helper'

RSpec.describe "answers/index", :type => :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :question => nil,
        :text => "Text"
      ),
      Answer.create!(
        :question => nil,
        :text => "Text"
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
