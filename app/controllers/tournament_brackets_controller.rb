class TournamentBracketsController < ApplicationController
  # GET /tournament_brackets
  # GET /tournament_brackets.xml
  def index
    @tournament_brackets = TournamentBracket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tournament_brackets }
    end
  end

  # GET /tournament_brackets/1
  # GET /tournament_brackets/1.xml
  def show
    @tournament_bracket = TournamentBracket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tournament_bracket }
    end
  end

  # GET /tournament_brackets/new
  # GET /tournament_brackets/new.xml
  def new
    @tournament_bracket = TournamentBracket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tournament_bracket }
    end
  end

  # GET /tournament_brackets/1/edit
  def edit
    @tournament_bracket = TournamentBracket.find(params[:id])
  end

  # POST /tournament_brackets
  # POST /tournament_brackets.xml
  def create
    @tournament_bracket = TournamentBracket.new(params[:tournament_bracket])

    respond_to do |format|
      if @tournament_bracket.save
        format.html { redirect_to(@tournament_bracket, :notice => 'Tournament bracket was successfully created.') }
        format.xml  { render :xml => @tournament_bracket, :status => :created, :location => @tournament_bracket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tournament_bracket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tournament_brackets/1
  # PUT /tournament_brackets/1.xml
  def update
    @tournament_bracket = TournamentBracket.find(params[:id])

    respond_to do |format|
      if @tournament_bracket.update_attributes(params[:tournament_bracket])
        format.html { redirect_to(@tournament_bracket, :notice => 'Tournament bracket was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tournament_bracket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_brackets/1
  # DELETE /tournament_brackets/1.xml
  def destroy
    @tournament_bracket = TournamentBracket.find(params[:id])
    @tournament_bracket.destroy

    respond_to do |format|
      format.html { redirect_to(tournament_brackets_url) }
      format.xml  { head :ok }
    end
  end
end
