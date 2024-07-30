#!/bin/bash

cat system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> system/app/WebViewGoogle/WebViewGoogle.apk
rm -f system/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat system/priv-app/Browser/Browser.apk.* 2>/dev/null >> system/priv-app/Browser/Browser.apk
rm -f system/priv-app/Browser/Browser.apk.* 2>/dev/null
