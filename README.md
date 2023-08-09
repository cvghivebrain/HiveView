# HiveView

HiveView is an image viewer that can (potentially) open any image file, either by using the built-in customisable raw image viewer, or using external programs to preconvert images to PNG. Image format definitions can be added to HiveView.ini.

## Supported raster image formats

Ext. | Description | Program
--- | --- | ---
2BP | Pocket PC Bitmap | NConvert
411 | [Sony Mavica](https://en.wikipedia.org/wiki/Sony_Mavica) Thumbnail | NConvert
4BT/4BIT | C64 GoDot | NConvert
73I/82I/83I/85I/86I/89I/92I | Texas Instruments [TI-92 calculator](https://en.wikipedia.org/wiki/TI-92_series) and earlier | Deark
A64 | C64 Wigmore Artist 64 | NConvert
AAI | Dune HD media player image | ImageMagick
ABK | AMOS Picture/Sprite/Icon Bank | Deark
ACE | [Train Simulator](https://en.wikipedia.org/wiki/Train_Simulator_series) texture | NConvert
ACORN/BIN | Acorn RISC OS Sprite | NConvert
AMI | C64 Amica Paint | NConvert
ANS | ANSI Art | Deark
ART | Atari ST Art Director | NConvert
ART | PFS: First Publisher | NConvert
ARW | Sony Digital Camera Alpha Raw (TIFF variant) | ImageMagick
ATK/CMU | [CMU Andrew Toolkit](https://en.wikipedia.org/wiki/Andrew_Project) | NConvert
AVS/X | Stardent Application Visualization System | NConvert
B&W/B_W | ImageLab/PrintTechnic | NConvert
BFLI | C64 Big Flexible Line Interpretation | NConvert
BIN | Binary Text | Deark
BLK/BSG | Prosoft Fontasy Block | NConvert
BMP/ICO/PTR | OS/2 Bitmap Array | Deark
BMP | [Windows & OS/2 Bitmap](https://en.wikipedia.org/wiki/BMP_file_format) | Deark
BOB | Bob Ray Tracer Bitmap | NConvert
BPG | [Better Portable Graphics](https://en.wikipedia.org/wiki/Better_Portable_Graphics) | libbpg
BUM | Poser Bump Map (32bpp BMP) | NConvert
CAL/CT1/RAS | DoD [CALS Raster](https://en.wikipedia.org/wiki/CALS_Raster_file_format) | ImageMagick
CAM | Casio QV-10/100 Camera | NConvert
CDU | C64 CDU-Paint | NConvert
CEL+KCF | [Kisekae Set System](https://en.wikipedia.org/wiki/Kisekae_Set_System) Cel | NConvert
CIN | Kodak [Cineon](https://en.wikipedia.org/wiki/Cineon) | ImageMagick
CIP | Cisco IP Phone Image | NConvert
CLB | CorelMOSAIC Library | Deark
CLP | [PCPaint](https://en.wikipedia.org/wiki/PCPaint) | Deark
COM | TheDraw COM File Screen Save | Deark
CR2 | Canon Digital Camera Raw (TIFF variant) | ImageMagick
CRG | Calamus Raster Graphic | Deark
CRW | Canon Digital Camera Raw | ImageMagick
CUR | Windows Cursor | ImageMagick
DB | [Windows Thumbs.db Cache](https://en.wikipedia.org/wiki/Windows_thumbnail_cache) (Microsoft Compound File variant) | Deark
DCM | [DICOM](https://en.wikipedia.org/wiki/DICOM) medical image | ImageMagick
DCR | Kodak Digital Camera Raw (TIFF variant) | ImageMagick
DCX/FAX | ZSoft Multi-page PCX | Deark
DD/JJ | C64 Doodle | NConvert
DDS | Microsoft [DirectDraw Surface](https://en.wikipedia.org/wiki/DirectDraw_Surface) | ImageMagick
DG2 | Sega Digitizer 2, used in Sega Saturn games | HiveView
DGI | Digi-Pic | Deark
DIB | Device-Independent Bitmap | ImageMagick
DNG | Adobe [Digital Negative](https://en.wikipedia.org/wiki/Digital_Negative) (TIFF variant) | ImageMagick
DOO | Atari ST Doodle | Deark
DPX | SMPTE Digital Moving Picture Exchange | ImageMagick
DRAW | Acorn RISC OS Draw, embedded sprites only | Deark
DRZ/DRP | C64 Draz Paint | NConvert
EMF | Enhanced Metafile | NConvert
EPA | Award BIOS Logo | Deark
ESM | Atari ST Enhanced Simplex | NConvert
EXR | Industrial Light & Magic [OpenEXR](https://en.wikipedia.org/wiki/OpenEXR) | ImageMagick
FACE/XFACE | [X-Face](https://en.wikipedia.org/wiki/X-Face) | Deark
FBM | Fuzzy Bitmap | NConvert
FF | Farbfeld | ImageMagick
FIT/FTS | Flexible Image Transport System | NConvert
FL32 | [FilmLight](https://www.filmlight.ltd.uk/) | ImageMagick
FLIF | [Free Lossless Image Format](https://en.wikipedia.org/wiki/Free_Lossless_Image_Format) | FLIF
FP2/FUN | C64 Funpaint II | NConvert
FPG | DIV Games Studio, multi-page | NConvert
FPT | C64 Face Painter | NConvert
FTC | Atari Falcon True Color | Deark
FXS | [WinFax](https://en.wikipedia.org/wiki/WinFax) | NConvert
GBR | GIMP Brush | NConvert
GEO/CVT | C64 [GEOS](https://en.wikipedia.org/wiki/GEOS_(8-bit_operating_system)) geoPaint | NConvert
GOD | Atari Falcon GodPaint | Deark
GPH | PrintPartner Graphics | Deark
GRB/GRO | [HP-48](https://en.wikipedia.org/wiki/HP_48_series)/49 GROB | NConvert
GUN | C64 Gunpaint | NConvert
HBM/HIR | C64 Hires Bitmap | NConvert
HDR | [Radiance RGBE](https://en.wikipedia.org/wiki/RGBE_image_format) | ImageMagick
HED | C64 Hi-Eddi | NConvert
HPI | Hemera Photo-Object | NConvert
HR | [TRS-80](https://en.wikipedia.org/wiki/TRS-80) High Resolution | NConvert
HRU | Unknown | NConvert
HRZ | Slow-scan television | ImageMagick
HTA | Hemera Thumbs | NConvert
ICN | HP 100LX/200LX Icon | Deark
ICN/TBI | Magic Desk/ToyBox Icon | Deark
ICN | RIPscrip Icon | Deark
ICNS | Mac Icon | Deark
ICO | OS/2 Icon | Deark
ICO | Sun Icon | NConvert
ICO | [Windows Icon](https://en.wikipedia.org/wiki/ICO_(file_format)) | ImageMagick
IFF | CD-i IFF IMAG | Deark
IFF/LBM | Amiga Interleaved Bitmap | Deark
IFF/TDI | [Maya](https://en.wikipedia.org/wiki/Autodesk_Maya) Image File Format/Thompson Digital Image Explore | NConvert
IIM | Atari Falcon InShape Image | NConvert
INFO | Amiga Icon | Deark
IPH/IPT | C64 Interpaint | NConvert
ISH/ISM | C64 Image System | NConvert
J2C/J2K/JPT | JPEG 2000 codestream | ImageMagick
JBF | Jasc [PaintShop Pro](https://en.wikipedia.org/wiki/PaintShop_Pro) Browser File | Deark
JBIG/JBG/BIE | [Joint Bi-level Image Experts Group](https://en.wikipedia.org/wiki/JBIG) | JBIG-KIT
JIF | Jeff's Image Format | NConvert
JLS | JPEG-LS | LOCO
JNG | [JPEG Network Graphics](https://en.wikipedia.org/wiki/JPEG_Network_Graphics) | ImageMagick
JP2 | [JPEG 2000](https://en.wikipedia.org/wiki/JPEG_2000) | ImageMagick
JPEG/JPG | [Joint Photographic Experts Group](https://en.wikipedia.org/wiki/Joint_Photographic_Experts_Group) | ImageMagick
JPS | JPEG Stereoscopic (opens as JPEG) | ImageMagick
JXL | [JPEG XL](https://en.wikipedia.org/wiki/JPEG_XL) | libjxl
JXR/WDP | [JPEG XR](https://en.wikipedia.org/wiki/JPEG_XR) | jxrlib
K25 | Kodak DC25 Digital Camera (TIFF variant) | NConvert
KDC | Kodak DC120 Digital Camera (TIFF variant) | NConvert
KOA/RPM | C64 KoalaPainter/RUN Paint | NConvert
KPS | IBM KIPS Bitmap | NConvert
KQP/PIC | Konica Picture Show/Pegasus PIC | Deark
LGO | OS/2 Boot Logo | Deark
M8 | [Heretic II](https://en.wikipedia.org/wiki/Heretic_II) Mipmap | NConvert
MAC/PIC/PNTG | [MacPaint](https://en.wikipedia.org/wiki/MacPaint) | Deark
MAG | MAKIchan Graphics | Deark
MAP | DIV Games Studio | NConvert
MAT | [MATLAB](https://en.wikipedia.org/wiki/MATLAB) data file | ImageMagick
MBM | Psion Series 5 bitmap/EPOC [Multibitmap](https://en.wikipedia.org/wiki/MBM_(file_format)) | NConvert
MGR | [ManaGeR](https://en.wikipedia.org/wiki/ManaGeR) bitmap | NConvert
MIFF/MIF | Magick Multispectral Image File Format | NConvert
MIL | C64 Micro Illustrator | NConvert
MPC+CACHE | ImageMagick Magick Pixel Cache | ImageMagick
MPH | MonkeyPhoto (JPEG variant) | ImageMagick
MRW | Minolta Raw | ImageMagick
MSP | [Microsoft Paint](https://en.wikipedia.org/wiki/Microsoft_Paint) | Deark
NEF | Nikon Electronic Format (TIFF variant) | ImageMagick
NEO | Atari ST NEOchrome | NConvert
NGG | Nokia Group Graphic | NConvert
NIE | Naïve Image Formats | Deark
NLM | Nokia Logo Manager | NConvert
NOL | Nokia Operator Logo | NConvert
NPM | Nokia Picture Message | Deark
NSL | Nokia Startup Logo | Deark
OCP | C64 [Advanced OCP Art Studio](https://en.wikipedia.org/wiki/OCP_Art_Studio) | NConvert
ORA | [OpenRaster](https://en.wikipedia.org/wiki/OpenRaster), actually a ZIP file containing PNGs | 7-Zip
ORF | [Olympus Raw](https://en.wikipedia.org/wiki/ORF_format) | ImageMagick
OTB | Nokia [Over the Air Bitmap](https://en.wikipedia.org/wiki/OTA_bitmap) | ImageMagick
P64 | C64 Picasso 64 | NConvert
P7 | XV Visual Schnauzer thumbnail | NConvert
PAC/SEQ | Atari ST STAD | NConvert
PALM | Palm Bitmap | Deark
PAM | Portable Arbitrary Map | ImageMagick
PAT | GIMP Pattern | NConvert
PAT | MegaPaint Pattern | Deark
PBM/PGM/PPM/PNM | [Netpbm Portable Bitmap](https://en.wikipedia.org/wiki/Netpbm) | ImageMagick
PCD | Kodak [Photo CD](https://en.wikipedia.org/wiki/Photo_CD) | ImageMagick
PCX | ZSoft [Picture Exchange](https://en.wikipedia.org/wiki/PCX) | Deark
PDB | Palm Database ImageViewer | ImageMagick
PDD | Adobe [PhotoDeluxe](https://en.wikipedia.org/wiki/Adobe_PhotoDeluxe) (PSD variant) | NConvert
PEF | Pentax Raw (TIFF variant) | ImageMagick
PFM/PHM | Portable Float Map | ImageMagick
PGC | Atari Portfolio Graphics Compressed | NConvert
PGF | Atari Portfolio Graphics | Deark
PI | C64 Blazing Paddles | NConvert
PI1/PI2/PI3 | Atari ST DEGAS | NConvert
PI4/PI5 | Atari ST View ST/TT | NConvert
PI4/PI9 | Atari Falcon Fuckpaint | Deark
PI7 | Atari ST View ST/TT | Deark
PIC | [Autodesk Softimage](https://en.wikipedia.org/wiki/Autodesk_Softimage) | NConvert
PIC | [Dr. Halo](https://en.wikipedia.org/wiki/Dr._Halo) | Deark
PIC | [PCPaint](https://en.wikipedia.org/wiki/PCPaint) | Deark
PIC | Psion Series 3 bitmap | Deark
PIC | WinMiPS | NConvert
PIC/PCT/PIX | [BSAVE/BLOAD](https://en.wikipedia.org/wiki/BSAVE), including compressed files | Deark
PIC/CAP/TEM | PC Storyboard | Deark
PICT/PIC | Apple Macintosh [QuickDraw](https://en.wikipedia.org/wiki/QuickDraw) [PICT](https://en.wikipedia.org/wiki/PICT) | NConvert
PIX | Alias PIX | NConvert
PIX | Esm Software PIX (JPEG with header) | Swiss File Knife
PIX | Inset, a DOS program | Deark
PKM | [GrafX2](https://en.wikipedia.org/wiki/GrafX2) | Deark
PMG | C64 Paint Magic | NConvert
PMP | Sony DSC-F1 | NConvert
PNG | [Portable Network Graphics](https://en.wikipedia.org/wiki/PNG) | n/a
PNT | Atari ST Prism Paint/TruePaint | Deark
PNT | [DeskMate Paint](https://en.wikipedia.org/wiki/DeskMate) | Deark
POG+PNM | [The New Print Shop](https://en.wikipedia.org/wiki/The_Print_Shop) | Deark
PSD/PSB | Adobe [Photoshop](https://en.wikipedia.org/wiki/Adobe_Photoshop) | ImageMagick
PSF | ArcSoft PhotoStudio | NConvert
PSP | Jasc [PaintShop Pro](https://en.wikipedia.org/wiki/PaintShop_Pro) | NConvert
PTR | OS/2 Mouse Pointer | Deark
PWC | [Piecewise-Constant Image Model](http://www.caravian.com/research/index.htm) | pwcdecode
PXA | [Pixia](https://en.wikipedia.org/wiki/Pixia) | NConvert
PZL | X11 Puzzle bitmap | NConvert
QOI | [Quite OK Image Format](https://en.wikipedia.org/wiki/QOI_(image_format)) | ImageMagick
QTIF/QIF | QuickTime Image Format | Deark
RAF | Fujifilm Raw | ImageMagick
RAW/HST | Image Alchemy HSI Raw | NConvert
RAW/QRT/DIS | QRT Ray Tracer/DKB Ray Tracer | NConvert
RGB | Sega RGB format, used in Sega Saturn games | HiveView
RGH | Atari ST ZZ_ROUGH | NConvert
RIX | ColoRIX | NConvert
RLA | Wavefront Advanced Visualizer | ImageMagick
RLE | Utah Raster Toolkit | ImageMagick
RP | C64 Rainbow Painter | NConvert
RSC | Atari ST GEM Resource, embedded images only | Deark
SAR | C64 Saracen Paint | NConvert
SC2 | MSX Screen 2 | NConvert
SCR/MWG | [Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word) Screen Capture | Deark
SCR | ZX Spectrum Screen | NConvert
SCT | [Scitex Continuous Tone](https://en.wikipedia.org/wiki/Scitex_CT) | ImageMagick
SD0/SD1/SD2 | Atari ST Dali | NConvert
SFW | [Seattle FilmWorks](https://en.wikipedia.org/wiki/Seattle_FilmWorks) | ImageMagick
SGI/BW/RGB | Silicon Graphics IRIX RGB | ImageMagick
SHG/MRB | Segmented Hypergraphics/Multi Resolution Bitmap | Deark
SHP+SDR | [PrintMaster](https://en.wikipedia.org/wiki/PrintMaster) Shape | Deark
SIR | [BYU-MERS SIR](https://scp.byu.edu/software/) | NConvert
SPU | Atari ST Spectrum 512 | NConvert
SUN/RAS | [Sun Raster](https://en.wikipedia.org/wiki/Sun_Raster) | ImageMagick
TAP | Oric Hires Screen; Tape Format | NConvert
TG1 | Atari Falcon COKE | Deark
THN | Graphic Workshop Thumbnail | Deark
TIFF/TIF | [Tag Image File Format](https://en.wikipedia.org/wiki/TIFF) | ImageMagick
TIM | Sony PlayStation texture | ImageMagick
TNY/TN1/TN2/TN3 | Atari ST Tiny Stuff | NConvert
TRP | Atari Falcon EggPaint | NConvert
TRU | Atari Falcon IndyPaint | Deark
VBM | C64/128 VDC Bitmap | Deark
VICAR/IMG | NASA Video Image Communication And Retrieval | ImageMagick
VID | C64 Vidcom 64 | NConvert
VIFF/XV | Khoros Visualization | ImageMagick
VOB | Vue d'Espirit thumbnail | NConvert
VOLLABEL | Apple Volume Label | Deark
WAD | [Half-Life](https://en.wikipedia.org/wiki/Half-Life_(video_game)) WAD3 | NConvert
WAL | [Quake II](https://en.wikipedia.org/wiki/Quake_II) Texture | NConvert
WBC/WB1 | Webshots | NConvert
WBMP | [Wireless Application Protocol Bitmap](https://en.wikipedia.org/wiki/Wireless_Application_Protocol_Bitmap_Format) | NConvert
WEBP | Google [WebP](https://en.wikipedia.org/wiki/WebP) | ImageMagick
WMF | [Windows Metafile](https://en.wikipedia.org/wiki/Windows_Metafile) | NConvert
WPG | [WordPerfect Graphics](https://en.wikipedia.org/wiki/WordPerfect) | ImageMagick
WZL | Winzle Puzzle | NConvert
X3F | Sigma/Foveon Raw | x3f_extract
XB | [Extended Binary](https://en.wikipedia.org/wiki/XBin) | Deark
XBM | [X Window System Bitmap](https://en.wikipedia.org/wiki/X_BitMap) | ImageMagick
XCF | GIMP [Experimental Computing Facility](https://en.wikipedia.org/wiki/XCF_(file_format)) | ImageMagick
XGA | Atari Falcon TrueColor Screen | Deark
XIF | Xerox Image File Format | NConvert
XIMG/IMG | GEM Raster | NConvert
XPM/PICON | [X Window System Pixmap](https://en.wikipedia.org/wiki/X_PixMap) | NConvert
XWD | [X Window System Window Dump](https://en.wikipedia.org/wiki/Xwd) | NConvert
XYZ | [RPG Maker 2000](https://en.wikipedia.org/wiki/RPG_Maker_2000) | NConvert
YP | Young Picasso | Deark
ZBR | Zoner Zebra Metafile thumbnail | NConvert

## Supported animation formats

Ext. | Description | Program
--- | --- | ---
ANI | Atari ST NEOchrome Animation | Deark
ANI | Windows Animated Cursor | NConvert
ANIM | Amiga Animation | Deark
FLI/FLC | [Autodesk Animator](https://en.wikipedia.org/wiki/Autodesk_Animator) | NConvert
FLIF | [Free Lossless Image Format](https://en.wikipedia.org/wiki/Free_Lossless_Image_Format) | FLIF
FLM | Atari Animatic Film | Deark
FLM/VID/VSQ | Atari ST/Amiga Video Master Film | Deark
GIF | [Graphics Interchange Format](https://en.wikipedia.org/wiki/GIF) | ImageMagick
GL | [Graphics Animation System for Professionals](https://en.wikipedia.org/wiki/Graphics_Animation_System_for_Professionals) | Deark
MNG | [Multiple-image Network Graphics](https://en.wikipedia.org/wiki/Multiple-image_Network_Graphics) | ImageMagick
NIE/NII | Naïve Image Formats | Deark
PGX | Atari Portfolio Graphics Animation | Deark

## Supported vector image formats

Ext. | Description | Program
--- | --- | ---
EPS | [Encapsulated PostScript](https://en.wikipedia.org/wiki/Encapsulated_PostScript) | Ghostscript
PDX/MD | PageDraw/Mayura Draw (EPS files) | Ghostscript
PES | Embroidery file | ImageMagick
PS | Adobe [PostScript](https://en.wikipedia.org/wiki/PostScript) | Ghostscript
SLB | AutoCAD Slide Library | Deark
SVG | [Scalable Vector Graphics](https://en.wikipedia.org/wiki/SVG) | ImageMagick

## Supported document formats

Ext. | Description | Program
--- | --- | ---
CRD | [Windows Cardfile](https://en.wikipedia.org/wiki/Cardfile) (extracts embedded images only) | Deark

## Supported font formats

Ext. | Description | Program
--- | --- | ---
FNT | Windows Font | Deark
FNT/GFT | GEM Bitmap Font | Deark
PCF | X11 Portable Compiled Format | Deark
PCR | OPTIKS Font | Deark
PF2 | PUPA Font Format | Deark
PK | Packed Font | Deark
PSF | PC Screen Font | Deark
SET | GRASP Font | Deark

## Supported archive formats

Ext. | Description | Program
--- | --- | ---
??$/??_ | EDI Install Pack | Deark
??$ | NPack | Deark
??_ | Microsoft Installation Compression | Deark
7Z | [7-Zip](https://en.wikipedia.org/wiki/7-Zip) | 7-Zip
A | [Unix Ar](https://en.wikipedia.org/wiki/Ar_(Unix)) | Deark
ABK | AMOS AmBs Bank | Deark
ARC | RISC OS ArcFS | Deark
ARJ | [Archived by Robert Jung](https://en.wikipedia.org/wiki/ARJ) | Deark
BIN | [MacBinary](https://en.wikipedia.org/wiki/MacBinary) | Deark
BIN | RISC OS PackDir | Deark
BIN | RISC OS Squash | Deark
BZ2 | [bzip2](https://en.wikipedia.org/wiki/Bzip2) | 7-Zip
CAB | Microsoft [Cabinet](https://en.wikipedia.org/wiki/Cabinet_(file_format)) | 7-Zip
CFB | Microsoft [Compound File Binary](https://en.wikipedia.org/wiki/Compound_File_Binary_Format) | Deark
CPIO | [Unix cpio](https://en.wikipedia.org/wiki/cpio) | Deark
DSK | LoadDskF/SaveDskF | Deark
EX_ | [InstallShield](https://en.wikipedia.org/wiki/InstallShield) Installer | Deark
EXE | PKLITE | Deark
GX | Genus Microprogramming GX Library | Deark
GZ | [gzip](https://en.wikipedia.org/wiki/Gzip) | 7-Zip
HQX | [BinHex](https://en.wikipedia.org/wiki/BinHex) | Deark
IBT | [InstallShield](https://en.wikipedia.org/wiki/InstallShield) | Deark
LBR | Gary P. Novosielski [Library](https://en.wikipedia.org/wiki/LBR_(file_format)) | Deark
LHA/LZH | [LHarc](https://en.wikipedia.org/wiki/LHA_(file_format)) | Lhasa
LIB/CMP/??$/$$$/PAK | The Stirling Compressor | Deark
MD | MDCD | Deark
PCL | PCX Library | Deark
PQA | Palm Query Application | Deark
PRC | Palm Resource | Deark
QIP | Quarterdeck Installation Package | Deark
QQQ/?Q?/SQ | CP/M Squeeze | Deark
RAR | [Roshal Archive/WinRAR](https://en.wikipedia.org/wiki/RAR_(file_format)) | 7-Zip
RPM | [Red Hat Package Manager](https://en.wikipedia.org/wiki/RPM_Package_Manager) | Deark
SHR | PC-Shrink | Deark
SIS | EPOC/Symbian OS SOftware Installation Script | Deark
TAR | [Tape Archive](https://en.wikipedia.org/wiki/Tar_(computing)) | 7-Zip
WAD | [Doom](https://en.wikipedia.org/wiki/Doom_(1993_video_game)) WAD | Deark
XZ | Tukaani [XZ](https://tukaani.org/xz/format.html) | 7-Zip
YYY/?Y? | CrLHZ | Deark
Z | InstallShield Z Archive | Deark
Z | SCO Unix compress | Deark
ZIP | PKWare [ZIP](https://en.wikipedia.org/wiki/ZIP_(file_format)) | 7-Zip
ZOO | [Zoo](https://en.wikipedia.org/wiki/Zoo_(file_format)) | Deark

## Supported disk/disc image formats

Ext. | Description | Program
--- | --- | ---
ADF | [Amiga Disk File](https://en.wikipedia.org/wiki/Amiga_Disk_File) | Deark
ATR | Atari Disk Image | Deark
D64 | C64 1541 Disk Image | Deark
DMS | [Amiga Disk Masher System](https://en.wikipedia.org/wiki/Disk_Masher_System) | Deark
HFS | [Apple Hierarchical File System](https://en.wikipedia.org/wiki/Hierarchical_File_System_(Apple)) | Deark
ISO | [Apple Partition Map](https://en.wikipedia.org/wiki/Apple_Partition_Map) | Deark
ISO | [ISO 9660](https://en.wikipedia.org/wiki/ISO_9660) CD-ROM | Deark
MSA | Atari ST Magic Shadow Archiver | Deark
NRG | [Nero Burning ROM](https://en.wikipedia.org/wiki/Nero_Burning_ROM) | Deark
STX | Atari ST Pasti | Deark

## Credits

* [7-Zip](https://7-zip.org/)
* [Deark](https://entropymine.com/deark/)
* [FLIF](http://flif.info/)
* [Ghostscript](https://ghostscript.com)
* [ImageMagick](https://github.com/ImageMagick/ImageMagick)
* [JBIG-KIT](https://www.cl.cam.ac.uk/~mgk25/jbigkit/)
* [jxrlib](https://github.com/4creators/jxrlib)
* [Lhasa](http://fragglet.github.io/lhasa/)
* [libbpg](https://bellard.org/bpg/)
* [libjxl](https://jpeg.org/jpegxl/software.html)
* [LOCO](https://www.hpl.hp.com/loco/)
* [NConvert](https://www.xnview.com/en/nconvert/)
* [pwcdecode](http://www.caravian.com/research/index.htm)
* [Swiss File Knife](http://stahlworks.com/swiss-file-knife.html)
* [UnRAR](https://www.rarlab.com/)
* [x3f_extract](https://github.com/rolkar/x3f)

## To do
### ImageMagick
* AVI/AVIF/M2V/MPEG
* BAYER
* CALS Type 2 (CT2) - multi page, can't find any examples
* CMYK/CMYKA - no header?
* CUT (Dr. Halo clip mask) - tricky detection
* DCM - multi page sometimes?; failed on (some) samples from https://telparia.com/fileFormatSamples/image/dicom/
* DJVU/EPDF/HTML/MAN/PDF/POCKETMOD - multi page/embedded images
* DNG/NEF - loads as TIFF but better detection needed
* DMR
* DOT graph format
* FAX/G3 - no header?
* FPX - unsupported
* FTXT - failed on samples
* GPLT
* GRAY/GRAYA
* HEIC/HEIF
* HPGL
* MONO - no header
* MPO - multi page, only first page is loaded
* MTV - unusable header
* MVG - failed on sample
* PCL
* PFA/PFB
* PICT - failed on samples from http://cd.textfiles.com/cdreview/cdreview66/PCT01_01/PC0101P/
* PSD/PSB/TIFF/XCF layers
* PTIF - multi page
* PWP - multi page
* RAD
* RAW/RGB/UYVY/YUV - no header
* RGF - https://mattrajca.com/2016/01/06/legos-rgf-file-format.html
* SID
* TGA - unhelpful header
* TTF

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
* Dali - failed on some samples from https://telparia.com/fileFormatSamples/image/dali/
* Datacopy - ?
* DEGAS compressed - header too vague
* Digital F/X TDIM
* GEM Raster - doesn't work with non-XIMG files; failed on some samples from https://telparia.com/fileFormatSamples/image/gem/
* Discorp CMP - no samples
* DjVu - document with embedded images
* C64 DolphinEd - no samples
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
* FlashPix FPX - unsupported
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
* JBIG2
* JPEG 8BIM
* Jigsaw 2 - samples from http://fileformats.archiveteam.org/wiki/Jigsaw_(Walter_A._Kuhn) look wrong
* Jovian Logic VI - no samples
* Just Buttons - only extracts embedded BMP
* KONTRON - no samples
* KinuPix - no samples
* KiSS Cel - only loads palette if KCF & CEL files have the same name
* KoalaPainter GG compressed - insufficient header
* Kodak DC120 Digital Camera - fails on sample from https://telparia.com/fileFormatSamples/image/kodakKDC/
* Kofax Group 4 - no samples
* LSS16 - no samples
* LView Pro - no samples
* LaserData - no samples
* Light Work Image - no samples
* LucasFilm Format - failed on sample from http://ftp.funet.fi/index/graphics/packages/lff/lff.tar.gz
* Lumena CEL - no samples
* LuraDocument LDF - no samples
* JPM
* LuraWave
* PhotoSuite Project - actually a Microsoft Compound File
* MGR bitmap - only "yz" variant found
* MTV - failed on samples from https://telparia.com/fileFormatSamples/image/mtv/ and header is tricky
* MacPaint - some files are headerless
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
* PSP - layers & vectors not supported
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
* Q0 - no samples
* QDV - no samples
* Quantel VPB - inconsistent header; samples on https://github.com/GeoSpark/vpb-converter/tree/master/samples
* RIPscrip icon - can't figure out format
* Radiance PIC/RAD - failed on samples from https://radsite.lbl.gov/radiance/pub/pics/index.html
* Rayshade PIC - same as MTV but doesn't work?
* Red Storm RSB - no samples
* Ricoh J6I - no samples
* Ricoh fax - no samples
* Ricoh IS30 PIG - no samples
* SBIG CCD - no samples
* SPOT - ?
* Scifax - no samples
* Secret Photos - no samples
* Sega Digio - no samples
* Sharp GPB - no samples
* Siemens Mobile BMX - no sample
* Skantek - ?
* Smartdraw 6 - no samples
* Smartfax - no samples
* SmoothMove - no samples
* Solitaire Image Recorder - no samples
* Sony DSC-F828 - no samples
* TIM2 - no samples
* Spectrum 512 SPC/SPS - can't differentiate
* Srisun SSI - no samples
* StarOffice Gallery - failed on samples from https://newsgroup.xnview.com/viewtopic.php?f=36&t=39611
* Starbase - no samples
* Starlight Xpress SX 500x291 - no samples
* SFF
* Sun TAAC - no samples
* Syberia SYJ - no samples
* Synthetic Universe - no samples
* TG4 - ?
* TMSat IMI - no samples
* TealPaint - no samples
* Teli fax - no samples
* Thumbnail TNL - ?
* Tilepic - no samples
* Tiny Stuff - can't detect padded files
* TopDesign thumbnail - no samples
* Total Annihilation GAF - no samples
* TGA - tricky detection
* Ulead PST - no samples
* Ulead PhotoImpact UPI - no samples
* Ulead PE4 thumbnail cache - failed on sample from https://archive.org/download/Ulead_Systems_iPhotoPlus_4_ULEAD_1996
* Usenix FACE - failed on sample from http://fileformats.archiveteam.org/wiki/FaceSaver
* VIPS - no samples
* VITec - no samples
* VRML2 - no samples
* Venta fax - no samples
* Verity VIF - no samples
* VDA/Vista VST - no samples; TGA variants?
* Vivid IMG - no samples; same as Alias PIX?
* VORT - no samples
* Vue d'Espirit - only reads thumbnail
* Half-Life WAD - file names not preserved
* IWC
* Webshots - no WBZ samples
* Weekly Puzzle - no samples
* WhyPic
* Windows Clipboard - failed on most samples from https://telparia.com/fileFormatSamples/image/windowsClipboard/
* WBMP - detection not the best; will fail if height/width are substancially different
* Worldport fax - no samples
* XWD - DMP files look wrong from https://telparia.com/fileFormatSamples/image/xwd/
* Xara - failed on samples from https://telparia.com/fileFormatSamples/image/xara/ and probably only reads embedded images
* XIM - no samples
* Xionics fax - no samples
* YUV - raw files with no headers?
* ZX Spectrum Hobeta - no samples
* ZX Spectrum Snapshot - no samples
* Zeiss BIVAS - no samples
* Zoner ZMF - no samples, vector format and possibly just a ZIP file
* Zoner ZBR - vector format; only loads thumbnail
* byLight 20/20 - no samples

### Deark
* ADEX IMG - no samples
* Alpha Microsystems BMP - no samples
* Autodesk Animator PIC/CEL - no samples
* ArtWorx Data Format - header is only 1 byte
* AutoCAD Slide Library - the slides themselves aren't viewable
* BIN - can't detect files without SAUCE footer
* MegaPaint BLD - unhelpful header
* Zoner BMI - no samples
* BLOAD - wrong resolution sometimes
* Cardfile - failed on some samples from https://telparia.com/fileFormatSamples/document/cardfile/ and possibly only reads embedded images
* Compface - no header
* Corel CCX - decompresses to CMX; CMX viewer needed
* CorelDraw CDR/Corel Gallery BMF - vector format; thumbnails only
* DEGAS compressed - header too vague
* DL MAKER - header only 1 byte
* Dr Halo CUT - unhelpful header
* GEM Raster IMG - failed on samples from https://telparia.com/fileFormatSamples/image/gem/
* HS2 - no header
* Amiga ILBM - failed on a few samples from https://telparia.com/fileFormatSamples/image/iffILBM/
* JPEG XR - failed on samples from https://telparia.com/fileFormatSamples/image/jpegXR/
* Lotus Manuscript - no samples
* LSS16 - no samples
* Lumena CEL - no samples
* MAKIchan Graphics - failed on some samples from https://telparia.com/fileFormatSamples/image/makichan/
* MegaPaint Symbol Library - no samples
* OLPC 565 - no samples
* PICT - only extracts embedded files
* APNG - only extracts frame diffs
* Print Shop DAT/NAM - no header
* QDV - no samples
* QTIF - only contains one image but can be of any type, so "unpack" had to be used
* Acorn Draw - vector format, only extracts sprites
* Spectrum 512 SPC/SPS - can't differentiate
* STOS MBK - failed on samples from https://telparia.com/fileFormatSamples/image/stosBank/
* TGA - tricky detection
* VITec ELT - no samples
* VORT - no samples
* Windows 1.0 icon/cursor - no samples
* X-Face - only works if header is present
* YBM - no samples
* FNT - vector fonts not supported
* GRASP font - only detects 7-byte header version; failed on some samples from http://fileformats.archiveteam.org/wiki/GRASP_font
* PSF - untested on v2
* PFF2 - failed on sample from http://fileformats.archiveteam.org/wiki/PFF2
* GNU Unifont HEX - failed on most samples from http://fileformats.archiveteam.org/wiki/HEX_(Unifont)
* VGA font - no samples
* ADF - failed on some samples from https://telparia.com/fileFormatSamples/archive/adfOFS/
* Apple II disk image - no samples
* Apple Partition Map - toast format not supported
* AppleSingle/AppleDouble - no samples
* ar001 - no samples
* ARC - tricky detection; most files don't end with $1A00 as they should
* ArcMac - no samples
* ARX - no samples
* CAR - no samples; may be indistinguishable from LHA
* CD/raw - ?
* compress Z - no samples; 7-zip may work anyway
* CP Shrink - no samples
* Crunch - failed on most samples from https://telparia.com/fileFormatSamples/archive/crunch/
* Crush - no samples
* DCL Implode - no samples
* Deflate - no samples
* EXEPACK - no samples
* FAT - ?
* LHarc self extracting - no samples
* LZEXE - no samples
* LZHUF - no samples
* LZ-Stac - no samples
* LZS221 - no samples
* LZSS Haruhiko Okumura - no samples
* LZWCOM - no samples
* Microsoft Compound File Binary - might need some work
* MOOF - doesn't extract files
* pack - no samples
* Pasti - failed on http://pasti.fxatari.com/downloads/UnionDemo.zip
* SparkFS - insufficient info
* StuffIt - failed on samples from http://fileformats.archiveteam.org/wiki/Stuffit
* WOZ - doesn't extract anything
* zlib raw - no samples
* Zoo filter/Z formats - no samples
* ZSQ - no samples

### Other
* BPG - animation frames not extracted by libbpg