program task4
        integer:: n, m, i, j, k, x, a(4, 7)
        10 format (1x, 7 i2)
        do i = 1, 4
        do j = 1, 7
        read*, a(i, j)
        end do
        end do
        write(*,10)(a(i, :), i = 1, 4)
        do i = 1, 4
        do j = 1, 6
        do k = 1, 6
        if(a(i, k)<a(i, (k+1))) then
                x = a(i, k)
                a(i, k)=a(i, k+1)
                a(i, k+1)=x
        end if
        end do
        end do
        end do
        do j = 1, 7
        do i = 1, 3
        do k = 1, 3
        if(a(k, j)<a(k+1, j)) then
                x = a(k, j)
                a(k, j)=a(k+1, j)
                a(k+1, j) = x
        end if
        end do
        end do
        end do
        print*, ' '
        write(*,10)(a(i, :), i = 1, 4)



end program

