recursive subroutine quicksort(a, first, last)
  implicit none
  real  a(*), x, t
  integer first, last
  integer i, j

  x = a( (first+last) / 2 )
  i = first
  j = last
  do
     do while (a(i) < x)
        i=i+1
     end do
     do while (x < a(j))
        j=j-1
     end do
     if (i >= j) exit
     t = a(i);  a(i) = a(j);  a(j) = t
     i=i+1
     j=j-1
  end do
  if (first < i-1) call quicksort(a, first, i-1)
  if (j+1 < last)  call quicksort(a, j+1, last)
end subroutine quicksort

    subroutine myprint(arr)
    real::arr(10,10)
    do i = 1, 10
    print*, (arr(i, j), j = 1, 10 )
    end do
    end subroutine myprint
    
program qsort
        real:: ar(10, 10)
        call random_seed
        do i =1, 10
            do j = 1, 10
                call random_number(ar(i, j))
            end do
        end do
        call myprint(ar)
        do i = 1, 10
            call quicksort(ar(i), 1, 10)
        end do
        call myprint(ar)
end program
