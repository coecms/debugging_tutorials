program debug_qsort

    implicit none
    integer :: a(20)

    a = [17, 4, 9,15, 1, 3, 2,13,14,10, 5,18,16, 6,11,12, 8, 0, 7,19]
    call my_qsort(a)

    print '(10(I3))', a

contains

    recursive subroutine my_qsort(a)
        implicit none
        integer, intent(inout) :: a(:)
        integer :: lower_idx, upper_idx
        integer :: pivot, tmp
        if (size(a) == 1) return
        lower_idx = 2
        upper_idx = size(a)
        pivot = a(1)
        do
            if (a(lower_idx) <= pivot) then
                lower_idx = lower_idx + 1
            else
                tmp = a(upper_idx)
                a(upper_idx) = a(lower_idx)
                a(lower_idx) = tmp
                upper_idx = upper_idx - 1
            end if
            if (upper_idx == lower_idx) exit
        end do
        if (a(lower_idx) <= pivot) then
            call my_qsort(a(:lower_idx))
            call my_qsort(a(lower_idx+1:))
        else
            call my_qsort(a(:lower_idx-1))
            call my_qsort(a(lower_idx:))
        end if
    end subroutine my_qsort

end program debug_qsort
