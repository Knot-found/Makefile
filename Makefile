.PHONY:all
ifeq ($(JOBS),)
	JOBS := 4
endif

PROG := basic
SRCS := basic.c command.c source.c statement1.c stub.c utility.c
OBJS := $(SRCS:%.c=%.o)
CC := gcc

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) -o $@ $(OBJS)

%.o: %.c
	$(CC) -o $@ -c $<


