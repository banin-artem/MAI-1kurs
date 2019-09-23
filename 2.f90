program task2
        integer:: a(1024), ind, x, it
        real:: tot, sum
        it = 1
        a(1)=1
        ind = 1
        read*,tot
        do while (ind <= 1024)
        ind = ind+1
        a(ind)=a(ind-1)*ind
        end do
        sum = 1
        ind = 1
        do while (1./(a(ind)) >= tot) 
        ind = ind+1
        sum = sum+(1./a(ind))

        it = it+1
        end do
        print*, it, sum

        read*, x
        ind = 1
        sum = 1

        do while (ind < x) 
        ind = ind+1
        sum = sum+(1./a(ind))
        end do
        print*, sum
end program


