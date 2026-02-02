#!/bin/bash

set -ouex pipefail

#change release
sed -i -f - /usr/lib/os-release <<EOF
s|^NAME=.*|NAME=\"Tree\"|
s|^PRETTY_NAME=.*|PRETTY_NAME=\"Tree\"|
s|^VERSION_CODENAME=.*|VERSION_CODENAME=\"Oak\"|
s|^VARIANT_ID=.*|VARIANT_ID=""|
s|^HOME_URL=.*|HOME_URL=""|
s|^BUG_REPORT_URL=.*|BUG_REPORT_URL=""|
s|^SUPPORT_URL=.*|SUPPORT_URL=""|
s|^CPE_NAME=\".*\"|CPE_NAME=\"cpe:/o:moorepastas:tree\"|
s|^DOCUMENTATION_URL=.*|DOCUMENTATION_URL=""|
s|^DEFAULT_HOSTNAME=.*|DEFAULT_HOSTNAME="tree"|
EOF
