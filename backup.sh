#!/bin/bash


LOG_DIR='/home/devops/training/scripts/logs'
BACKUP_DIR='/home/devops/training/scripts/allbackupfiles'

mkdir -p $BACKUP_DIR

for i in `cat backupfiles.txt`
do
 if [ -f $LOG_DIR/$i ]
  then
  echo "copying $i log to allbackupfiles directory."
  cp $LOG_DIR/$i $BACKUP_DIR
 else
  echo "$i log file does not  exist, skipping "
 fi
done

echo "zipping log files"
echo
cd /home/devops/training/scripts/
tar -czvf allbackupfiles.tgz allbackupfiles
echo
echo
echo "backup successfully completed"
echo
