#!/bin/bash

set -e

mkdir -p rules

echo "Updating rules..."

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/openai.mrs -o rules/chatgpt.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/netflix.mrs -o rules/netflix.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/youtube.mrs -o rules/youtube.list

curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Steam/Steam.list -o rules/steam.list

curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/direct.txt -o rules/china.list
curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/gfw.txt -o rules/gfw.list
curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/reject.txt -o rules/block.list

echo "Rules updated."
