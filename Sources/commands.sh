makeotf -f cidfont.ps.R04 -ff features -fi cidfontinfo.R04 -mf FontMenuNameDB -r -nS -omitMacNames -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSansR04_CN_sequences.txt
sfntedit -a DSIG=DSIG.bin SourceHanSansR04-Regular.otf
sfntedit -f SourceHanSansR04-Regular.otf

makeotf -f cidfont.ps.R11 -ff features -fi cidfontinfo.R11 -mf FontMenuNameDB -r -nS -omitMacNames -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSansR11_CN_sequences.txt
sfntedit -a DSIG=DSIG.bin SourceHanSansR11-Regular.otf
sfntedit -f SourceHanSansR11-Regular.otf
