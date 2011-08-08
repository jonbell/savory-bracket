class Admin::TournamentDefinitionsController < InheritedResources::Base
  layout Proc.new { |controller| controller.request.xhr? ? false : 'admin' }

  def create
    create! do
      return redirect_to admin_tournament_definitions_path
    end
  end

  def show
    redirect_to edit_admin_tournament_definition_path(resource)
  end
end
