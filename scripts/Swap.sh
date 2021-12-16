set -eux pipefail

if [ -n "$RESOURCEGROUP" ]
if [ -n "$APPSERVICE" ]


#export RESOURCEGROUP="openhackew34zd68rg"
#export APPSERVICE="openhackew34zd68poi"
#export SERVICE="poi"


az webapp deployment slot swap --resource-group $RESOURCEGROUP --name $APPSERVICE -s staging -o jsonc
