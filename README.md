# PanCJK IVD Collection

PanCJKV IVD Collection is an experimental and unregistered [IVD](http://www.unicode.org/ivd/) (*Ideographic Variation Database*) collection that assigns eight IVSes (*Ideographic Variation Sequences*), one for each region among CN (PRC), TW (ROC), HK (Hong Kong SAR), MO (Macao SAR), JP (Japan), KR (ROK), KP (DPRK), and VN (Vietnam), to all CJK Unified Ideographs ([80,388 in Unicode Version 8.0](https://blogs.adobe.com/CCJKType/files/2015/07/ideographs-unicode-8.pdf)). VS249 (U+E01E8) through VS256 (U+E01EF), which represent the final eight VSes (*Variation Selectors*), are used for this purpose, and each one uniformly corresponds to one of the eight supported regions, assigned in the order shown above. Thus, this IVD collection includes 643,104 IVSes.

Included in this project are the standard IVD data files, *IVD_Collections.txt*, *IVD_Sequences.txt*, and *IVD_Stats.txt*, to which the PanCJKV IVD collection has been added. These data files are based on the current ([2014-05-16](http://www.unicode.org/ivd/data/2014-05-16/)) version of the IVD. The *mkpancjkvivd.pl* script in the Scripts directory was used to create the data that was added to the *IVD_Sequences.txt* file.

Also included in this project is an example font implementation, which is based on the Simplified Chinese (language-specific) [Source Han Sans](https://github.com/adobe-fonts/source-han-sans) OpenType/CFF font, but its *SC* identifier has been changed to *IVS*. The *mkpancjkvivs.pl* script in the Scripts directory was used to create the *SourceHanSans_CN_sequences.txt* UVS (*Unicode Variation Sequence*) definition file in the Sources directory, which is used as the argument of the [AFDKO](https://www.adobe.com/devnet/opentype/afdko.html) *makeotf* tool's *-ci* command-line option. (The UTF-32 to CID mapping files in the Resources directory are those for [Source Han Sans](https://github.com/adobe-fonts/source-han-sans/tree/release/Resources), and are used as arguments to that script's per-region command-line options.) Note that this UVS definition file includes only a subset of the PanCJKV IVD collection, specifically covering 29,777 CJK Unified Ideograph code points and four regions (CN, TW, JP, and KR), which means that only 119,108 of the 643,104 IVSes are included. Of these 119,108 IVSes, 91,307 become default UVSes, and the remaining 27,801 become non-default ones.

If this IVD collection proves to be useful, it will be submitted for registration, but it may also undergo UTC (*Unicode Technical Committee*) scrutiny due to its large number of IVSes.

## Font installation instructions

* [OS X](http://support.apple.com/kb/HT2509)
* [Windows](http://windows.microsoft.com/en-us/windows-vista/install-or-uninstall-fonts)
* [Linux/Unix-based systems](https://github.com/adobe-fonts/source-code-pro/issues/17#issuecomment-8967116)

## Building the font from source

### Requirements

To build the binary font file from source, you need to have installed the [Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building the font

In this repository, all necessary files for building the OpenType/CFF font are in the Sources directory, and the *commands.sh* file in the same directory provides the command lines that are used.

## Getting Involved

Send suggestions for changes to the PanCJKV IVD Collection project maintainer, [Dr. Ken Lunde](mailto:lunde@adobe.com?subject=[GitHub] PanCJKV IVD Collection), for consideration.
