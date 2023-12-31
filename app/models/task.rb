class Task < ApplicationRecord
  belongs_to :user

  validates :task, presence: true
  validates :status, inclusion: { in: %w(TODO DONE), message: "must be either 'TODO' or 'DONE'" }

  scope :public_tasks, -> { includes(:user).where(users: { private: false })}
  scope :todo_tasks, -> { where(status: 'TODO') }
  scope :completed_tasks, -> { where(status: 'DONE') }
end
