# ������ѡ��
CC := gcc
LIBS = -pthread -lrt            #��̬��
# Ŀ���ļ�
TARGET := cmd_svr
TARGET2 := cmd_cli

# ��̬������
STATIC_LIB_NAME := libperipheral

#�ļ�����Ŀ¼
SRC_DIR = $(CURDIR)
# ͷ�ļ�����Ŀ¼
INC_DIR := $(SRC_DIR)/include

# Դ�ļ���ͷ�ļ�
SRCS := $(wildcard $(SRC_DIR)/*.c)
OBJS := $(SRCS:.c=.o)



CFLAGS := -g -I $(INC_DIR) $(LIBS) #-Wextra #-Wall 


# Ĭ�����ɿ�ִ���ļ�
.PHONY: cmd_svr
all: $(TARGET)
$(TARGET): $(filter-out $(SRC_DIR)/app_cmd_client.o,$(OBJS))
	$(CC) $(CFLAGS) -o $@ $^  


.PHONY: cmd_cli
cmd_cli: app_cmd_client.o
	$(CC) $(CFLAGS) -o $(TARGET2)  app_cmd_client.o

# ������ɵ��ļ�
.PHONY: clean
clean:
	rm -f $(TARGET) $(TARGET2) $(STATIC_LIB_NAME).a $(OBJS)
