ifeq ($(OPT),)
OPT := -O1
endif

SRCS := $(wildcard *.c)
OBJS := $(SRCS:.c=.o)

all: $(OBJS)

%.o: %.c
	$(CC) -g $(OPT) -c $< -o $@
