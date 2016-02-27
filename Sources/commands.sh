perl ../Scripts/mkpancjkvivs.pl -cn ../Resources/utf32-cn.map -tw ../Resources/utf32-tw.map -jp ../Resources/utf32-jp.map -kr ../Resources/utf32-kr.map < ../IVD_Sequences.txt > SourceHanSans_CN_sequences.txt
makeotf -f cidfont.ps -ff features -fi cidfontinfo -mf FontMenuNameDB -r -nS -omitMacNames -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSans_CN_sequences.txt
sfntedit -a DSIG=DSIG.bin SourceHanSansPanCJKV-Regular.otf
sfntedit -f SourceHanSansPanCJKV-Regular.otf
