require 'spec_helper'

describe '記事一覧' do
  before do
    FactoryGirl.create_list(:article, 5)
  end

  let(:article){ Article.all.first }

  specify "Content-TypeがJSON" do
    visit articles_path
    expect(page.response_headers['Content-Type']).to include("json")
  end

  specify "title/body/url/imageを表示" do
    visit articles_path
    %w[id title body url image].map{|c| expect(page).to have_content(article.send(c.to_sym)) }
  end
end