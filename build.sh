#���û��bash�����Ի���#!/bin/sh  
#!/bin/bash    



#���������
make cmd_svr
#����ͻ���
make cmd_cli

#ִ��py�ű������Զ�������������ת���������ӵ�shell�ű���û��python3�Ŀ��Ըĳ�python2
python3 ./build_list.py  ./ && \
#�������ɵ�sh�ű���/binĿ¼����
mv -vf cmd_list  /bin/cmd_list.sh && \

mv -vf cmd_cli   /var/

#ִ��shell�ű�
chmod 777 /bin/cmd_list.sh
/bin/cmd_list.sh

#����������
sudo ./cmd_svr& 