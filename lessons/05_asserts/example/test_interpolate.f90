program test_interpolate
    use mod_interpolation
    implicit none
    real :: x_array(3), y_array(3)
    real :: x, y
    x_array = [1.0, 2.0, 3.0]
    print'(A, *(F6.1))', 'x_array: ', x_array
    y_array = [1.0, 0.0, -1.0]
    print'(A, *(F6.1))', 'y_array: ', y_array

    print '(2(A6, 2X))', " X ", " Y "

    x = 0.2
    y = interpolate(x_array, y_array, x)
    print '(2(F6.1, 2X))', x, y

    x = 1.2
    y = interpolate(x_array, y_array, x)
    print '(2(F6.1, 2X))', x, y

    x = 1.7
    y = interpolate(x_array, y_array, x)
    print '(2(F6.1, 2X))', x, y

    x = 2.1
    y = interpolate(x_array, y_array, x)
    print '(2(F6.1, 2X))', x, y

    x_array = [1.0, -500.0, 3.0]
    print *, 'x_array corrupted '
    x = 2.1
    y = interpolate(x_array, y_array, x)
    print '(2(F6.1, 2X))', x, y
end program test_interpolate
