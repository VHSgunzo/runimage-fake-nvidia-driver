#!/bin/bash

try_dl() {
     if which aria2c &>/dev/null
          then
               aria2c --allow-overwrite -o "$1" -d "$(dirname "$1")" "$2"
     elif which wget &>/dev/null
          then
               wget -q --show-progress --no-check-certificate --content-disposition -t 3 -T 5 -w 0.5 \
                    "$2" -O "$(dirname "$1")/$1"
     elif which curl &>/dev/null
          then
               curl -L "$2" -o "$(dirname "$1")/$1"
     else
          return 1
     fi
}

rm -rf nvidia-utils.tar.zst fake-nvidia-utils* \
       lib32-nvidia-utils.tar.zst 2>/dev/null
if try_dl "lib32-nvidia-utils.tar.zst" "https://archlinux.org/packages/multilib/x86_64/lib32-nvidia-utils/download" && \
   try_dl "nvidia-utils.tar.zst" "https://archlinux.org/packages/extra/x86_64/nvidia-utils/download"
   then
       mkdir nvidia-utils 2>/dev/null
       tar -xf lib32-nvidia-utils.tar.zst -C nvidia-utils
       tar -xf nvidia-utils.tar.zst -C nvidia-utils
       (cd nvidia-utils
       rm -rf ./.* usr/bin usr/share/doc usr/share/man \
              usr/share/licenses 2>/dev/null
       nvidia_version="$(basename usr/lib/libGLX_nvidia.so.*.*|tail -c +18)"
       mv "usr/lib/firmware/nvidia/$nvidia_version" "usr/lib/firmware/nvidia/000.00.00"
       all_links="$(find ~+ -type l -print 2>/dev/null|sed "s|$(pwd)/||g")"
       all_files="$(find ~+ -type f -print 2>/dev/null|sed "s|$(pwd)/||g")"
       for link in $all_links
       do
              (link_to="$(file "$link"|sed 's|.*link to ||')"
              cd "$(dirname "$link")"
              [ -n "$(echo "$link_to"|grep -o "$nvidia_version")" ] && \
                     ln -sf "$(echo "$link_to"|sed "s|$nvidia_version|000.00.00|g")" "$(basename "$link")")
       done
       for file in $all_files
       do
              truncate -s0 "$file"
              [ -n "$(echo "$file"|grep -o "$nvidia_version")" ] && \
                     mv -f "$file" "$(echo "$file"|sed "s|$nvidia_version|000.00.00|g")"
       done
       mkdir -p usr/bin/nvidia
       mkdir -p usr/lib/nvidia/32
       mkdir -p usr/lib/nvidia/64
       #mkdir -p etc/ld.so.conf.d
       #echo -e "/usr/lib/nvidia/64\n/usr/lib/nvidia/32" > etc/ld.so.conf.d/nvidia.conf
       tar --gzip -acf ../fake-nvidia-utils.tar.gz -C ./ usr etc)
       updpkgsums
       makepkg -s
       rm -rf lib32-nvidia-utils.tar.zst nvidia-utils.tar.zst \
              nvidia-utils pkg src 2>/dev/null
   else
       echo "Download error!"
       exit 1
fi
