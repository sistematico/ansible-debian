#!/usr/bin/env bash
#
# Purge snapd

cat <<EOF >/etc/apt/preferences.d/no-snap.pref
# To install snapd, specify its version with 'apt install snapd=VERSION'
# where VERSION is the version of the snapd package you want to install.
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF

#1> /dev/null 2> /dev/null

systemctl --now disable \
    snapd.apparmor.service \
    snapd.autoimport.service \
    snapd.core-fixup.service \
    snapd.failure.service \
    snapd.recovery-chooser-trigger.service \
    snapd.seeded.service \
    snapd.service \
    snapd.snap-repair.service \
    snapd.system-shutdown.service \
    snapd.socket \
    snapd.snap-repair.timer 2>&1 &

umount /snap/core* -lf 2>&1 &

snap remove gnome-3-34-1804 2>&1 &
snap remove gtk-common-themes 2>&1 &
snap remove snapd 2>&1 &
snap remove snap-store 2>&1 &
snap remove core 2>&1 &
snap remove core18 2>&1 &

apt remove snapd --purge 2>&1 &

rm -rf /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd 2>&1 &