class Post < ApplicationRecord
    validates :title, presence: true 
    before_validation :ensure_title_has_value

    private
    def ensure_title_has_value
      if title.nil?
        self.title = body unless body.blank?
      end
    end
end