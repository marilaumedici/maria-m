class Snaker

	 def snakear(aWord)
	     string = aWord
	     current = ""
	     rta = ""
	     cont = 0
             if(string != nil)
	     	while (cont < string.size())
		   	current = string[cont]
		   	if((cont.modulo(2)) == 0)
		      		current = current.capitalize()
		  	end
		   	rta = rta + current  
	           	cont = cont + 1
	     	end
	     end
	     return rta
         end
end


