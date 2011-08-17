class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.xml
  def index
    @tasks = current_user.tasks.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    @task = current_user.tasks.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @task = current_user.tasks.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = current_user.tasks.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = current_user.tasks.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to(task_start_url(@task), :notice => 'Task was successfully created.') }
        format.xml  { render :xml => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    @task = current_user.tasks.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to(@task, :notice => 'Task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to(tasks_url) }
      format.xml  { head :ok }
    end
  end

  def start
    #close clock
    @tasks = current_user.tasks.all
    @tasks.each do |task|
      unless(task.clocks.where(:clock_out => nil).first.nil?)
        task.clocks.where(:clock_out => nil).first.update_attribute :clock_out, Time.now
      end
    end

    #open clock
    @task = current_user.tasks.find(params[:task_id])
    @clock = @task.clocks.new
    @clock.attributes = {:clock_in => Time.now, :clock_out => nil}
    @clock.save

    respond_to do |format|
      format.html { redirect_to(tasks_url) }
      format.xml  { head :ok }
    end
  end
end

