program cap
    use mod_modulo, only: my_mod
    implicit none

    integer, dimension(:), allocatable :: array, div_array

    allocate(array(5), div_array(5))
    array = [40, 2, -47, 26, 51]
    print '(*(I4))', array
    call my_mod(array,13,div_array)
    print '(*(I4))', array
    print '(*(I4))', div_array

end program cap
