def rules
    @rules = matrix.neighbours.count()
    case @rules 
       #Decidiendo si cada célula vive, revive, muere o se reproduce.
       #Una célula viva viva que tenga menos de 2 vecinas vivos, muere
    when (neighbours.count) >2 == 0
           puts "You are died"
       #Una célula viva con dos o tres vecinas vivas pasa a la siguiente generación, vive
    when  (neighbours.count) => 2 == 1
           puts "You are live"
       #Una célula muerta con tres vecinas vivas, revive
    when (neighbours.count) => 3 == 1
           puts "You are alive"
       #Una célula con más de 3 vecinas vivas, muere
       else (neighbours.count) => 3 == 0
           puts "You are died"
    end
   end
    end
   end


   print "Dime cuántas vecinas vivas tienes "
status = 1
status = live_cells
rules = status.neighbours.count
#case rules 
    #Decidiendo si cada célula vive, revive, muere o se reproduce.
    #Una célula viva viva que tenga menos de 2 vecinas vivos, muere
    if status && neighbours.count >2 == 0
        puts "You are died"
    #Una célula viva con dos o tres vecinas vivas pasa a la siguiente generación, vive
    elsif status && neighbours.count => 2 == 1
    #Una célula muerta con tres vecinas vivas, revive
    elsif status &&neighbours.count => 3 == 1
    #Una célula con más de 3 vecinas vivas, muere
    elsif status && neighbours.count => 3 == 0
   #end
#end
end