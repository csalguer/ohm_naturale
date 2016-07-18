require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :title => "Title",
        :content => "Content",
        :pic_filename => "Pic Filename",
        :pic_content_type => "Pic Content Type",
        :pic_file_size => 2
      ),
      Blog.create!(
        :title => "Title",
        :content => "Content",
        :pic_filename => "Pic Filename",
        :pic_content_type => "Pic Content Type",
        :pic_file_size => 2
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Pic Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Pic Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
