def text_scrambler
	puts "Enter the text you would like to scramble."
	puts "> "
	
	text_to_scramble = $stdin.gets.chomp!
	
	scrambled_text = text_to_scramble.split(//).sort_by { rand }.join('')
	
	puts scrambled_text
	
	puts "Would you like to scramble another piece of text?"
	
	scramble_again = $stdin.gets.chomp!
	if scramble_again.include? "no"
		puts "Ok, bye!"
		done
	else 
		text_scrambler
	end
end

def done
	puts "Thank you for playing!"
end 

puts "Welcome to the text scrambler."
text_scrambler
