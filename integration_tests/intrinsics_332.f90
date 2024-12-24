program intrinsics_332
    integer(4) :: i1 
    integer(8) :: i2 
    real(4) :: r1 
    real(8) :: r2 
    complex(4) :: c1 
    complex(8) :: c2

    i1 = 2
    i2 = 5
    r1 = 2.0
    r1 = 5._8
    c1 = (1.0, 2.0)
    c2 = (1._8, 2._8)
    
    print *, kind(real(i1))
    if (kind(real(i1)) /= 4) error stop
    print *, kind(real(i2))
    if (kind(real(i2)) /= 8) error stop

    
    print *, kind(real(r1))
    if (kind(real(r1)) /= 4) error stop
    print *, kind(real(r2))
    if (kind(real(r2)) /= 8) error stop

    
    print *, kind(real(c1))
    if (kind(real(c1)) /= 4) error stop
    print *, kind(real(c2))
    if (kind(real(c2)) /= 8) error stop
end program
