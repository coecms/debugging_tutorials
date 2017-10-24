module mod_overlap
    implicit none
contains
    function overlap(a, b)
        ! Calculates overlap between 1D area described by a(1:2) and b(1:2).
        ! The first element of a and b describes their start point, the
        ! second element their end point.
        integer, intent(in), dimension(2) :: a, b
        integer :: overlap
        overlap = min(a(2), b(2)) - max(a(1), b(1))
        return
    end function overlap
end module mod_overlap
