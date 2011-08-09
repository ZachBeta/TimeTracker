class ClockInsController < ApplicationController
  # GET /clock_ins
  # GET /clock_ins.xml
  def index
    @clock_ins = ClockIn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clock_ins }
    end
  end

  # GET /clock_ins/1
  # GET /clock_ins/1.xml
  def show
    @clock_in = ClockIn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clock_in }
    end
  end

  # GET /clock_ins/new
  # GET /clock_ins/new.xml
  def new
    @clock_in = ClockIn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clock_in }
    end
  end

  # GET /clock_ins/1/edit
  def edit
    @clock_in = ClockIn.find(params[:id])
  end

  # POST /clock_ins
  # POST /clock_ins.xml
  def create
    @clock_in = ClockIn.new(params[:clock_in])

    respond_to do |format|
      if @clock_in.save
        format.html { redirect_to(@clock_in, :notice => 'Clock in was successfully created.') }
        format.xml  { render :xml => @clock_in, :status => :created, :location => @clock_in }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clock_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clock_ins/1
  # PUT /clock_ins/1.xml
  def update
    @clock_in = ClockIn.find(params[:id])

    respond_to do |format|
      if @clock_in.update_attributes(params[:clock_in])
        format.html { redirect_to(@clock_in, :notice => 'Clock in was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clock_in.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clock_ins/1
  # DELETE /clock_ins/1.xml
  def destroy
    @clock_in = ClockIn.find(params[:id])
    @clock_in.destroy

    respond_to do |format|
      format.html { redirect_to(clock_ins_url) }
      format.xml  { head :ok }
    end
  end
end
