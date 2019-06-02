# convert karl_lego.png into favicon.ico

library(magick)

# read original image
img_orig <- image_read(rep("../pics/leaf.jpg", 5))
img_crop <- img_orig
# crop to make it square
# img_crop <- image_crop(img_orig, geometry_area(width=557, height=557))

# image sizes
sizes <- 8*c(2,3,4,6,8)
sizes <- paste0(sizes, "x", sizes)

# write smaller versions of images to files
dir <- tempdir()
files <- file.path(dir, paste0("lego_", sizes, ".jpg"))
img_resize <- lapply(sizes, image_resize, image=img_crop)
for(i in seq_along(files)) {
    image_write(img_resize[[i]], files[[i]])
}

# read them back into one object and delete
images <- image_read(files)

# convert to .ico
ico <- image_convert(images, "ico")
image_write(ico, "favicon.ico")

# clean up temp files
unlink(files)
