#Find Linux flavour
linux_falvor() {
    ( lsb_release -ds || cat /etc/*release || uname -om ) 2>/dev/null | head -n1
}

# Start GUI in background (user)
bg() {
    ("$@" >/dev/null 2>&1 &);
}

# Start GUI in background (passwordless superuser)
sbg() {
    (sudo "$@" >/dev/null 2>&1 &);
}

# Change permissions, owner, and group of files
chmodowngrp() {
    User="$1";
    Group="$2";
    Others="$3";
    NewOwner="$4";
    NewGroup="$5";
    
    sudo chmod u=$User,g=$Group,o=$Others "${@: 6}";
    sudo chown $NewOwner "${@: 6}";
    sudo chgrp $NewGroup "${@: 6}";
}

# Display GIT branches
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Reload GPG agent
gpg_reload() {
    gpg-connect-agent reloadagent /bye
}

# Archive files and directories (zip)
compress_zip() {
    zip -9r -e "$1" "${@: 2}";
}

# Archive files and directories (7z)
compress_7z() {
    7za a -p "$1" "${@: 2}";
}

# Save manual package configuration to a file (Debian-based)
save_pkg_inst_apt() {
    sudo apt-get -qq install aptitude;
    aptitude search '~i!~M' -F '%p' > ~/pkg_inst.txt;
}

# Save manual package configuration to a file (RHEL-based)
save_pkg_inst_dnf() {
    sudo dnf history userinstalled | tail -n +2 > ~/pkg_inst.txt;
}

# Save manual package configuration to a file (Arch-based)
save_pkg_inst_pacman() {
    pacman -Qqetn > ~/pkg_inst.txt;
    pacman -Qqem > ~/foreign_pkg_list.txt;
    comm -13 <(pacman -Qqdt | sort) <(pacman -Qqdtt | sort) > ~/opt_pkg_list.txt;
}

# Install packages (Debian-based)
pkg_inst_apt() {
    sudo apt-get -qq install aptitude;
    sudo aptitude install < ~/pkg_inst.txt;
}

# Install packages (RHEL-based)
pkg_inst_dnf() {
    sudo dnf install < ~/pkg_inst.txt;
}

# Install packages (Arch-based)
pkg_inst_pacman() {
    pacman -S --needed - < ~/pkg_inst.txt;
    pacman -S --needed - < ~/foreign_pkg_inst.txt;
    pacman -S --needed - < ~/opt_pkg_inst.txt;
}
