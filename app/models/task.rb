class Task < ApplicationRecord
  belongs_to :user

  validates :task, presence: true
  validates :status, inclusion: { in: %w(todo done), message: "must be either 'todo' or 'done'" }
end
