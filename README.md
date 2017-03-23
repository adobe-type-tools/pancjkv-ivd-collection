# PanCJKV IVD Collection

**PanCJKV IVD Collection** is an unregistered [IVD](http://www.unicode.org/ivd/) (*Ideographic Variation Database*) collection that assigns eleven IVSes (*Ideographic Variation Sequences*), one for each region among VN (Vietnam), KP (DPRK), KR (ROK), JP (Japan), MY (Malaysia), MO (Macao SAR), HK (Hong Kong SAR), TW (ROC), SG (Republic of Singapore), CN (PRC), and XK (K&#x0101;ngx&#x012B;) as a pseudo-region, to all [CJK Unified Ideographs](https://en.wikipedia.org/wiki/CJK_Unified_Ideographs) ([80,388 in Unicode Version 8.0](https://blogs.adobe.com/CCJKType/files/2015/07/ideographs-unicode-8.pdf)). VS246 (U+E01E5) through VS256 (U+E01EF), which represent the final eleven VSes (*Variation Selectors*), are used for this purpose, and each one uniformly corresponds to one of the eleven supported regions, assigned in the order shown above. Thus, this IVD collection includes 884,268 IVSes.

Included in this project are the standard IVD data files, *IVD_Collections.txt*, *IVD_Sequences.txt*, and *IVD_Stats.txt*, to which the "PanCJKV" IVD collection has been added. These data files are based on the current ([2014-05-16](http://www.unicode.org/ivd/data/2014-05-16/)) version of the IVD. The *mkpancjkvivd.pl* script in the *Scripts* directory was used to create the data that was added to the *IVD_Sequences.txt* file.

Also included in this project are two example font implementations, both of which are based on the language-specific Simplified Chinese [Source Han Sans](https://github.com/adobe-fonts/source-han-sans) OpenType/CFF font, but its *SC* identifier has been changed to *R04* or *R11*. The *mkpancjkvivs.pl* script in the *Scripts* directory was used to create the *SourceHanSansR04_CN_sequences.txt* and *SourceHanSansR11_CN_sequences.txt* UVS (*Unicode Variation Sequence*) definition files in the *Sources* directory (the *mkuvs.sh* script in the same directory can be used to regenerate those files), which are used as the argument of the [AFDKO](https://www.adobe.com/devnet/opentype/afdko.html) *makeotf* tool's *-ci* command-line option. (The UTF-32 to CID mapping files in the *Resources* directory are those for [Source Han Sans](https://github.com/adobe-fonts/source-han-sans/tree/release/Resources), and are used as arguments to that script's per-region command-line options.) The *SourceHanSansR04_CN_sequences.txt* UVS definition file includes only a subset of the "PanCJKV" IVD collection, specifically covering 29,777 CJK Unified Ideograph code points and four regions (CN, TW, JP, and KR), which means that only 119,108 of the 884,268 IVSes are included. Of these 119,108 IVSes, 91,307 become default UVSes, and the remaining 27,801 become non-default ones. The *SourceHanSansR11_CN_sequences.txt* UVS definition file aliases IVSes for unsupported regions to supported ones as appropriate, specifically MY/SG to CN, HK/MO/VN to TW, and KP/XK to KR. 327,547 of the 884,268 IVSes are included in this UVS definition file. Of these 327,547 IVSes, 255,558 become default UVSes, and the remaining 71,989 become non-default ones.

Pending UTC approval based on [L2/16-063](http://www.unicode.org/L2/L2016/16063-pancjkv-ivd-collection.pdf), this IVD collection will be submitted for registration in the near future, which will entail issuing a [PRI](http://www.unicode.org/review/) (*Public Review Issue*) with a 90-day review period. Once registered, this project will serve as the site that describes the "PanCJKV" IVD collection. In addition, support for this IVD collection will be added to Source Han Sans.

## Example font installation instructions

* [macOS](https://support.apple.com/en-us/HT201749)
* [Windows](https://www.microsoft.com/en-us/Typography/TrueTypeInstall.aspx)
* [Linux/Unix-based systems](https://github.com/adobe-fonts/source-code-pro/issues/17#issuecomment-8967116)

## Building the example font from source

### Requirements

To build the binary example font file from source, you need to have installed the [Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building the example font

All necessary files for building the example OpenType/CFF font are in the *Sources* directory of this project, and the *commands.sh* file in the same directory provides the command lines that are used.

## Getting Involved

Send any feedback to the PanCJKV IVD Collection project maintainer, [Dr. Ken Lunde](mailto:lunde@adobe.com?subject=[GitHub]%20PanCJKV%20IVD%20Collection), for consideration.
