# Shell-Scripting
Shell Scripting include especially AWS and Other Servers backups to Google Drive and Local Disks

==> AWS Configuration for creating Snapshots (from the Command Line)

aws configure

sudo apt install python-pip

pip install urllib3

pip install --upgrade pip

aws ec2 create-snapshot --volume-id vol-123456789 -- region us-west-2b -- description "Azarbodplus Snapshot"


==> Run Snapshot cron file with root

chmod +x /var/www/html/snapshot/create-snapshot.sh

sudo /var/www/html/snapshot/create-snapshot.sh
or
sudo ./create-snapshot.sh
