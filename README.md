# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported image formats

Ext. | Description | Program
--- | --- | ---
AAI | Dune HD media player image | ImageMagick
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
BMP | [Windows Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | ImageMagick
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
DG2 | Sega Digitizer 2, used in Sega Saturn games. | HiveView
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
JPEG/JPG | [Joint Photographic Experts Group](https://en.wikipedia.org/wiki/Joint_Photographic_Experts_Group) | ImageMagick
JNG | [JPEG Network Graphics](https://en.wikipedia.org/wiki/JPEG_Network_Graphics) | ImageMagick
JP2 | [JPEG 2000](https://en.wikipedia.org/wiki/JPEG_2000) | ImageMagick
J2C/J2K/JPT | JPEG 2000 codestream | ImageMagick
MAT | [MATLAB](https://en.wikipedia.org/wiki/MATLAB) data file | ImageMagick
MPC+CACHE | ImageMagick Magick Pixel Cache | ImageMagick
MRW | Minolta Raw | ImageMagick
NEF | Nikon Electronic Format (TIFF variant) | ImageMagick
ORF | [Olympus Raw](https://en.wikipedia.org/wiki/ORF_format) | ImageMagick
OTB | Nokia [Over the Air Bitmap](https://en.wikipedia.org/wiki/OTA_bitmap) | ImageMagick
PAM | Portable Arbitrary Map | ImageMagick
PBM/PGM/PPM/PNM | [Netpbm Portable Bitmap](https://en.wikipedia.org/wiki/Netpbm) | ImageMagick
PCD | Kodak [Photo CD](https://en.wikipedia.org/wiki/Photo_CD) | ImageMagick
PDB | Palm Database ImageViewer | ImageMagick
PEF | Pentax Raw (TIFF variant) | ImageMagick
PES | Embroidery file | ImageMagick
PFM/PHM | Portable Float Map | ImageMagick
PICON/XPM | [X PixMap Personal Icon](https://en.wikipedia.org/wiki/X_PixMap) | ImageMagick
PNG | [Portable Network Graphics](https://en.wikipedia.org/wiki/PNG) | n/a
PS | Adobe [PostScript](https://en.wikipedia.org/wiki/PostScript) | Ghostscript
PSD/PSB | Adobe [Photoshop](https://en.wikipedia.org/wiki/Adobe_Photoshop) | ImageMagick
QOI | [Quite OK Image Format](https://en.wikipedia.org/wiki/QOI_(image_format)) | ImageMagick
RAF | Fujifilm Raw | ImageMagick
RGB | Sega RGB format, used in Sega Saturn games. | HiveView
SFW | [Seattle FilmWorks](https://en.wikipedia.org/wiki/Seattle_FilmWorks) | ImageMagick
TIFF/TIF | [Tag Image File Format](https://en.wikipedia.org/wiki/TIFF) | ImageMagick
WEBP | Google [WebP](https://en.wikipedia.org/wiki/WebP) | ImageMagick

## Credits

* [Ghostscript](https://ghostscript.com)
* [ImageMagick](https://github.com/ImageMagick/ImageMagick)

## To do
### ImageMagick
* APNG/GIF animation frames
* ART (PFS: First Publisher) - tricky detection
* AVI/AVIF/M2V/MPEG
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
* DJVU/EPDF/HTML/MAN/PDF/POCKETMOD - multi page/embedded images
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
* JBIG
* JXR
* JXL
* MIFF - failed on samples from https://telparia.com/fileFormatSamples/image/miff/
* MONO - no header
* MNG - multi page
* MPO - multi page
* MTV - unusable header
* MVG - failed on sample
* ORA - actually a ZIP file containing PNGs
* P7 - crashed on samples from http://www.cs.ait.ac.th/images/.xvpics/
* PALM - multi page
* PCL
* PCX - displays as negative
* PFA/PFB
* PICT - failed on samples from http://cd.textfiles.com/cdreview/cdreview66/PCT01_01/PC0101P/
* PIX - failed on sample from http://fileformats.archiveteam.org/wiki/Alias_PIX
* PSD/PSB/TIFF layers
* PTIF - multi page
* PWP - multi page
* RAD
* RAW/RGB - no header
* RGF - https://mattrajca.com/2016/01/06/legos-rgf-file-format.html