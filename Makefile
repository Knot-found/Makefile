.PHONY:all
ifeq ($(JOBS),)
	JOBS := 4
endif

PROG := basic
SRCS := basic.c command.c source.c statement1.c stub.c utility.c
OBJS := $(SRCS:%.c=%.o)
DEPS := $(SRCS:%.c=%.d)
CC := gcc

all: $(PROG)

$(PROG): $(OBJS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -MMD $<


