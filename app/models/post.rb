class Post < ApplicationRecord
  has_paper_trail
  before_save :strip_html_symbols

  def strip_html_symbols
    self.content = ActionView::Base.full_sanitizer.sanitize(self.content).html_safe
  end
end
