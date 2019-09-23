program task1
        real:: x, f
        read*, x
        if (x .ge. 1) then
                if(x .GE. 1 .and. x .le. 10) then
                        f= (sqrt(x-1))/(x+30)
                elseif (x .gt. 10) then
                        f= (-x-2)/(x+2)
                else
                        f=(sqrt(x-100))/(x+10) 
                endif
                print*, f

        else 
                print*, 'net'
        endif


end program
