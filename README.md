# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported formats

Ext. | Description | Program
--- | --- | ---
AAI | Dune HD media player image | ImageMagick
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
BMP | Windows Bitmap | ImageMagick
CIN | Kodak Cineon | ImageMagick
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
DG2 | Sega Digitizer 2 - Used in Sega Saturn games. | 
DCR | Kodak Digital Camera Raw | ImageMagick
DDS | Microsoft [DirectDraw Surface](https://en.wikipedia.org/wiki/DirectDraw_Surface) | ImageMagick
DIB | Device-Independent Bitmap | ImageMagick
DNG | Adobe Digital Negative (TIFF variant) | ImageMagick
DPX | SMPTE Digital Moving Picture Exchange | ImageMagick
JPEG/JPG | Joint Photographic Experts Group | ImageMagick
PNG | Portable Network Graphics | [cmd copy](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/copy)
RGB | Sega RGB format - Used in Sega Saturn games. | 
TIFF/TIF | Tag Image File Format | ImageMagick
WEBP | Google WebP | ImageMagick

## Credits

* [ImageMagick](https://github.com/ImageMagick/ImageMagick)

## To do
### ImageMagick
* APNG/GIF animation frames
* ART (PFS: First Publisher) - tricky detection
* AVI/AVIF
* AVS X image
* BAYER
* BPG - failed on samples from https://bellard.org/bpg/
* BMP - failed on samples from https://people.math.sc.edu/Burkardt/data/bmp/bmp.html
* CALS - multi page
* CIP - write only
* CMYK/CMYKA - no header?
* CUR/ICO - multi page
* CUT (Dr. Halo clip mask) - tricky detection
* DCM - multi page
* DCX - multi page PCX
* DJVU/PDF - multi page/embedded images
* DMR
* DOT graph format