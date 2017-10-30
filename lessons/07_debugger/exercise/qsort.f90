program debug_qsort

    use mod_qsort, only : my_qsort

    implicit none
    integer :: a(20)

    a = [17, 4, 9,15, 1, 3, 2,13,14,10, 5,18,16, 6,11,12, 8, 0, 7,19]
    print '(*(I3))', a
    call my_qsort(a)

    print '(*(I3))', a

end program debug_qsort
