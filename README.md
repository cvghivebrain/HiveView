# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported formats

Ext. | Description | Program
--- | --- | ---
AAI | Dune HD media player image | ImageMagick
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
BMP | [Windows Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | ImageMagick
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
DG2 | Sega Digitizer 2 - Used in Sega Saturn games. | 
DCR | Kodak Digital Camera Raw | ImageMagick
DDS | Microsoft [DirectDraw Surface](https://en.wikipedia.org/wiki/DirectDraw_Surface) | ImageMagick
DIB | Device-Independent Bitmap | ImageMagick
DNG | Adobe [Digital Negative](https://en.wikipedia.org/wiki/Digital_Negative) (TIFF variant) | ImageMagick
DPX | SMPTE Digital Moving Picture Exchange | ImageMagick
EPS | [Encapsulated PostScript](https://en.wikipedia.org/wiki/Encapsulated_PostScript) | Ghostscript
EXR | Industrial Light & Magic [OpenEXR](https://en.wikipedia.org/wiki/OpenEXR) | ImageMagick
FF | Farbfeld | ImageMagick
FL32 | [FilmLight](https://www.filmlight.ltd.uk/) | ImageMagick
HDR | [Radiance RGBE](https://en.wikipedia.org/wiki/RGBE_image_format) | ImageMagick
HRZ | Slow-scan television | ImageMagick
JPEG/JPG | Joint Photographic Experts Group | ImageMagick
PNG | Portable Network Graphics | [cmd copy](https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/copy)
RGB | Sega RGB format - Used in Sega Saturn games. | 
TIFF/TIF | Tag Image File Format | ImageMagick
WEBP | Google WebP | ImageMagick

## Credits

* [Ghostscript](https://ghostscript.com)
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
* DJVU/PDF/EPDF/HTML - multi page/embedded images
* DMR
* DOT graph format
* EMF
* FAX/G3 - no header?
* FITS - failed on samples
* FLIF - failed on samples
* FPX - inconsistent header?
* FTXT - failed on samples
* GPLT
* GRAY/GRAYA
* HEIC/HEIF
* HPGL