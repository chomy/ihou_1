TEX=platex
DVIPDF=dvipdf
DVIPS=dvips

PREFIX=ihou
DVI=${PREFIX}.dvi
PDF=${PREFIX}.pdf
PS=${PREFIX}.ps
TEXFILES=ihou.tex radio.tex

.suffix: .tex .dvi

all: ${DVI}

pdf: ${PDF}

ps: ${PS}


${DVI}: ${TEXFILES}
	${TEX} ihou.tex

${PDF}: ${DVI} 
	${DVIPDF} ${DVI}

${PS}: ${DVI} 
	${DVIPS} ${DVI}

clean:
	rm -f ${DVI} ${PDF} ${PS}  *.log *.aux

