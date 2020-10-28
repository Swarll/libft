# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: grigaux <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/09 14:08:14 by grigaux           #+#    #+#              #
#    Updated: 2019/10/16 15:39:10 by grigaux          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB = ar -rc
RM = rm -f

CC = gcc
CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	  ft_isdigit.c ft_isprint.c ft_memcpy.c ft_memccpy.c ft_memchr.c \
	  ft_memcmp.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c ft_strjoin.c \
	  ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
	  ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_split.c \
	  ft_itoa.c ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	  ft_putnbr_fd.c

OBJS = $(SRCS:.c=.o)
INCLUDE = libft.h

BONUSSRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
			ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BONUSOBJS = $(BONUSSRCS:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJS) $(INCLUDE)
			$(LIB) $(NAME) $(OBJS)

bonus: CFLAGS += -D LIBFT_BONUS
bonus: $(OBJS) $(BONUSOBJS) $(INCLUDE)
		$(LIB) $(NAME) $(OBJS) $(BONUSOBJS)

%.o:		%.c
			$(CC) $(CFLAGS) -c -o $@ $<

clean:
			$(RM) $(OBJS)  $(BONUSOBJS)

fclean: 	clean
			$(RM) $(NAME)

re: 		fclean all

rebonus:	fclean bonus

.PHONY:		all clean fclean re