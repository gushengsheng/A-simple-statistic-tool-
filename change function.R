
change_angle <- function(frame){
frame <- frame*pi/180
return(frame)
}

aim <- data.frame(col1 = c(60,0,4),col2 = c(53,49,8))

c1_aim <- change_angle(aim)

x <- sin(c1_aim[1,1]+c1_aim[2,1]/60)
y <- sin(c1_aim[1,2]+c1_aim[2,2]/60)

print(c1_aim[1,1]+c1_aim[2,1]/60)
print(c1_aim[3,1]/60)
print(c1_aim[1,2]+c1_aim[2,2]/60)
print(c1_aim[3,2]/60)


