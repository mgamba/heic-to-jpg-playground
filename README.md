## about

This is a playground for converting iphone burst images (.heic) to jpeg before upload.

## using the interface

Go to localhost:3000 in your browser (only tested in recent chrome) and click the "Choose File" button and select an heic file.  Take a look at the console and you'll see it logging stuff and working.  When it's done it will output a bunch of canvas elements.

You'll need to Zoom out to about 25% and resize your browser window to get the image displaying correctly.

## what's next?

It can read/display the image data, but still needs width/height, so that it can create a single canvas and crop the extra pixels.

There's probably a more clever way to use some of the functionality in public/js/heif-extension.js so that you can avoid messing around with image display math.  Otherwise, if you can find the width/height info for the whole image, then you can make a single canvas, paint it so that the image isn't displayed upsidedown and backwards, and then upload it using canvas.toDataURL or your method of choice.

## to setup
```
make install
```

## to run
```
make run
```
