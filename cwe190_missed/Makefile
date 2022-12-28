ifeq ($(OPT),)
OPT := -O1
endif

SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=)

all: $(OBJS)

%: %.c
	$(CC) -g $(OPT) $< -o $@
