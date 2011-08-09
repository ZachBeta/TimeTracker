class ClockOutsController < ApplicationController
  # GET /clock_outs
  # GET /clock_outs.xml
  def index
    @clock_outs = ClockOut.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clock_outs }
    end
  end

  # GET /clock_outs/1
  # GET /clock_outs/1.xml
  def show
    @clock_out = ClockOut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clock_out }
    end
  end

  # GET /clock_outs/new
  # GET /clock_outs/new.xml
  def new
    @clock_out = ClockOut.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clock_out }
    end
  end

  # GET /clock_outs/1/edit
  def edit
    @clock_out = ClockOut.find(params[:id])
  end

  # POST /clock_outs
  # POST /clock_outs.xml
  def create
    @clock_out = ClockOut.new(params[:clock_out])

    respond_to do |format|
      if @clock_out.save
        format.html { redirect_to(@clock_out, :notice => 'Clock out was successfully created.') }
        format.xml  { render :xml => @clock_out, :status => :created, :location => @clock_out }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clock_out.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clock_outs/1
  # PUT /clock_outs/1.xml
  def update
    @clock_out = ClockOut.find(params[:id])

    respond_to do |format|
      if @clock_out.update_attributes(params[:clock_out])
        format.html { redirect_to(@clock_out, :notice => 'Clock out was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clock_out.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clock_outs/1
  # DELETE /clock_outs/1.xml
  def destroy
    @clock_out = ClockOut.find(params[:id])
    @clock_out.destroy

    respond_to do |format|
      format.html { redirect_to(clock_outs_url) }
      format.xml  { head :ok }
    end
  end
end
