CXX := c++
CXXFLAGS := -Wall -Wextra -Werror -std=c++98
NAME := ft_irc
SRC_DIR := srcs
SRCS := $(SRC_DIR)/main.cpp
OBJS := $(SRCS:.cpp=.o)
RM := rm -f

all: $(NAME)

$(NAME): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(NAME)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
