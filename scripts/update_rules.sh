#!/bin/bash

set -e

mkdir -p rules
rm -rf rules/*

echo "===== Updating Rules ====="

# =========================
# AI
# =========================

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/openai.mrs -o rules/chatgpt.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/anthropic.mrs -o rules/claude.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/perplexity.mrs -o rules/perplexity.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/gemini.mrs -o rules/gemini.list

# =========================
# Streaming
# =========================

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/netflix.mrs -o rules/netflix.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/disney.mrs -o rules/disney.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/amazon.mrs -o rules/amazon.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/youtube.mrs -o rules/youtube.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/spotify.mrs -o rules/spotify.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/hbo.mrs -o rules/hbo.list

# =========================
# Social
# =========================

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/telegram.mrs -o rules/telegram.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/facebook.mrs -o rules/facebook.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/reddit.mrs -o rules/reddit.list

# =========================
# Tech
# =========================

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/github.mrs -o rules/github.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/apple.mrs -o rules/apple.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/google.mrs -o rules/google.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/microsoft.mrs -o rules/microsoft.list

# =========================
# Games
# =========================

curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Steam/Steam.list -o rules/steam.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Epic/Epic.list -o rules/epic.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/EA/EA.list -o rules/ea.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Blizzard/Blizzard.list -o rules/blizzard.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/UBI/UBI.list -o rules/ubisoft.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Riot/Riot.list -o rules/riot.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Valorant/Valorant.list -o rules/valorant.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/PUBG/PUBG.list -o rules/pubg.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Apex/Apex.list -o rules/apex.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Xbox/Xbox.list -o rules/xbox.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Game/Game.list -o rules/gaming.list
curl -L https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Game/GameIP/GameIP.list -o rules/gaming-ip.list

# =========================
# Crypto
# =========================

curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/binance.mrs -o rules/binance.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/bybit.mrs -o rules/bybit.list
curl -L https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/meta/geo/geosite/okx.mrs -o rules/okx.list

# =========================
# Global
# =========================

curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/proxy.txt -o rules/proxy.list
curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/direct.txt -o rules/china.list
curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/gfw.txt -o rules/gfw.list
curl -L https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/reject.txt -o rules/block.list

echo "===== Rules Update Complete ====="
