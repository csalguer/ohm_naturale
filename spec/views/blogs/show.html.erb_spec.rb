require 'rails_helper'

RSpec.describe "blogs/show", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :title => "Title",
      :content => "Content",
      :pic_filename => "Pic Filename",
      :pic_content_type => "Pic Content Type",
      :pic_file_size => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Pic Filename/)
    expect(rendered).to match(/Pic Content Type/)
    expect(rendered).to match(/2/)
  end
end
