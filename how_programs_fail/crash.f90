program crash

  implicit none
  integer :: s, n, u, ios

  s = 0

  open(newunit=u, file='data.txt', status='old', action='read', iostat=ios)
  if (ios /= 0) STOP "error opening file"
  do
    read(u, *) n
    s = s + n
  end do
  close(u)

  print*, s

end program crash
