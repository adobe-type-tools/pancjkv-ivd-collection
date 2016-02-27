perl ../Scripts/mkpancjkvivs.pl -xk ../Resources/utf32-kr.map -cn ../Resources/utf32-cn.map -sg ../Resources/utf32-cn.map -tw ../Resources/utf32-tw.map -hk ../Resources/utf32-tw.map -mo ../Resources/utf32-tw.map -my ../Resources/utf32-cn.map -jp ../Resources/utf32-jp.map -kr ../Resources/utf32-kr.map -kp ../Resources/utf32-kr.map -vn ../Resources/utf32-tw.map < ../IVD_Sequences.txt > SourceHanSans_CN_sequences-aliased.txt
makeotf -f cidfont.ps -ff features -fi cidfontinfo -mf FontMenuNameDB -r -nS -omitMacNames -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSans_CN_sequences-aliased.txt
sfntedit -a DSIG=DSIG.bin SourceHanSansPanCJKV-Regular.otf
sfntedit -f SourceHanSansPanCJKV-Regular.otf
