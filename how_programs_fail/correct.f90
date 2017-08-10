program correct

  implicit none
  integer :: s, n
  integer :: ios

  s = 0

  do
    read(*, *, iostat=ios) n
    if (ios /= 0) exit
    s = s + n
  end do

  print*, s

end program correct
