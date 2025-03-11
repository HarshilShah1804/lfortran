program badbounds2
  implicit none
  real :: x(3, 1) = 0.0
  print *, x
  call testsub(x(1, 1)) ! array element argument
  print "(*(F9.6))", x
contains
  subroutine testsub(x)
    real, intent(inout) :: x(3, *)
    x(:,1) = [1,1,1]/7.0
  end subroutine testsub
end program badbounds2