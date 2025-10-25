#!/bin/bash

CONFIG_FILE="/usr/local/etc/xray/config.json"

# إنشاء ملف config.json مع UUIDs والمسار /vpn
cat > "$CONFIG_FILE" << EOF
{
  "inbounds": [
    {
      "port": 10000,
      "protocol": "vless",
      "listen": "0.0.0.0",
      "settings": {
        "clients": [
          {"id": "99f65490-47cc-4374-8b57-bd59b87e72ec","level":0,"email":"user1@vpn.hazim.cfd"},
          {"id": "c1ce969b-c19d-4edd-a96e-cf865f15401f","level":0,"email":"user2@vpn.hazim.cfd"},
          {"id": "5dbcdc26-d183-4d75-bb89-4860694436ab","level":0,"email":"user3@vpn.hazim.cfd"},
          {"id": "4b9f496d-2c7f-4d0f-91c7-7929ba35505e","level":0,"email":"user4@vpn.hazim.cfd"},
          {"id": "07deaccb-3761-4269-84aa-017a9f61e1c2","level":0,"email":"user5@vpn.hazim.cfd"}
        ]
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {"path": "/vpn"}
      }
    }
  ],
  "outbounds": [{"protocol": "freedom","settings": {}}]
}
EOF

# صلاحية التنفيذ
chmod +x /root/vpn/xray_vless_tui_pro.sh

# إعادة تشغيل خدمة Xray
systemctl restart xray

# حالة الخدمة
systemctl status xray --no-pager

echo "🎉 إعداد Xray VLESS جاهز للعمل!"
