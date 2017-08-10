program hang

  implicit none
  integer :: s, n
  integer :: ios

  s = 0

  do
    read(*, *, iostat=ios) n
    s = s + n
  end do

  print*, s

end program hang
