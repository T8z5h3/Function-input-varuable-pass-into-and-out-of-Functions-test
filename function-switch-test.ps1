#Function,input,varualbe pass into and out of Functions test
#by Nathan Saunders
#july 7th 2022

cls

$keyboardinput = $null

#Function 1

function one {

$keyboardinput = Read-Host "pick a number? (between 1 to 4)" #user selects a number

return $keyboardinput #number from line 13 gets passed to main path (line 45)
}

#Function 2

function two {

Param($keyboardinput) #takes input from line 51 and turns it into $keyboardinput for function 2

#is used to kill the script if any other number then 1,2,3 or 4
if ($keyboardinput -le 0 -or $keyboardinput -ge 5){

cls 
break

}

#used to pick the path then drops to main path witch starts the script over again.

switch ($keyboardinput){

    1 {write-host "It is one."}
    2 {write-host "It is two."}
    3 {write-host "It is three."}
    4 {write-host "It is four."}

}
}


#main body of the script

Do {

$keyboardinput = one #takes input from Function 1 and passes it to $keyboardinput

two -keyboardinput $keyboardinput #starts Function 2 and Passes $keyboardinput into Function 2

    } While ($keyboardinput -ge 1 -and $keyboardinput -le 4) #keeps loop going if $keyboardinput is set to numbers 1,2,3 or 4


    #Reference: https://mcpmag.com/articles/2016/04/07/powershell-functions-with-parameters.aspx