#!/bin/bash

# الانتقال لمجلد المشروع
cd /root/vpn || exit

# سحب آخر التحديثات من GitHub
git pull origin main

# إعطاء صلاحية تنفيذ للسكربت الرئيسي
chmod +x xray_vless_tui_pro.sh

echo "✅ تم تحديث السكربت من GitHub بنجاح!"
