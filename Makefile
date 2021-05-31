SRCS		= ${shell find '.' -name "*.s"}
OBJS		= ${SRCS:.s=.o}
RM			= rm -f
AR			= ar csr
NA			=	../../homebrew/bin/nasm
NA_FLAGS	=	-f macho64
FLAGS 		=	-Wall -Werror -Wextra
NAME		=	libasm.a

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

compile:		$(NAME)
		gcc -L. -lasm main.c && ./a.out

re:	fclean all

clean:
		rm -f $(OBJS)

fclean:	clean
		rm -f $(NAME) a.out