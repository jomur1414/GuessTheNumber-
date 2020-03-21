require 'artii'

#Guess the number code 


def intro()

    
nameArtii = Artii::Base.new


puts(nameArtii.asciify("Number Guessing Game"))

puts ("Welcome to this fabulous number guessing game")

puts ("Please enter your name :  ")


name = gets.chomp


puts(nameArtii.asciify("Hi " + name + "!"))


# puts ("Hi  " + name)

end


def choice()

puts("Please select difficulty between :
    - for very easy press 1
    - for easy press 2
    - for medium press 3
    - for difficult press 4
    - for very difficult press 5
    ")
    difficulty = gets.chomp.to_i

    return difficulty

end


def gameParameterNumber(difficulty)

    if difficulty == 1 
        puts ("The number is between 1 and 10")
      return  numberToGuess = rand(1..10)
    end
    if difficulty == 2 
        puts ("The number is between 1 and 10")
      return  numberToGuess = rand(1..10)
    end
    if difficulty == 3
        puts ("The number is between 1 and 100")
      return  numberToGuess = rand(1..100)
    end
    if difficulty == 4
        puts ("The number is between 1 and 500")
      return  numberToGuess = rand(1..500)
    end
    if difficulty == 5
        puts ("The number is between 1 and 1000")
      return  numberToGuess = rand(1..1000)
    end

end


def gameParameterNumGuess(difficulty)

     x = Float::INFINITY


    if difficulty == 1 
        puts ("You got infinite try, good luck !")
        return  numberOfGuess = x
    end
    if difficulty == 2 
        puts ("You got 5 try, good luck !")
        return  numberOfGuess = 5
    end
    if difficulty == 3 
        puts ("You got 6 try, good luck !")
        return  numberOfGuess = 6
    end
    if difficulty == 4 
        puts ("You got 8 try, good luck !")
        return  numberOfGuess = 8
    end
    if difficulty == 5 
        puts ("You got 9 try, good luck !")
        return  numberOfGuess = 9
    end

end


def gameItSelf(gameParameterNumber, gameParameterNumGuess)

    puts ("Try a number")

    guess = gets.chomp.to_i

    numerOftryByThePlayer = 1

    while guess != gameParameterNumber do

        if  gameParameterNumGuess <= numerOftryByThePlayer
            result = 0
            break
        end
     
        if guess < gameParameterNumber then 
            puts ("Number is bigger than your guess")

        elsif guess > gameParameterNumber then 
            puts ("Number is smaller than your guess")
            
        end

        numerOftryByThePlayer = numerOftryByThePlayer + 1

        guess = gets.chomp.to_i

    end

    if result  == 0
    
        puts ("You have used the maximum number of tries, the number was    " + (gameParameterNumber).to_s)
    else


     puts ("You got it, it take you  "  + (numerOftryByThePlayer).to_s + " tries")

    end
end


def menu()

   
    puts("Please select an option : to play press 1, to leave press 2")

    menuChoice = gets.chomp.to_i

    while menuChoice != 2 do
        diff = choice()

        gameParamNumber = gameParameterNumber(diff)
        gameParamTry = gameParameterNumGuess(diff)

        gameItSelf(gameParamNumber, gameParamTry)

        puts("To play again press 1, to leave press 2")
        menuChoice =  gets.chomp.to_i

    end

    puts("See you next time !")

end


intro()

menu()



