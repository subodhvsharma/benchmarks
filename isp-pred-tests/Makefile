
CC=../../isp-trunk/bin/ispcc
SRCDIR=regression
SOURCES=$(SRCDIR)/dl1.c\
	$(SRCDIR)/dl2.c\
	$(SRCDIR)/dl3.c\
	$(SRCDIR)/dl4.c\
	$(SRCDIR)/dl5.c\
	$(SRCDIR)/dl6.c\
	$(SRCDIR)/dl7.c\
	$(SRCDIR)/dl8.c\
	$(SRCDIR)/dl9.c\
	$(SRCDIR)/dtg.c\
        $(SRCDIR)/test5.c\
        $(SRCDIR)/diffusion.c\
	$(SRCDIR)/diffusion2.c\
	$(SRCDIR)/diffusion2_nd.c\
	$(SRCDIR)/diffusion2_nd_8.c\
	$(SRCDIR)/diffusion2_nd_16.c\
	$(SRCDIR)/integrate_mw.c\
	$(SRCDIR)/integrate_nb.c\
	$(SRCDIR)/integrate_spec.c\
	$(SRCDIR)/mat_mul.c\
	$(SRCDIR)/monte.c\
	$(SRCDIR)/steve-mat-mul.c \
	$(SRCDIR)/floyd.c\
        $(SRCDIR)/GE.c\
        $(SRCDIR)/heat-errors.c\
	$(SRCDIR)/zeroB-misses-dl.c\
	$(SRCDIR)/zeroB-deadlocks.c\
	$(SRCDIR)/different_tags.c

EXEC=$(SOURCES:.c=.exe)

PRED=$(SOURCES:.c=.pred)

all: $(SOURCES) $(EXEC) $(PRED) 

clean:
	rm -rf $(EXEC) $(PRED)

%.exe: %.c
	$(CC) $< -o $@ -lm

%.pred: %.c
	$(CC) $< -o $@ -lm
