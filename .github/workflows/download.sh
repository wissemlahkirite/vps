#!/bin/bash

# تأكد من أن السكربت يتم تشغيله بصلاحيات المستخدم الجذر
if [ "$(id -u)" -ne "0" ]; then
  echo "يرجى تشغيل السكربت بصلاحيات الجذر (sudo)."
  exit 1
fi

# تحديث النظام وتثبيت الأدوات الأساسية
echo "تحديث النظام وتثبيت الأدوات الأساسية..."
apt-get update && apt-get upgrade -y
apt-get install -y wget curl python3 python3-pip

# تنزيل ملف من الإنترنت
echo "تنزيل ملف من الإنترنت..."
wget -O /tmp/somefile.tar.gz "https://example.com/somefile.tar.gz"

# استخراج الملف إذا كان ملف أرشيف
echo "استخراج الملف..."
tar -xzvf /tmp/somefile.tar.gz -C /tmp/

# تشغيل برنامج أو سكربت آخر (تأكد من وجوده وتنفيذه بشكل صحيح)
echo "تشغيل السكربت الإضافي..."
chmod +x /tmp/someother_script.sh
/tmp/someother_script.sh

# تنظيف الملفات المؤقتة
echo "تنظيف الملفات المؤقتة..."
rm /tmp/somefile.tar.gz

echo "انتهى تنفيذ السكربت."
