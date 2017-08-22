program hangs

    implicit none
    integer :: n(10), i

    integer :: b(11)
    equivalence (n(1), b(1)), (i, b(11))

    i = 0
    do
        i = i + 1
        n(i) = mod(i, 3)
        if (i > size(n)) exit
    end do

    print '(*(I4))', n

end program hangs
