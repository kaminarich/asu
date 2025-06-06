#!/system/bin/sh
RAM_TOTAL_KB=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
RAM_TOTAL_GB=$(( (RAM_TOTAL_KB + 1048576 - 1) / 1048576 ))

get_cpu_name() {
  local codename=$(getprop ro.mediatek.platform)
  if [ -z "$codename" ]; then
    codename=$(getprop ro.board.platform)
  fi
  if [ -z "$codename" ]; then
    codename=$(grep -m1 'Hardware' /proc/cpuinfo | cut -d ':' -f2 | sed 's/^[ \t]*//')
  fi
  if [ -z "$codename" ]; then
    codename="unknown"
  fi

  local cpu_name="Unknown CPU"

  case "$codename" in
    mt6789) cpu_name="Helio G99 | G100 | Ultimate" ;;
    mt6785) cpu_name="Helio P90" ;;
    mt6893) cpu_name="Dimensity 1200" ;;
    mt6895) cpu_name="Dimensity 1300" ;;
    mt6769) cpu_name="Helio G88" ;;
    mt6769t) cpu_name="Helio G96" ;;
    mt6833) cpu_name="Dimensity 700" ;;
    mt6853) cpu_name="Dimensity 920" ;;
     # MediaTek Helio Series
    mt6761) cpu_name="Helio A22" ;;
    mt6762) cpu_name="Helio P22" ;;
    mt6763) cpu_name="Helio P23" ;;
    mt6765) cpu_name="Helio P35" ;;
    mt6767) cpu_name="Helio P35" ;; # juga sama codename
    mt6768) cpu_name="Helio P65" ;;
    mt6771) cpu_name="Helio P60" ;;
    mt6779) cpu_name="Helio P70" ;;
    mt6785) cpu_name="Helio P90" ;;
    mt6795) cpu_name="Helio X20" ;;
    mt6797) cpu_name="Helio X25" ;;
    mt6799) cpu_name="Helio X30" ;;
    mt6769) cpu_name="Helio G88" ;;
    mt6769t) cpu_name="Helio G96" ;;
    mt6762g) cpu_name="Helio G81" ;;
    mt6775) cpu_name="Helio X23" ;;
    mt6779t) cpu_name="Helio P70 (T variant)" ;;
    
    # MediaTek Dimensity Series
    mt6833) cpu_name="Dimensity 700" ;;
    mt6853) cpu_name="Dimensity 920" ;;
    mt6855) cpu_name="Dimensity 900" ;;
    mt6863) cpu_name="Dimensity 6100" ;;
    mt6865) cpu_name="Dimensity 6100+" ;;
    mt6873) cpu_name="Dimensity 6050" ;;
    mt6877) cpu_name="Dimensity 9200" ;;
    mt6885) cpu_name="Dimensity 1300" ;;
    mt6889) cpu_name="Dimensity 8100" ;;
    mt6891) cpu_name="Dimensity 1100" ;;
    mt6893) cpu_name="Dimensity 1200" ;;
    mt6895) cpu_name="Dimensity 1300" ;;
    mt6896) cpu_name="Dimensity 8050" ;;
    mt6983) cpu_name="Dimensity 9200+" ;;
    mt6985) cpu_name="Dimensity 9200+" ;; # variant
    mt6987) cpu_name="Dimensity 6100+" ;; # variant
    
    # Legacy / Others
    mt6735) cpu_name="Helio P10" ;;
    mt6737) cpu_name="Helio A20" ;;
    mt6739) cpu_name="Helio A22 (Alternate)" ;;
    mt6750) cpu_name="Helio P10" ;;
    mt6755) cpu_name="Helio P10" ;;
    mt6757) cpu_name="Helio P20" ;;
    mt6758) cpu_name="Helio P20" ;;
    mt6761) cpu_name="Helio A22" ;;
    mt6797m) cpu_name="Helio X23" ;;
    mt6799m) cpu_name="Helio X30" ;;

    # Variants / Device-specific codename (common on phones)
    mt6763t) cpu_name="Helio P23 (T variant)" ;;
    mt6765t) cpu_name="Helio P35 (T variant)" ;;
    mt6768t) cpu_name="Helio P65 (T variant)" ;;

    # Others fallback
    mt8127) cpu_name="MT8127 (Legacy Tablet SoC)" ;;
    mt8163) cpu_name="MT8163 (Tablet SoC)" ;;
    mt8173) cpu_name="MT8173 (Tablet SoC)" ;;
    mt8516) cpu_name="MT8516 (Audio SoC)" ;;
    *) cpu_name="$codename (Gacor Ultimate)" ;;
  esac

  echo "$cpu_name"
}
   
ui_print "==============================================="
ui_print "💦 Installing Another Smooth UI (ASU) 💦"
ui_print " "
ui_print "DEVICE       : $(getprop ro.build.product)"
ui_print "MODEL        : $(getprop ro.product.model)"
ui_print "MANUFACTURE  : $(getprop ro.product.system.manufacturer)"
ui_print "PROC         : $(getprop ro.product.board)"

CPU_MARKETING_NAME=$(get_cpu_name)
ui_print "CPU          : $CPU_MARKETING_NAME"

ui_print "ANDROID VER  : $(getprop ro.build.version.release)"
ui_print "KERNEL       : $(uname -r)"
ui_print "🧠 RAM       : ${RAM_TOTAL_GB} GB"
ui_print " "
sleep 1.5

case "$((RANDOM % 14 + 1))" in
  1)  ui_print "- Ready to fuck your lag goodbye! 💋 [kaminarich]" ;;
  2)  ui_print "- This UI’s so wet, it’ll make your fingers drip. 💦 [kaminarich]" ;;
  3)  ui_print "- Stroke your screen gently… ASU loves it rough. 😈 [kaminarich]" ;;
  4)  ui_print "- Slide, tap, cum – your UI’s never been this horny. 🔥 [kaminarich]" ;;
  5)  ui_print "- ASU makes your phone come faster than you do. 😏 [kaminarich]" ;;
  6)  ui_print "- Naughty animations unleashed, get ready to play dirty. 😈 [kaminarich]" ;;
  7)  ui_print "- Masturbate your way through menus – silky smooth. 🖤 [kaminarich]" ;;
  8)  ui_print "- Finger fuck your screen till it begs for mercy. 💦 [kaminarich]" ;;
  9)  ui_print "- The only UI that makes your phone drip and moan. 🔥 [kaminarich]" ;;
  10) ui_print "- Cum harder, scroll faster – no mercy for lag. 💋 [kaminarich]" ;;
  11) ui_print "- Go beyond limits… Your screen is your playground. 😘 [kaminarich]" ;;
  12) ui_print "- ASU’s got that dirty touch you crave. Don’t fight it. 😈 [kaminarich]" ;;
  13) ui_print "- So smooth, your fingers will thank you after midnight. 💦 [kaminarich]" ;;
  14) ui_print "- Screen so wet, you might slip… Handle with pleasure. 💋 [kaminarich]" ;;
esac

ui_print " "
ui_print "==============================================="
ui_print "✅ ASU installed – now go touch yourself... I mean, your screen! 💦💋"
ui_print "==============================================="