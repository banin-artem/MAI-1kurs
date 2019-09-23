program task3
        integer:: ind, buffer, n
        real:: a(1024)
        read*,n
        ind = 1
        do while (ind .le. n)
        read*, a(ind)
        ind = ind+1
        end do
        ind = 1
        print*, (a(i), i = 1, n)
        print*, ' '
        ind = n
        buf = a(n)
        do while(ind .gt. 1)
        a(ind)=a(ind-1)
        ind = ind-1
        end do
        a(1)=buf
        print*, (a(i), i = 1, n)


end program
