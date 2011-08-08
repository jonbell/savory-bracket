class ScoreCriterium < ActiveRecord::Base
  belongs_to :tournament_definition
  validates :name, :presence => true
  validates :weight, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 1 }
end
