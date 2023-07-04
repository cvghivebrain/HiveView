# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported raster image formats

Ext. | Description | Program
--- | --- | ---
AAI | Dune HD media player image | ImageMagick
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
BMP | [Windows Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | ImageMagick
CAL/CT1/RAS | DoD [CALS Raster](https://en.wikipedia.org/wiki/CALS_Raster_file_format) | ImageMagick
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
CUR | Windows Cursor | ImageMagick
DG2 | Sega Digitizer 2, used in Sega Saturn games. | HiveView
DCM | [DICOM](https://en.wikipedia.org/wiki/DICOM) medical image | ImageMagick
DCR | Kodak Digital Camera Raw | ImageMagick
DCX | ZSoft Multi-page PCX | ImageMagick
DDS | Microsoft [DirectDraw Surface](https://en.wikipedia.org/wiki/DirectDraw_Surface) | ImageMagick
DIB | Device-Independent Bitmap | ImageMagick
DNG | Adobe [Digital Negative](https://en.wikipedia.org/wiki/Digital_Negative) (TIFF variant) | ImageMagick
DPX | SMPTE Digital Moving Picture Exchange | ImageMagick
EXR | Industrial Light & Magic [OpenEXR](https://en.wikipedia.org/wiki/OpenEXR) | ImageMagick
FF | Farbfeld | ImageMagick
FL32 | [FilmLight](https://www.filmlight.ltd.uk/) | ImageMagick
GIF | [Graphics Interchange Format](https://en.wikipedia.org/wiki/GIF) | ImageMagick
HDR | [Radiance RGBE](https://en.wikipedia.org/wiki/RGBE_image_format) | ImageMagick
HRZ | Slow-scan television | ImageMagick
ICO | [Windows Icon](https://en.wikipedia.org/wiki/ICO_(file_format)) | ImageMagick
JPEG/JPG | [Joint Photographic Experts Group](https://en.wikipedia.org/wiki/Joint_Photographic_Experts_Group) | ImageMagick
JNG | [JPEG Network Graphics](https://en.wikipedia.org/wiki/JPEG_Network_Graphics) | ImageMagick
JP2 | [JPEG 2000](https://en.wikipedia.org/wiki/JPEG_2000) | ImageMagick
J2C/J2K/JPT | JPEG 2000 codestream | ImageMagick
MAT | [MATLAB](https://en.wikipedia.org/wiki/MATLAB) data file | ImageMagick
MNG | [Multiple-image Network Graphics](https://en.wikipedia.org/wiki/Multiple-image_Network_Graphics) | ImageMagick
MPC+CACHE | ImageMagick Magick Pixel Cache | ImageMagick
MRW | Minolta Raw | ImageMagick
NEF | Nikon Electronic Format (TIFF variant) | ImageMagick
ORF | [Olympus Raw](https://en.wikipedia.org/wiki/ORF_format) | ImageMagick
OTB | Nokia [Over the Air Bitmap](https://en.wikipedia.org/wiki/OTA_bitmap) | ImageMagick
PAM | Portable Arbitrary Map | ImageMagick
PBM/PGM/PPM/PNM | [Netpbm Portable Bitmap](https://en.wikipedia.org/wiki/Netpbm) | ImageMagick
PCD | Kodak [Photo CD](https://en.wikipedia.org/wiki/Photo_CD) | ImageMagick
PCX | ZSoft [Picture Exchange](https://en.wikipedia.org/wiki/PCX) | ImageMagick
PDB | Palm Database ImageViewer | ImageMagick
PEF | Pentax Raw (TIFF variant) | ImageMagick
PFM/PHM | Portable Float Map | ImageMagick
PICON/XPM | [X PixMap Personal Icon](https://en.wikipedia.org/wiki/X_PixMap) | ImageMagick
PNG | [Portable Network Graphics](https://en.wikipedia.org/wiki/PNG) | n/a
PSD/PSB | Adobe [Photoshop](https://en.wikipedia.org/wiki/Adobe_Photoshop) | ImageMagick
QOI | [Quite OK Image Format](https://en.wikipedia.org/wiki/QOI_(image_format)) | ImageMagick
RAF | Fujifilm Raw | ImageMagick
RGB | Sega RGB format, used in Sega Saturn games. | HiveView
RLE | Utah Raster Toolkit | ImageMagick
SCT | [Scitex Continuous Tone](https://en.wikipedia.org/wiki/Scitex_CT) | ImageMagick
SFW | [Seattle FilmWorks](https://en.wikipedia.org/wiki/Seattle_FilmWorks) | ImageMagick
SGI/BW/RGB | Silicon Graphics IRIX RGB | ImageMagick
SUN/RAS | [Sun Raster](https://en.wikipedia.org/wiki/Sun_Raster) | ImageMagick
TIFF/TIF | [Tag Image File Format](https://en.wikipedia.org/wiki/TIFF) | ImageMagick
TIM | Sony PlayStation texture | ImageMagick
VICAR/IMG | NASA Video Image Communication And Retrieval | ImageMagick
VIFF/XV | Khoros Visualization | ImageMagick
WEBP | Google [WebP](https://en.wikipedia.org/wiki/WebP) | ImageMagick
WPG | [WordPerfect Graphics](https://en.wikipedia.org/wiki/WordPerfect) | ImageMagick
XBM | X Window System Bitmap | ImageMagick
XCF | GIMP [Experimental Computing Facility](https://en.wikipedia.org/wiki/XCF_(file_format)) | ImageMagick

## Supported vector image formats

Ext. | Description | Program
--- | --- | ---
EPS | [Encapsulated PostScript](https://en.wikipedia.org/wiki/Encapsulated_PostScript) | Ghostscript
PES | Embroidery file | ImageMagick
PS | Adobe [PostScript](https://en.wikipedia.org/wiki/PostScript) | Ghostscript
SVG | [Scalable Vector Graphics](https://en.wikipedia.org/wiki/SVG) | ImageMagick

## Supported archive formats

Ext. | Description | Program
--- | --- | ---
7Z | [7-Zip](https://en.wikipedia.org/wiki/7-Zip) | 7-Zip
BZ2 | [bzip2](https://en.wikipedia.org/wiki/Bzip2) | 7-Zip
CAB | Microsoft [Cabinet](https://en.wikipedia.org/wiki/Cabinet_(file_format)) | 7-Zip
GZ | [gzip](https://en.wikipedia.org/wiki/Gzip) | 7-Zip
TAR | [Tape Archive](https://en.wikipedia.org/wiki/Tar_(computing)) | 7-Zip
XZ | Tukaani [XZ](https://tukaani.org/xz/format.html) | 7-Zip
ZIP | PKWare [ZIP](https://en.wikipedia.org/wiki/ZIP_(file_format)) | 7-Zip

## Credits

* [7-Zip](https://7-zip.org/)
* [Ghostscript](https://ghostscript.com)
* [ImageMagick](https://github.com/ImageMagick/ImageMagick)

## To do
### ImageMagick
* APNG animation frames
* ART (PFS: First Publisher) - tricky detection
* AVI/AVIF/M2V/MPEG
* AVS X image
* BAYER
* BPG - failed on samples from https://bellard.org/bpg/
* BMP - failed on samples from https://people.math.sc.edu/Burkardt/data/bmp/bmp.html
* CALS Type 2 (CT2) - multi page, can't find any examples
* CIP - write only
* CMYK/CMYKA - no header?
* CUR - failed on some samples from https://telparia.com/fileFormatSamples/image/cur/
* CUT (Dr. Halo clip mask) - tricky detection
* DCM - multi page sometimes?; failed on (some) samples from https://telparia.com/fileFormatSamples/image/dicom/
* DJVU/EPDF/HTML/MAN/PDF/POCKETMOD - multi page/embedded images
* DCR/DNG/NEF - loads as TIFF but better detection needed
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
* JXR/WDP
* JXL
* MIFF - failed on samples from https://telparia.com/fileFormatSamples/image/miff/
* MONO - no header
* MPO - multi page, only first page is loaded
* MTV - unusable header
* MVG - failed on sample
* ORA - actually a ZIP file containing PNGs
* P7 - crashed on samples from http://www.cs.ait.ac.th/images/.xvpics/
* PALM - multi page
* PCL
* PCX - monochrome images are negative
* PFA/PFB
* PICT - failed on samples from http://cd.textfiles.com/cdreview/cdreview66/PCT01_01/PC0101P/
* PIX - failed on sample from http://fileformats.archiveteam.org/wiki/Alias_PIX
* PSD/PSB/TIFF/XCF layers
* PTIF - multi page
* PWP - multi page
* RAD
* RAW/RGB/UYVY/YUV - no header
* RGF - https://mattrajca.com/2016/01/06/legos-rgf-file-format.html
* RLA - unhelpful header
* SID
* TGA - unhelpful header
* TTF
* WBMP - unhelpful header
* WMF
* XWD - failed on samples from https://telparia.com/fileFormatSamples/image/xwd/
* X3F - unsupported?, failed on samples from http://www.rawsamples.ch/index.php/en/sigma