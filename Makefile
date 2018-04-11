# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ashih <ashih@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/02/08 09:42:32 by ashih             #+#    #+#              #
#    Updated: 2018/04/11 09:16:50 by ashih            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc

NAME = RTv1

CFLAGS = -Wall -Werror -Wextra
HEADERS = -I$(INCLUDES) -I$(LIBFT)/includes -I$(MINILIBX)

INCLUDES = includes/
LIBFT = libft/
MINILIBX = minilibx/

SRCS = color.c \
freedom.c \
intersect.c \
keys.c \
keys_2.c \
keys_3.c \
keys_4.c \
keys_5.c \
keys_6.c \
keys_7.c \
light.c \
main.c \
matrix.c \
mouse.c \
object.c \
object_2.c \
parse_camera.c \
parse_light.c \
parse_object.c \
parser.c \
ppm.c \
quadratic.c \
render.c \
render_2.c \
render_3.c \
render_th.c \
surface.c \
vect3.c \
vect3_2.c \
vect3_3.c

SRCDIR = srcs/
OBJDIR = objs/
OBJS = $(addprefix $(OBJDIR), $(SRCS:.c=.o))

LIBFT_LIB = $(addprefix $(LIBFT), libft.a)
MLX_LIB = $(addprefix $(MINILIBX), libmlx.a)

all: $(LIBFT_LIB) $(MLX_LIB) $(NAME)

$(LIBFT_LIB):
	@echo "\x1b[1mBuilding $(LIBFT) library...\x1b[0m"
	@make -C $(LIBFT)
	@echo

$(MLX_LIB):
	@echo "\x1b[1mBuilding $(MINILIBX) library...\x1b[0m"
	@make -C $(MINILIBX)
	@echo

$(OBJDIR)%.o: $(SRCDIR)%.c
	@mkdir -p $(OBJDIR)
	$(CC) -c $(CFLAGS) $(HEADERS) $< -o $@

$(NAME): $(OBJS)
	@echo "\x1b[1mBuilding $(NAME)...\x1b[0m"
	$(CC) -o $(NAME) $(OBJS) -L$(LIBFT) -lft -L$(MINILIBX) -lmlx\
		-lpthread -framework OpenGL -framework AppKit
	@echo "\x1b[1mBuild finished!!\x1b[0m"

clean:
	@echo "\x1b[1mCleaning...\x1b[0m"
	make -C $(LIBFT) clean
	make -C $(MINILIBX) clean
	/bin/rm -rf $(OBJDIR)
	@echo

fclean: clean
	@echo "\x1b[1mFcleaning...\x1b[0m"
	/bin/rm -f $(LIBFT_LIB)
	/bin/rm -f $(MLX_LIB)
	/bin/rm -f $(NAME)
	@echo

re: fclean all

.PHONY: all clean fclean re
