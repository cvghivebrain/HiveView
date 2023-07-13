# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported raster image formats

Ext. | Description | Program
--- | --- | ---
2BP | Pocket PC Bitmap | NConvert
411 | [Sony Mavica](https://en.wikipedia.org/wiki/Sony_Mavica) Thumbnail | NConvert
4BT/4BIT | C64 GoDot | NConvert
A64 | C64 Wigmore Artist 64 | NConvert
AAI | Dune HD media player image | ImageMagick
ACE | [Train Simulator](https://en.wikipedia.org/wiki/Train_Simulator_series) texture | NConvert
ACORN/BIN | Acorn RISC OS Sprite | NConvert
AMI | C64 Amica Paint | NConvert
ART | Atari ST Art Director | NConvert
ART | PFS: First Publisher | NConvert
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
ATK/CMU | [CMU Andrew Toolkit](https://en.wikipedia.org/wiki/Andrew_Project) | NConvert
B&W/B_W | ImageLab/PrintTechnic | NConvert
BFLI | C64 Big Flexible Line Interpretation | NConvert
BLK/BSG | Prosoft Fontasy Block | NConvert
BMP | OS/2 Bitmap | NConvert
BMP | [Windows Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | ImageMagick
BOB | Bob Ray Tracer Bitmap | NConvert
BUM | Poser Bump Map (32bpp BMP) | NConvert
CAL/CT1/RAS | DoD [CALS Raster](https://en.wikipedia.org/wiki/CALS_Raster_file_format) | ImageMagick
CAM | Casio QV-10/100 Camera | NConvert
CDU | C64 CDU-Paint | NConvert
CEL+KCF | [Kisekae Set System](https://en.wikipedia.org/wiki/Kisekae_Set_System) Cel | NConvert
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CIP | Cisco IP Phone Image | NConvert
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRW | Canon Digital Camera Raw | ImageMagick
CUR | Windows Cursor | ImageMagick
DG2 | Sega Digitizer 2, used in Sega Saturn games. | HiveView
DCM | [DICOM](https://en.wikipedia.org/wiki/DICOM) medical image | ImageMagick
DCR | Kodak Digital Camera Raw (TIFF variant) | ImageMagick
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
FBM | Fuzzy Bitmap | NConvert
FF | Farbfeld | ImageMagick
FIT/FTS | Flexible Image Transport System | NConvert
FL32 | [FilmLight](https://www.filmlight.ltd.uk/) | ImageMagick
FLI/FLC | [Autodesk Animator](https://en.wikipedia.org/wiki/Autodesk_Animator) | NConvert
FP2/FUN | C64 Funpaint II | NConvert
FPG | DIV Games Studio, multi-page | NConvert
FPT | C64 Face Painter | NConvert
GBR | GIMP Brush | NConvert
GEO/CVT | C64 [GEOS](https://en.wikipedia.org/wiki/GEOS_(8-bit_operating_system)) geoPaint | NConvert
GIF | [Graphics Interchange Format](https://en.wikipedia.org/wiki/GIF) | ImageMagick
GRB/GRO | [HP-48](https://en.wikipedia.org/wiki/HP_48_series)/49 GROB | NConvert
GUN | C64 Gunpaint | NConvert
HBM/HIR | C64 Hires Bitmap | NConvert
HDR | [Radiance RGBE](https://en.wikipedia.org/wiki/RGBE_image_format) | ImageMagick
HED | C64 Hi-Eddi | NConvert
HPI | Hemera Photo-Object | NConvert
HRU | Unknown | NConvert
HRZ | Slow-scan television | ImageMagick
HTA | Hemera Thumbs | NConvert
ICNS | Mac Icon | NConvert
ICO | [Windows Icon](https://en.wikipedia.org/wiki/ICO_(file_format)) | ImageMagick
IFF/LBM | Amiga Interleaved Bitmap | NConvert
IIM | Atari Falcon InShape Image | NConvert
IFF/TDI | [Maya](https://en.wikipedia.org/wiki/Autodesk_Maya) Image File Format/Thompson Digital Image Explore | NConvert
IMG/XIMG | GEM Raster | NConvert
INFO | Amiga Icon | NConvert
IPH/IPT | C64 Interpaint | NConvert
ISH/ISM | C64 Image System | NConvert
J2C/J2K/JPT | JPEG 2000 codestream | ImageMagick
JBF | Jasc [PaintShop Pro](https://en.wikipedia.org/wiki/PaintShop_Pro) Browser File | NConvert
JIF | Jeff's Image Format | NConvert
JNG | [JPEG Network Graphics](https://en.wikipedia.org/wiki/JPEG_Network_Graphics) | ImageMagick
JP2 | [JPEG 2000](https://en.wikipedia.org/wiki/JPEG_2000) | ImageMagick
JPEG/JPG | [Joint Photographic Experts Group](https://en.wikipedia.org/wiki/Joint_Photographic_Experts_Group) | ImageMagick
K25 | Kodak DC25 Digital Camera (TIFF variant) | NConvert
KDC | Kodak DC120 Digital Camera (TIFF variant) | NConvert
KOA | C64 KoalaPainter | NConvert
KPS | IBM KIPS Bitmap | NConvert
KQP/PIC | Konica Picture Show/Pegasus PIC | NConvert
M8 | [Heretic II](https://en.wikipedia.org/wiki/Heretic_II) Mipmap | NConvert
MAC/PIC/PNTG | [MacPaint](https://en.wikipedia.org/wiki/MacPaint) | NConvert
MAG | MAKIchan Graphics | NConvert
MAP | DIV Games Studio | NConvert
MAT | [MATLAB](https://en.wikipedia.org/wiki/MATLAB) data file | ImageMagick
MBM | Psion Series 5 bitmap/EPOC [Multibitmap](https://en.wikipedia.org/wiki/MBM_(file_format)) | NConvert
MGR | [ManaGeR](https://en.wikipedia.org/wiki/ManaGeR) bitmap | NConvert
MIFF/MIF | Magick Multispectral Image File Format | NConvert
MIL | C64 Micro Illustrator | NConvert
MNG | [Multiple-image Network Graphics](https://en.wikipedia.org/wiki/Multiple-image_Network_Graphics) | ImageMagick
MPC+CACHE | ImageMagick Magick Pixel Cache | ImageMagick
MPH | MonkeyPhoto (JPEG variant) | ImageMagick
MRW | Minolta Raw | ImageMagick
NEF | Nikon Electronic Format (TIFF variant) | ImageMagick
NEO | Atari ST NEOchrome | NConvert
NGG | Nokia Group Graphic | NConvert
NLM | Nokia Logo Manager | NConvert
NOL | Nokia Operator Logo | NConvert
OCP | [Advanced OCP Art Studio](https://en.wikipedia.org/wiki/OCP_Art_Studio) | NConvert
ORA | [OpenRaster](https://en.wikipedia.org/wiki/OpenRaster), actually a ZIP file containing PNGs | 7-Zip
ORF | [Olympus Raw](https://en.wikipedia.org/wiki/ORF_format) | ImageMagick
OTB | Nokia [Over the Air Bitmap](https://en.wikipedia.org/wiki/OTA_bitmap) | ImageMagick
P64 | C64 Picasso 64 | NConvert
PAM | Portable Arbitrary Map | ImageMagick
PAT | GIMP Pattern | NConvert
PBM/PGM/PPM/PNM | [Netpbm Portable Bitmap](https://en.wikipedia.org/wiki/Netpbm) | ImageMagick
PCD | Kodak [Photo CD](https://en.wikipedia.org/wiki/Photo_CD) | ImageMagick
PCX | ZSoft [Picture Exchange](https://en.wikipedia.org/wiki/PCX) | ImageMagick
PDB | Palm Database ImageViewer | ImageMagick
PDD | Adobe [PhotoDeluxe](https://en.wikipedia.org/wiki/Adobe_PhotoDeluxe) (PSD variant) | NConvert
PEF | Pentax Raw (TIFF variant) | ImageMagick
PFM/PHM | Portable Float Map | ImageMagick
PGC | Atari Portfolio Graphics Compressed | NConvert
PI | C64 Blazing Paddles | NConvert
PI1/PI2/PI3 | Atari ST DEGAS | NConvert
PI4/PI5 | Atari ST View ST/TT | NConvert
PIC | [PCPaint](https://en.wikipedia.org/wiki/PCPaint) | NConvert
PIC | Psion Series 3 bitmap | NConvert
PICON/XPM | [X PixMap Personal Icon](https://en.wikipedia.org/wiki/X_PixMap) | ImageMagick
PICT/PIC | [QuickDraw](https://en.wikipedia.org/wiki/QuickDraw) [PICT](https://en.wikipedia.org/wiki/PICT) | NConvert
PIX | Alias PIX | NConvert
PIX | Esm Software PIX (JPEG with header) | Swiss File Knife
PMG | C64 Paint Magic | NConvert
PNG | [Portable Network Graphics](https://en.wikipedia.org/wiki/PNG) | n/a
PSD/PSB | Adobe [Photoshop](https://en.wikipedia.org/wiki/Adobe_Photoshop) | ImageMagick
PSF | ArcSoft PhotoStudio | NConvert
PSP | Jasc [PaintShop Pro](https://en.wikipedia.org/wiki/PaintShop_Pro) | NConvert
PWC | [Piecewise-Constant Image Model](http://www.caravian.com/research/index.htm) | pwcdecode
PXA | [Pixia](https://en.wikipedia.org/wiki/Pixia) | NConvert
PZL | X11 Puzzle bitmap | NConvert
QOI | [Quite OK Image Format](https://en.wikipedia.org/wiki/QOI_(image_format)) | ImageMagick
RAF | Fujifilm Raw | ImageMagick
RAW/HST | Image Alchemy HSI Raw | NConvert
RGB | Sega RGB format, used in Sega Saturn games. | HiveView
RIX | ColoRIX | NConvert
RLE | Utah Raster Toolkit | ImageMagick
SC2 | MSX Screen 2 | NConvert
SCT | [Scitex Continuous Tone](https://en.wikipedia.org/wiki/Scitex_CT) | ImageMagick
SD0/SD1/SD2 | Atari ST Dali | NConvert
SFW | [Seattle FilmWorks](https://en.wikipedia.org/wiki/Seattle_FilmWorks) | ImageMagick
SGI/BW/RGB | Silicon Graphics IRIX RGB | ImageMagick
SIR | [BYU-MERS SIR](https://scp.byu.edu/software/) | NConvert
SUN/RAS | [Sun Raster](https://en.wikipedia.org/wiki/Sun_Raster) | ImageMagick
TAP | Oric Hires Screen; Tape Format | NConvert
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
PDX/MD | PageDraw/Mayura Draw (EPS files) | Ghostscript
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
* [pwcdecode](http://www.caravian.com/research/index.htm)
* [Swiss File Knife](http://stahlworks.com/swiss-file-knife.html)

## To do
### ImageMagick
* APNG animation frames - doesn't work
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
* DNG/NEF - loads as TIFF but better detection needed
* DMR
* DOT graph format
* EMF
* FAX/G3 - no header?
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
* FIF
* FIT - ?
* FAX/G3 - no header
* FMF - no samples
* Faxable PCX/TIFF - no samples
* FileMagic MAG - no samples
* Flash Image FI - no samples
* FlashCam Frame - no samples
* FlashPix FPX - actually a CFBF archive
* FITS - failed on some samples from https://telparia.com/fileFormatSamples/image/fits/
* Fremont Fax96 - no samples
* Fugawi FX3 - no samples
* FunPhotor FPR - no samples
* GRS16 - ?
* GammaFax - no samples
* GFA Raytrace - no samples
* Giga-Paint - failed on samples from https://telparia.com/fileFormatSamples/image/c64HiRes/ (different from HIR/HBM format?)
* GIMP Icon - no samples
* HDRI - ?
* Rayshade Heightfield - unsupported?
* HP-49 OpenFire - no samples
* HPGL2
* Half-Life model - no samples
* Hayes JTFax - no samples
* Hemera Thumbs - failed on sample from https://archive.org/details/photo-clip-art-10000 (too many thumbs?)
* Homeworld LIF texture - no samples
* IBM Printer Page Segment - no samples
* IM5 - no samples
* IMNET - no samples
* IOCA - no samples
* ISS - ?
* Icon Library - failed on samples from http://fileformats.archiveteam.org/wiki/Icon_library
* Image Capture Board - no samples
* Image Speeder - no samples
* Image Systems RLC2 Graphic - no samples
* Imaging Fax G3N - no samples
* Imaging Technology - no samples
* Img Software Set - no samples
* InShape - failed on some samples from https://telparia.com/fileFormatSamples/image/iim/
* Interleaf - no samples
* Iris CT - no samples
* Iris Graphics - ?
* J Wavelet Image Codec
* JBIG/JBIG2
* JPEG 8BIM
* JPEG-LS
* Jigsaw 2 - samples from http://fileformats.archiveteam.org/wiki/Jigsaw_(Walter_A._Kuhn) look wrong
* Jovian Logic VI - no samples
* Just Buttons - only extracts embedded BMP
* KONTRON - no samples
* KinuPix - no samples
* KiSS Cel - only loads palette if KCF & CEL files have the same name
* KoalaPainter GG compressed - insufficient header
* Kodak DC120 Digital Camera - fails on sample from https://telparia.com/fileFormatSamples/image/kodakKDC/
* Kofax Group 4 - no samples
* Konica KQP - failed on samples from http://fileformats.archiveteam.org/wiki/KQP
* LSS16 - no samples
* LView Pro - no samples
* LaserData - no samples
* Light Work Image - no samples
* LucasFilm Format - failed on sample from http://ftp.funet.fi/index/graphics/packages/lff/lff.tar.gz
* Lumena CEL - no samples
* LuraDocument LDF - no samples
* JPM
* LuraWave
* MAKIchan Graphics - failed on some samples from https://telparia.com/fileFormatSamples/image/makichan/
* PhotoSuite Project - actually a Microsoft Compound File
* MGR bitmap - only "yz" variant found
* MTV - failed on samples from https://telparia.com/fileFormatSamples/image/mtv/ and header is tricky
* MacPaint - some files are headerless
* Mac icon - failed on some samples from https://telparia.com/fileFormatSamples/image/icns/
* PICT - failed on many samples from https://telparia.com/fileFormatSamples/image/pict/
* Maggi Hairstyles & Cosmetics - no samples
* Male MRI/CT - no samples
* MRF - no samples
* Maw-Ware textures - no samples
* MegaPaint - unhelpful header
* Megalux - no samples
* Micro Dynamics MARS - no samples
* Micrografx Picture Publisher - no samples
* Microsoft Image Composer - actually a Microsoft Compound File
* Microsoft Paint - failed on most samples from https://telparia.com/fileFormatSamples/image/msp/
* Microtek Eyestar - no samples
* Mindjongg IPG - no samples
* MonkeyCard/MonkeyLogo - failed on samples
* MonkeyPhoto - just a JPEG?
* MrSID
* NCR - no samples
* NIST IHead - no samples
* NTF - failed on most samples from http://download.osgeo.org/pub/gdal/data/nitf/
* NeoBook Cartoon - no samples
* NeoPaint mask/stamp - no samples
* Newsroom - no samples
* OAZ Fax - no samples
* Olicom Fax - no samples
* OIL - no samples
* Optigraphics - no samples
* Oric Hires - no samples
* OS/2 Warp - failed on samples from https://telparia.com/fileFormatSamples/archive/os2BitmapArray/
* PABX background - no samples
* Pick Ax - no samples
* PCO B16 - no samples
* Penn PM - no samples
* PCL - ?
* PSP JBF - failed on some samples from https://telparia.com/fileFormatSamples/archive/paintShopProBrowserCache/
* PSP Brush/Frame/Mask/Pattern/Texture/Tube - no samples
* Panasonic DMC-LC1 Raw - no samples
* Pegs - ?
* PhotoDeluxe - same as PSD?
* PhotoFantasy - no samples
* PhotoFrame - no samples
* PhotoStudio stamp - no samples
* Photomatrix - no samples
* Pic2
* PictureGear - not supported?
* Picture It! MIX - actually a Microsoft Compound File
* Pixar PIC - no samples
* Pixel Power Collage - no samples
* Pixia - only displays JPEG thumbnail
* Pixibox - no samples
* Planetary Data System - failed on most samples from https://telparia.com/fileFormatSamples/image/pds/
* Playback Bitmap Sequence - ?
* Pocket PC Theme - just a CAB file?
* Polychrome Recursive Format - no samples
* PDF - document format
* Portfolio Graphics - no samples
* Portrait CVP - ?
* Poser Bump Map - same as BMP?
* Powercard - no samples
* Powerpoint - document format, embedded images can be extracted
* Print Master - no samples
* Print Shop - no samples
* Printfox - header is only 1 byte
* PRISM CPA - no samples
* Prisms - ?
* Punk Productions - no samples