class AddArticleToTheme < ActiveRecord::Migration[7.0]
  def change
    add_reference :themes, :article
  end
end
