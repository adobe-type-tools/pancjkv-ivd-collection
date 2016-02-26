makeotf -f cidfont.ps -ff features -fi cidfontinfo -mf FontMenuNameDB -r -nS -omitMacNames -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSans_CN_sequences.txt
sfntedit -a DSIG=DSIG.bin SourceHanSansPanCJKV-Regular.otf
sfntedit -f SourceHanSansPanCJKV-Regular.otf
