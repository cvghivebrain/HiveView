# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported raster image formats

Ext. | Description | Program
--- | --- | ---
A64 | C64 Wigmore Artist 64 | NConvert
AAI | Dune HD media player image | ImageMagick
ACE | [Train Simulator](https://en.wikipedia.org/wiki/Train_Simulator_series) texture | NConvert
ACORN/BIN | Acorn RISC OS Sprite | NConvert
AMI | C64 Amica Paint | NConvert
ART | Atari Art Director | NConvert
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
ATK/CMU | [CMU Andrew Toolkit](https://en.wikipedia.org/wiki/Andrew_Project) | NConvert
BFLI | C64 Big Flexible Line Interpretation | NConvert
BMP | [Windows Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | ImageMagick
BOB | Bob Ray Tracer Bitmap | NConvert
CAL/CT1/RAS | DoD [CALS Raster](https://en.wikipedia.org/wiki/CALS_Raster_file_format) | ImageMagick
CAM | Casio QV-10/100 Camera | NConvert
CDU | C64 CDU-Paint | NConvert
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CIP | Cisco IP Phone Image | NConvert
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
CUR | Windows Cursor | ImageMagick
DG2 | Sega Digitizer 2, used in Sega Saturn games. | HiveView
DCM | [DICOM](https://en.wikipedia.org/wiki/DICOM) medical image | ImageMagick
DCR | Kodak Digital Camera Raw | ImageMagick
DCX | ZSoft Multi-page PCX | ImageMagick
DD/JJ | C64 Doodle | NConvert
DDS | Microsoft [DirectDraw Surface](https://en.wikipedia.org/wiki/DirectDraw_Surface) | ImageMagick
DIB | Device-Independent Bitmap | ImageMagick
DNG | Adobe [Digital Negative](https://en.wikipedia.org/wiki/Digital_Negative) (TIFF variant) | ImageMagick
DPX | SMPTE Digital Moving Picture Exchange | ImageMagick
DRZ/DRP | C64 Draz Paint | NConvert
EPA | Award BIOS Logo | NConvert
ESM | Atari ST Enhanced Simplex | NConvert
EXR | Industrial Light & Magic [OpenEXR](https://en.wikipedia.org/wiki/OpenEXR) | ImageMagick
FF | Farbfeld | ImageMagick
FL32 | [FilmLight](https://www.filmlight.ltd.uk/) | ImageMagick
FLI/FLC | [Autodesk Animator](https://en.wikipedia.org/wiki/Autodesk_Animator) | NConvert
FPG | DIV Games Studio, multi-page | NConvert
GIF | [Graphics Interchange Format](https://en.wikipedia.org/wiki/GIF) | ImageMagick
HDR | [Radiance RGBE](https://en.wikipedia.org/wiki/RGBE_image_format) | ImageMagick
HRZ | Slow-scan television | ImageMagick
ICO | [Windows Icon](https://en.wikipedia.org/wiki/ICO_(file_format)) | ImageMagick
IFF/LBM | Amiga Interleaved Bitmap | NConvert
IFF/TDI | [Maya](https://en.wikipedia.org/wiki/Autodesk_Maya) Image File Format/Thompson Digital Image Explore | NConvert
IMG/XIMG | GEM Raster | NConvert
INFO | Amiga Icon | NConvert
JPEG/JPG | [Joint Photographic Experts Group](https://en.wikipedia.org/wiki/Joint_Photographic_Experts_Group) | ImageMagick
JNG | [JPEG Network Graphics](https://en.wikipedia.org/wiki/JPEG_Network_Graphics) | ImageMagick
JP2 | [JPEG 2000](https://en.wikipedia.org/wiki/JPEG_2000) | ImageMagick
J2C/J2K/JPT | JPEG 2000 codestream | ImageMagick
MAP | DIV Games Studio | NConvert
MAT | [MATLAB](https://en.wikipedia.org/wiki/MATLAB) data file | ImageMagick
MNG | [Multiple-image Network Graphics](https://en.wikipedia.org/wiki/Multiple-image_Network_Graphics) | ImageMagick
MPC+CACHE | ImageMagick Magick Pixel Cache | ImageMagick
MRW | Minolta Raw | ImageMagick
NEF | Nikon Electronic Format (TIFF variant) | ImageMagick
OCP | [Advanced OCP Art Studio](https://en.wikipedia.org/wiki/OCP_Art_Studio) | NConvert
ORA | [OpenRaster](https://en.wikipedia.org/wiki/OpenRaster), actually a ZIP file containing PNGs | 7-Zip
ORF | [Olympus Raw](https://en.wikipedia.org/wiki/ORF_format) | ImageMagick
OTB | Nokia [Over the Air Bitmap](https://en.wikipedia.org/wiki/OTA_bitmap) | ImageMagick
PAM | Portable Arbitrary Map | ImageMagick
PBM/PGM/PPM/PNM | [Netpbm Portable Bitmap](https://en.wikipedia.org/wiki/Netpbm) | ImageMagick
PCD | Kodak [Photo CD](https://en.wikipedia.org/wiki/Photo_CD) | ImageMagick
PCX | ZSoft [Picture Exchange](https://en.wikipedia.org/wiki/PCX) | ImageMagick
PDB | Palm Database ImageViewer | ImageMagick
PEF | Pentax Raw (TIFF variant) | ImageMagick
PFM/PHM | Portable Float Map | ImageMagick
PI | C64 Blazing Paddles | NConvert
PI1/PI2/PI3 | Atari ST DEGAS | NConvert
PI4/PI5 | Atari ST View ST/TT | NConvert
PICON/XPM | [X PixMap Personal Icon](https://en.wikipedia.org/wiki/X_PixMap) | ImageMagick
PIX | Alias PIX | NConvert
PIX | Esm Software PIX (JPEG with header) | Swiss File Knife
PNG | [Portable Network Graphics](https://en.wikipedia.org/wiki/PNG) | n/a
PSD/PSB | Adobe [Photoshop](https://en.wikipedia.org/wiki/Adobe_Photoshop) | ImageMagick
QOI | [Quite OK Image Format](https://en.wikipedia.org/wiki/QOI_(image_format)) | ImageMagick
RAF | Fujifilm Raw | ImageMagick
RGB | Sega RGB format, used in Sega Saturn games. | HiveView
RIX | ColoRIX | NConvert
RLE | Utah Raster Toolkit | ImageMagick
SCT | [Scitex Continuous Tone](https://en.wikipedia.org/wiki/Scitex_CT) | ImageMagick
SD0/SD1/SD2 | Atari ST Dali | NConvert
SFW | [Seattle FilmWorks](https://en.wikipedia.org/wiki/Seattle_FilmWorks) | ImageMagick
SGI/BW/RGB | Silicon Graphics IRIX RGB | ImageMagick
SIR | [BYU-MERS SIR](https://scp.byu.edu/software/) | NConvert
SUN/RAS | [Sun Raster](https://en.wikipedia.org/wiki/Sun_Raster) | ImageMagick
TIFF/TIF | [Tag Image File Format](https://en.wikipedia.org/wiki/TIFF) | ImageMagick
TIM | Sony PlayStation texture | ImageMagick
TRP | Atari Falcon EggPaint | NConvert
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
* [NConvert](https://www.xnview.com/en/nconvert/)
* [Swiss File Knife](http://stahlworks.com/swiss-file-knife.html)

## To do
### ImageMagick
* APNG animation frames - doesn't work
* ART (PFS: First Publisher) - tricky detection
* AVI/AVIF/M2V/MPEG
* AVS X image
* BAYER
* BPG - failed on samples from https://bellard.org/bpg/
* BMP - failed on samples from https://people.math.sc.edu/Burkardt/data/bmp/bmp.html
* CALS Type 2 (CT2) - multi page, can't find any examples
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
* P7 - crashed on samples from http://www.cs.ait.ac.th/images/.xvpics/
* PALM - multi page
* PCL
* PCX - monochrome images are negative
* PFA/PFB
* PICT - failed on samples from http://cd.textfiles.com/cdreview/cdreview66/PCT01_01/PC0101P/
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

### NConvert
* 3DS Max thumbnails - stored in Microsoft Compound Format
* AAA Logo - no samples
* ADEX IMG - no samples
* AOL Instant Messenger greyscale IMA - no samples
* AIPD - no samples
* ARF - no samples
* AT&T Group 4 - no samples
* AT&T Multigen - no samples
* AVHRR SST - no samples
* AVIF - not actually supported?
* AVT RAW - no samples
* AWD
* APX - not actually supported?
* Access G4 - no samples
* Aces200 - no samples
* AdTech ADT - no samples
* AI - not actually supported?
* Adobe PhotoParade - no samples
* AirNav - no samples
* Album Bebe - ?
* Alpha Microsystems BMP - no samples
* Amapi 2D - no samples
* Amiga IFF - most images load but some don't
* Amiga INFO icon - doesn't work with NewIcons or GlowIcons formats
* Amstrad CPC - no samples
* Apollo HDRU - no samples
* ArcInfo - no samples
* Artisan - ?
* Astronomical Research Network - no samples
* Atari PCP
* Aurora SIM - ?
* Auto F/X
* AutoCAD DWG/DXF/IMG
* Autodesk QuickCAD/Sketch thumbnails - no samples
* Autologic GM - actually a BMP inside an ARJ archive
* Award BIOS - failed on AWBM files
* Axialis Screensaver Producer - no samples
* B3D
* BIAS FringeProcessor - no samples
* BMF - no samples
* BSB/KAP - not supported?; sample on https://www.the-thorns.org.uk/mapping/help/sample.html
* Bert's Coloring - PCX variant
* BitFax Bitware - no samples
* BioRad Confocal - no samples
* Argonaut Games BRender - not actually supported?
* Brooktrout 301 - no samples
* Brother fax - no samples
* Tilez texture - no samples
* CGM
* CImage DSI
* CMU Window Manager - no samples
* CP8 256 Gray Scale
* CRG - samples are inverted or distorted
* Canon Navigator Fax - no samples
* Cartes Michelin - ?
* Chinon ES-1000 CMT - no samples
* Cloe - no samples
* ColoRIX -  failed on samples from http://cd.textfiles.com/carousel344/015/VGARIX.ZIP
* CompW - no samples
* CE1 - failed on samples from https://telparia.com/fileFormatSamples/image/computerEyes/
* Core IDC - no samples
* CorelDraw/Flow - vector formats not supported, thumbnails only
* Corel Photo-Paint - v6 only?; no samples
* Nero CoverDesigner - no samples
* Crayola ART - failed on sample from http://fileformats.archiveteam.org/wiki/Picture_Publisher
* DBW Render - no samples
* QRT Ray Tracer/DKB Ray Tracer - not supported?
* Dali - failed on some samples from https://telparia.com/fileFormatSamples/image/dali/
* Datacopy - ?
* DEGAS compressed - header too vague
* Digital F/X TDIM
* GEM Raster - doesn't work with non-XIMG files; failed on some samples from https://telparia.com/fileFormatSamples/image/gem/
* Discorp CMP - no samples
* DjVu - document with embedded images
* C64 DolphinEd - no samples
* Atari ST Doodle - failed on samples from https://telparia.com/fileFormatSamples/image/doodleAtari/
* Draz Paint - failed on samples with "DRAZPAINT" header from https://telparia.com/fileFormatSamples/image/drazPaint/
* EA Sports FSH - failed on samples from http://www.nba-live.com/jaosming/
* ERI - no samples
* Ecchi - no samples
* Eclipse TILE - no samples
* EDMICS C4 - no samples
* Electric Image - no samples
* BMC embroidery - no samples
* ECW
* Eroiica
* Everex Everfax - no samples