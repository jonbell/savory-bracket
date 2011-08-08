class TournamentDefinition < ActiveRecord::Base
  has_friendly_id :name, :use_slug => true
  has_many :score_criteria, :dependent => :destroy

  validates :name, :presence => true
  validates :number_of_contestants, :quorum, :numericality => { :only_integer => true, :greater_than => 0}
  validates_associated :score_criteria

  accepts_nested_attributes_for :score_criteria, :allow_destroy => true
end
