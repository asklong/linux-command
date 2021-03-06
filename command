Create A New Directory
The simplest way to create a new directory is as follows:
mkdir <foldername>

 copy a folder with files in that folder into another folder
 cp -R source destination/
If destination doesn't exist, it will be created.
R means "copy directories recursively"

create a soft link:
[root@localhost test]# ln -s log2013.log link2013
[root@localhost test]# ll
lrwxrwxrwx 1 root root     11 12-07 16:01 link2013 -> log2013.log

delete all the soft link under certain path, we should go to that path first
find -type l -delete [PATH]

delete a softlink
unlink – deletes a single specified file name including symbolic links.


how to solve Permission denied
在linux下执行sh文件时提示下面信息：
-bash: ./xx.sh: Permission denied
解决：
chmod 777 xx.sh

linux check pid
top


linux copy folder
cp -R source destination/



linux check gpu information:
nvidia-smi

go to another machine
#!/usr/bin/expect
set timeout 30
spawn ssh admin@XX.XX.XX.XX
expect "admin@XX.XX.XX.XX's password:"
send "your password\r"
sleep 0.2
send "source XX\r"
sleep 0.2
send "cd\r"
interact


linux quit without save
!q



Linux uses the mv (move) command to rename for either a directory (folder) or a file.
mv old_folder_name new_folder_name




linux run process on background
Execute the script with redirection
$ nohup sh custom-script.sh > custom-out.log &
Execute the script without redirection
$ nohup sh custom-script.sh &



get stand out put by pid
You can get that process's standard file descriptors, e.g. stdout:
tail -f /proc/<pid>/fd/1

get running python:
ps -ef |grep python


http://blog.sina.com.cn/s/blog_4dd4753901017jwj.html
split large file
模式一：指定分割后文件行数
对与txt文本文件，可以通过指定分割后文件的行数来进行文件分割。
命令：split -l 300 large_file.txt new_file_prefix
模式二：指定分割后文件大小
split -b 10m server.log waynelog


Linux check disk space with df command
df -h


添加定时任务【推荐】
Step-One : 编辑任务脚本【分目录存放】【ex: backup.sh】
Step-Two : 编辑定时文件【命名规则:backup.cron】
Step-Three : crontab命令添加到系统crontab backup.cron
Step-Four : 查看crontab列表 crontab -l
crontab -e: edit your schedule
# 每天早上6点 
00 06 * * * sh /home/ke.jin/gen_pair_data_test/script/pre_sku/process_sku_data.sh
47 * * * *  /bin/sh /data0/home/ke.jin/gen_pair_data_test/script/pre_sku/test.sh > /home/ke.jin/gen_pair_data_test/script/pre_sku/test.log &
remember to use absolute path in your shell scripts.


how to debug crontab:
tail -f /var/log/cron
run this command, you will get the bug information you run your schedule task.

If you see that the script executes normal on terminal, and fails when you execute through the cron, 
then the problem might be mostly because of the environmental differences between the terminal and cron env.
http://blog.mojijs.com/post/172.html
#!/bin/bash

source $HOME/.bash_profile

some_other_cmd

the path in all file should be absolute path.





search keyword in vi:
To find a word in Vi/Vim, simply type the / or ? key, followed by the word you're searching for. 


check coding type for a file:
int vi type :set fileencoding

undo last change (can be repeated to undo preceding commands) 
in vi use: u


copy folder from one machine to another remote machine:
 scp -r multi-task_cnn_pairwise_224 admin@172.XXX.XXX.XX:/home/admin/



remove file in .trash
在linux系统，执行rm命令并不能彻底删除文件，而是把被删除的文件移动到了.trash文件夹，这些文件还是占用磁盘空间，如果想释放磁盘空间，就需要把.trash下的文件再执行rm命令，以达到彻底删除的目的。
       例如：linux下面/export目录下的被删除文件移动了，其下.trash文件夹，cd /export/.trash  ==> /bin/rm 文件名 or /bin/rm -rf 
Hadoop fs 清空回收站
hdfs dfs -expunge
delete hdfs forever :
hdfs dfs -rmr -skipTrash /path/to/file/you/want/to/remove/permanently

merge files in linux
cat text_2009* >newfile


git Please make sure you have the correct access rights and the repository exists
http://blog.csdn.net/jingtingfengguo/article/details/51892864


get the disk space usage:
du -k /your/path


unzip file:
unzip file.zip -d destination_folder


copy file from server to local:
scp ltx1-holdemgw03.grid.XXX.com:/export/home/dev_svc/apps/sa_rightnow/scripts/XXX.pig .
