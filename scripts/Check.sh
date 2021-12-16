set -eux pipefail

if [ -n "$RESOURCEGROUP" ]
if [ -n "$APPSERVICE" ]
if [ -n "$SERVICE" ]

#export RESOURCEGROUP="openhackew34zd68rg"
#export APPSERVICE="openhackew34zd68poi"
#export SERVICE="poi"

export SLOTURL="https://$(az webapp deployment slot list  --resource-group $RESOURCEGROUP --name $APPSERVICE | jq -r '.[0] | .defaultHostName')"
export HEALTH="$SLOTURL/api/healthcheck/$SERVICE"
export STATUS=$(curl $HEALTH | jq -r '.status')

while [ "$STATUS" != "Healthy" ]
do
   export STATUS=$(curl $HEALTH | jq -r '.status')
   sleep 1
done
