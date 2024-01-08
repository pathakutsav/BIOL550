# Question 1
mkdir ~/Assignments
cd Assignments
mkdir Assignment_1
mkdir Assignment_2
mkdir Assignment_3
mkdir Assignment_4
mkdir Assignment_5
for i in {01..25}; do mkdir ~/Assignments/Assignment_1/Q${i}; done;
rm -r ~/Assignments/Assignment_1/Q20
rm -r ~/Assignments/Assignment_1/Q21
rm -r ~/Assignments/Assignment_1/Q22
cd ~/Assignments/Assignment_1
rm -r Q23
rm -r Q24
rm -r Q25
for i in {01..19}; do touch ~/Assignments/Assignment_1/Q${i}/Q${i}_data.file; done;
for i in {10..19}; do rm -r ~/Assignments/Assignment_1/Q${i}; done;

# Question 2
touch ~/Assignments/Assignment_1/Q02/3DFI.url
nano ~/Assignments/Assignment_1/Q02/3DFI.url ##pasted link in this file
wget -P ~/Assignments/Assignment_1/Q02/3DFI-1.0.1a.tar.gz -i ~/Assignments/Assignment_1/Q02/3DFI.url

#Question 3
cd ~/Assignments/Assignment_1/Q02
cd 3DFI-1.0.1a.tar.gz
tar -zxvf 1.0.1a.tar.gz
cp -r Q02/3DFI-1.0.1a.tar.gz Q03
cd ~/Assignments/Assignment_1/Q03
mv -r ~/Assignments/Assignment_1/Q03/3DFI-1.0.1a.tar.gz/3DFI-1.0.1a/Visualization Visualization
tar -cjvf 3DFI_no_vis.tar.bz2 3DFI-1.0.1a.tar.gz
tar -zcvf 3DFI_vis_scripts.tar.gz Visualization

#Question 4
touch my_process.sh
nano my_process.sh
## A different script for this question is written and is in the uploaded tar file on Blackboard
bash my_process.sh ##running the written script

#Question 5
alias hello='Greetings,Utsav!'
nano ~/.bashrc
source .bashrc

## contents of ~/.bashrc
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi
alias hello='Greetings,Utsav!'
unset rc

export TDFI="~/Assignments/Assignment_1/Q02/3DFI-1.0.1a.tar.gz/3DFI-1.0.1a"
source .bashrc
##contents of ~/.bashrc
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export TDFI="~/Assignments/Assignment_1/Q02/3DFI-1.0.1a.tar.gz/3DFI-1.0.1a"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi
alias hello='Greetings,Utsav!'
unset rc
