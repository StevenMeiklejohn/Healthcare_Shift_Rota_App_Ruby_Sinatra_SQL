
require_relative('../models/employee')
require_relative('../models/shift')


get '/employees/new' do
  #NEW
  erb( :'/employees/new' )
end

get '/employees' do
  #INDEX
  @employees = Employee.all()
  erb ( :'employees/index' )
end

post '/employees' do
  #CREATE
 @employee = Employee.new( params )
 @employee.save()
 redirect to(:'employees')
end

get '/employees/:id' do
  #SHOW
  @employee = Employee.find( params[:id] )
  erb( :'employees/show' )
end

get '/employees/:id/shifts' do
  #SHOW
  @employee = Employee.find( params[:id] )
  @shifts = Shift.all()
  erb( :'employees/show_shifts' )
end


get '/employees/:id/edit' do
  #EDIT
  @employee = Employee.find( params[:id] )
  erb( :'employees/edit' )
end

put '/employees/:id' do
  #UPDATE
 @employee = Employee.update( params )
 redirect to( "/employees/#{params[:id]}" )
end



delete '/employees/:id' do
  #DELETE
  Employee.destroy( params[:id] )
  redirect to('/employees')
end




