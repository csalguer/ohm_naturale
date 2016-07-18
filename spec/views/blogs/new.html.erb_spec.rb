require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :title => "MyString",
      :content => "MyString",
      :pic_filename => "MyString",
      :pic_content_type => "MyString",
      :pic_file_size => 1
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "input#blog_title[name=?]", "blog[title]"

      assert_select "input#blog_content[name=?]", "blog[content]"

      assert_select "input#blog_pic_filename[name=?]", "blog[pic_filename]"

      assert_select "input#blog_pic_content_type[name=?]", "blog[pic_content_type]"

      assert_select "input#blog_pic_file_size[name=?]", "blog[pic_file_size]"
    end
  end
end
