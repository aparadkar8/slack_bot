class Incident < ApplicationRecord
  validates :title, presence: true
  validates :severity, inclusion: { in: %w(sev0 sev1 sev2)}
end
