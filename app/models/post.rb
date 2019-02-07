class Post < ApplicationRecord
  enum issue_type: [:issue,:enhancement,:feature]
  enum priority: [:low,:medium,:high]
  enum status: [:open,:closed,:monitor]

  # presence: parameter means "gotta be filled"
  validates :title, presence: true, length: {minimum:5, maximum: 400}

  belongs_to :user
end
