class Job < ApplicationRecord
  belongs_to :consultant
  belongs_to :client
end
