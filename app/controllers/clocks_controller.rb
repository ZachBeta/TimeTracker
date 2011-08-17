class ClocksController < ApplicationController
  # GET /clocks
  # GET /clocks.xml
  def index
    @clocks = current_user.clocks.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clocks }
    end
  end

  # GET /clocks/1
  # GET /clocks/1.xml
  def show
    @clock = current_user.clocks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clock }
    end
  end

  # GET /clocks/new
  # GET /clocks/new.xml
  def new
    @clock = current_user.clocks.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clock }
    end
  end

  # GET /clocks/1/edit
  def edit
    @clock = current_user.clocks.find(params[:id])
  end

  # POST /clocks
  # POST /clocks.xml
  def create
    @clock = current_user.clocks.new(params[:clock])

    respond_to do |format|
      if @clock.save
        format.html { redirect_to(@clock, :notice => 'Clock was successfully created.') }
        format.xml  { render :xml => @clock, :status => :created, :location => @clock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clocks/1
  # PUT /clocks/1.xml
  def update
    @clock = current_user.clocks.find(params[:id])

    respond_to do |format|
      if @clock.update_attributes(params[:clock])
        format.html { redirect_to(@clock, :notice => 'Clock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clocks/1
  # DELETE /clocks/1.xml
  def destroy
    @clock = current_user.clocks.find(params[:id])
    @clock.destroy

    respond_to do |format|
      format.html { redirect_to(clocks_url) }
      format.xml  { head :ok }
    end
  end
end

