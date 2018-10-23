all: summarunner_extractor rnn_extractor s2s_extractor cl_extractor \
	avg_encoder rnn_encoder cnn_encoder

avg_encoder:
	pdflatex avg_encoder.tex
	rm -f avg_encoder.aux avg_encoder.log

rnn_encoder:
	pdflatex rnn_encoder.tex
	rm -f rnn_encoder.aux rnn_encoder.log

cnn_encoder:
	pdflatex cnn_encoder.tex
	rm -f cnn_encoder.aux cnn_encoder.log

summarunner_extractor:
	pdflatex sr_extractor.tex
	rm -f sr_extractor.aux sr_extractor.log

rnn_extractor:
	pdflatex rnn_extractor.tex
	rm -f rnn_extractor.aux rnn_extractor.log

cl_extractor:
	pdflatex cl_extractor.tex
	rm -f cl_extractor.aux cl_extractor.log

s2s_extractor:
	pdflatex s2s_extractor.tex
	rm -f s2s_extractor.aux s2s_extractor.log

clean:
	rm -f sr_extractor.pdf rnn_extractor.pdf cl_extractor.pdf s2s_extractor.pdf
	rm -f avg_encoder.pdf rnn_encoder.pdf cnn_encoder.pdf
