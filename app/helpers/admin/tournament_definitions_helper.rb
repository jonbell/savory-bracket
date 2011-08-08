module Admin::TournamentDefinitionsHelper
  def cancel_link
    text = @tournament_definition.new_record? ? 'Cancel' : 'Back'
    link_to text, admin_tournament_definitions_path
  end
end
