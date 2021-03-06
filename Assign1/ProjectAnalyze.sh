#!/bin/bash

clear
echo '
                 ___     //  ___      ___      _   __      ___       __  ___  ___          ___      __      ___         ( )  ___      ___    __  ___    /_  /    
  //  / /  / / //___) ) // //   ) ) //   ) ) // ) )  ) ) //___) )     / /   //   ) )     //   ) ) //  ) ) //   ) )     / / //___) ) //   ) )  / /        / /     
 //  / /  / / //       // //       //   / / // / /  / / //           / /   //   / /     //___/ / //      //   / /     / / //       //        / /        / /      
((__( (__/ / ((____   // ((____   ((___/ / // / /  / / ((____       / /   ((___/ /     //       //      ((___/ / ((  / / ((____   ((____    / /        / /     '

echo "What is your name?"
FS=":" read -p "enter your name " \VAR1 
            
echo "Hi $VAR1, you are currently here: $(pwd) and here are your files in your current directory: $(ls -l)" 
echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
"
echo "Would you like to continue, $VAR1?"
FS=":" read -p "Enter yes or no " \VAR2
if [ $VAR2 = "yes" ] 
	then
		echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
"
		echo "Would you like to check your git status?"
else
	echo "
 _______  ___   _  _______  __   __    _______  __   __  _______   
|       ||   | | ||   _   ||  | |  |  |  _    ||  | |  ||       |  
|   _   ||   |_| ||  |_|  ||  |_|  |  | |_|   ||  |_|  ||    ___|  
|  | |  ||      _||       ||       |  |       ||       ||   |___   
|  |_|  ||     |_ |       ||_     _|  |  _   | |_     _||    ___|  
|       ||    _  ||   _   |  |   |    | |_|   |  |   |  |   |___   
|_______||___| |_||__| |__|  |___|    |_______|  |___|  |_______|  "
	exit
fi
FS=":" read -p "Enter yes or no " \VAR3 

if [ $VAR3 = "yes" ]
	then
	echo '             ___   ___                                                                     
    //   ) )    / / /__  ___/       //   ) ) /__  ___/ // | |  /__  ___/ //   / / //   ) ) 
   //          / /    / /          ((          / /    //__| |    / /    //   / / ((        
  //  ____    / /    / /             \\       / /    / ___  |   / /    //   / /    \\      
 //    / /   / /    / /                ) )   / /    //    | |  / /    //   / /       ) )   
((____/ / __/ /___ / /          ((___ / /   / /    //     | | / /    ((___/ / ((___ / /    ' 
	git status
fi
echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
"

echo "Now, you can search for a bash command with brief description of its function"
FS=":" read -p "Enter command " \VAR33
grep "$VAR33" bash 
	
echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
"
echo "Put all uncommited changes into changes.log"
FS=":" read -p "Enter yes or no " \VAR4

if [ $VAR4 = "yes" ]
        then
	rm changes.log
	echo " 
       _                                 _              
      | |                               | |             
  __  | |     __,   _  _    __,  _   ,  | |  __   __,   
 /    |/ \   /  |  / |/ |  /  | |/  / \_|/  /  \_/  |   
 \___/|   |_/\_/|_/  |  |_/\_/|/|__/ \/o|__/\__/ \_/|/  
                             /|                    /|   
                             \|                    \|  "
	git diff >>  changes.log
	
fi
echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
"
echo "Put each line from every file of your project with the tag #TODO into todo.log?"

FS=":" read -p "Enter yes or no " \VAR5

if [ $VAR5 = "yes" ]
        then
	rm todo.log
	echo "
                      _              
             |       | |             
 _|_  __   __|   __  | |  __   __,   
  |  /  \_/  |  /  \_|/  /  \_/  |   
  |_/\__/ \_/|_/\__/o|__/\__/ \_/|/  
                                /|   
                                \|   "
	grep "#TODO" . -R  >> todo.log
fi
echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
 
 "
echo "Put all haskell errors into file error.log?" 

FS=":" read -p "Enter yes or no " \VAR6

if [ $VAR6 = "yes" ]
	then
	rm error.log
	echo "
                              _              
                             | |             
  _   ,_    ,_    __   ,_    | |  __   __,   
 |/  /  |  /  |  /  \_/  |   |/  /  \_/  |   
 |__/   |_/   |_/\__/    |_/o|__/\__/ \_/|/  
                                        /|   
                                        \|   "
	find . -name "*.hs" -exec ghc -fno-code {} \; &>> error.log 
fi
echo "
(\__/) || 
(•ㅅ•) || 
/ 　 づ  "
echo "Great! Now would you like to veiw error.log, todo.log, or changes.log"
FS=":" read -p "Enter todo, error, changes, or no " \VAR7
line='wc -l todo.log'
lines='wc -l error.log'
liness='wc -l changes.log'

if [ $VAR7 = "todo" ]
	then
	vim todo.log
	echo "quick fact: number or lines in todo.log is:" 
	$line
elif [ $VAR7 = "error" ]
	then
	vim error.log
	echo "quick fact: number or lines in error.log is:" 
	$lines
elif [ $VAR7 = "changes" ]
	then 
	vim changes.log
	echo "quick fact: number or lines in changes.log is:"
	$liness
fi

echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
 
 "
echo "Would you like to find specific words in your current files?"
FS=":" read -p "Enter yes or no " \VAR8

if [ $VAR8 = "yes" ]
then 
	echo "type a key word or number you would like to find in your files:"
else 
	exit
fi	
FS=":" read -p "type.." \VAR21
rm file
grep "$VAR21" . -R >> file
vim file

echo "
  ____________________________________________________________________________________________________________________________________________________________________________________________
  __)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)__)
 
 "

echo "would you like to add and commmit these changes to git?"
FS=":" read -p "Enter yes or no " \VAR12

if [ $VAR12 = "yes" ]
then
        git add .
else
echo "Thanks for using Project 1"
echo "
 _______  ___   _  _______  __   __    _______  __   __  _______   
|       ||   | | ||   _   ||  | |  |  |  _    ||  | |  ||       |  
|   _   ||   |_| ||  |_|  ||  |_|  |  | |_|   ||  |_|  ||    ___|  
|  | |  ||      _||       ||       |  |       ||       ||   |___   
|  |_|  ||     |_ |       ||_     _|  |  _   | |_     _||    ___|  
|       ||    _  ||   _   |  |   |    | |_|   |  |   |  |   |___   
|_______||___| |_||__| |__|  |___|    |_______|  |___|  |_______|  "
exit
fi
echo "what would you like your commit message to be?"
FS=":" read -p "Enter your message " \VAR11

git commit -m "$VAR11"

echo "type 'push' to push these changes to git"

FS=":" read -p "Enter 'push' or 'no' " \VAR15

if [ $VAR15 = "push" ]
then
        git push
else
	echo "Thanks for using Project 1"
echo "
 _______  ___   _  _______  __   __    _______  __   __  _______   
|       ||   | | ||   _   ||  | |  |  |  _    ||  | |  ||       |  
|   _   ||   |_| ||  |_|  ||  |_|  |  | |_|   ||  |_|  ||    ___|  
|  | |  ||      _||       ||       |  |       ||       ||   |___   
|  |_|  ||     |_ |       ||_     _|  |  _   | |_     _||    ___|  
|       ||    _  ||   _   |  |   |    | |_|   |  |   |  |   |___   
|_______||___| |_||__| |__|  |___|    |_______|  |___|  |_______|  "
        exit
fi
echo "Thanks for using Project 1"
echo "
 _______  ___   _  _______  __   __    _______  __   __  _______   
|       ||   | | ||   _   ||  | |  |  |  _    ||  | |  ||       |  
|   _   ||   |_| ||  |_|  ||  |_|  |  | |_|   ||  |_|  ||    ___|  
|  | |  ||      _||       ||       |  |       ||       ||   |___   
|  |_|  ||     |_ |       ||_     _|  |  _   | |_     _||    ___|  
|       ||    _  ||   _   |  |   |    | |_|   |  |   |  |   |___   
|_______||___| |_||__| |__|  |___|    |_______|  |___|  |_______|  "
