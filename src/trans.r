library(magick)
iFill <- function (myImage, myColor) {
  keith_filled <- image_fill(myImage, myColor, "+10,+10", fuzz=55,refcolor = NULL)
  return(keith_filled)
}

setwd("D:/dbt/01/git/hub/lab-of-labs")
goji <- image_read('graphoji-dot.png')
goji.trans <- image_transparent(goji,"#262626",fuzz=1)
print(goji.trans)


image_write(goji.trans,'raphoji-dot2.png','png')