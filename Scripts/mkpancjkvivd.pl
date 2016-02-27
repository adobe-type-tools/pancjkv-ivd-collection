#!/usr/bin/perl

# Written by Dr. Ken Lunde (lunde@adobe.com)
# Senior Computer Scientist 2, Adobe Systems Incorporated
# Version 2016-02-26

# This tool generates the PanCJKV IVD collection data that is to be
# added to the IVD_Sequences.txt data file.

# Tool Dependencies: None

%region2vs = (
    "XK" => "E01EF",
    "CN" => "E01EE",
    "SG" => "E01ED",
    "TW" => "E01EC",
    "HK" => "E01EB",
    "MO" => "E01EA",
    "MY" => "E01E9",
    "JP" => "E01E8",
    "KR" => "E01E7",
    "KP" => "E01E6",
    "VN" => "E01E5",
);

# Unicode Version 8.0: 80,388 Code Points

foreach $uni (hex("3400")..hex("4DB5"),hex("4E00")..hex("9FA5"),hex("9FA6")..hex("9FBB"),hex("9FBC")..hex("9FC3"),hex("9FC4")..hex("9FCB"),hex("9FCC"),hex("9FCD")..hex("9FD5"),hex("FA0E")..hex("FA0F"),hex("FA11"),hex("FA13")..hex("FA14"),hex("FA1F"),hex("FA21"),hex("FA23")..hex("FA24"),hex("FA27")..hex("FA29"),hex("20000")..hex("2A6D6"),hex("2A700")..hex("2B734"),hex("2B740")..hex("2B81D"),hex("2B820")..hex("2CEA1")) {

# Unicode Version 10.0 (TENTATIVE): 87,893 Code Points

# foreach $uni (hex("3400")..hex("4DB5"),hex("4E00")..hex("9FA5"),hex("9FA6")..hex("9FBB"),hex("9FBC")..hex("9FC3"),hex("9FC4")..hex("9FCB"),hex("9FCC"),hex("9FCD")..hex("9FD5"),hex("9FD6")..hex("9FE9"),hex("FA0E")..hex("FA0F"),hex("FA11"),hex("FA13")..hex("FA14"),hex("FA1F"),hex("FA21"),hex("FA23")..hex("FA24"),hex("FA27")..hex("FA29"),hex("20000")..hex("2A6D6"),hex("2A700")..hex("2B734"),hex("2B740")..hex("2B81D"),hex("2B820")..hex("2CEA1"),hex("2CEB0")..hex("2EBEC")) {
    $char = sprintf("%04X",$uni);
    foreach $region (sort {$region2vs{$a} cmp $region2vs{$b}} keys %region2vs) {
        if (length($char) == 4) {
            $glyph = sprintf("uni%04X",$uni);
        } else {
            $glyph = sprintf("u%04X",$uni);
        }
        print STDOUT "$char $region2vs{$region}; PanCJKV; ${glyph}_$region\n";
    }
}
