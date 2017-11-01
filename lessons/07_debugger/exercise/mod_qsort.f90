module mod_qsort
    implicit none
    private :: swap
contains

    recursive subroutine my_qsort(a)
        implicit none
        integer, intent(inout) :: a(:)
        integer :: lower_idx, upper_idx
        integer :: pivot, divider
        if (size(a) <= 1) return
        lower_idx = 2
        upper_idx = size(a)
        pivot = a(1)
        do
            do while (a(lower_idx) <= pivot)
                lower_idx = lower_idx + 1
            end do
            do while (a(upper_idx) > pivot)
                upper_idx = upper_idx - 1
            end do
            if (lower_idx < upper_idx) then
                call swap(a, lower_idx, upper_idx)
            else
                exit
            end if
        end do
        if (lower_idx == 2) then
            ! the first element is the smallest, need a different pivot
            call swap(a, 1, 2)
            call my_qsort(a)
            return
        end if
        divider = upper_idx
        call swap(a, 1, divider)
        if (divider > 2) call my_qsort(a(:divider-1))
        if (divider < size(a)-2) call my_qsort(a(divider+1:))
    end subroutine my_qsort

    subroutine swap(a, i, j)
        implicit none
        integer, intent(inout) :: a(:)
        integer, intent(in) :: i, j
        integer :: tmp
        tmp = a(i)
        a(i) = a(j)
        a(j) = tmp
        return
    end subroutine swap
end module mod_qsort
