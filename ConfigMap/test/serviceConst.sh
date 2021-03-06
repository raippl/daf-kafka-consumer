#!/usr/bin/env bash

set -e

kubectl delete configmap kafka-consumer-conf || true

kubectl create configmap kafka-consumer-conf \
--from-literal=clientId="my-client-id" \
--from-literal=daf_data_users_orig="new_andrea,raippl" \
--from-literal=topic1Name="creationfeed" \
--from-literal=topic2Name="notification" \
--from-literal=topic1Type="kylo_feed" \
--from-literal=topic2Type="generic" \
--from-literal=kafkaUrl="192.168.30.12:2181/kafka" \
--from-literal=mailto="mailto:daf@teamdigitale.it" \
--from-literal=privateVapidKey="_raRRUIefbg4QjqZit7lnqGC5Zh1z6SvQ2p2HGgjobg" \
--from-literal=publicVapidKey="BI28-LsMRvryKklb9uk84wCwzfyiCYtb8cTrIgkXtP3EYlnwq7jPzOyhda1OdyCd1jqvrJZU06xHSWSxV1eZ_0o" \
--from-literal=retries="2" \
--from-literal=sessionTimeout="300" \
--from-literal=spinDelay="100" \
--from-literal=urlCatalog="http://catalog-manager.default.svc.cluster.local:9000/catalog-manager/v1/catalog-ds/add" \
--from-literal=urlKylo="http://catalog-manager.default.svc.cluster.local:9000/catalog-manager/v1/kylo/feed" \
--from-literal=urlLastWorkedOffset="http://datipubblici.default.svc.cluster.local:9000/dati-gov/v1/notifications/offset/last" \
--from-literal=urlNotification="http://datipubblici.default.svc.cluster.local:9000/dati-gov/v1/notification/save" \
--from-literal=urlSub="http://datipubblici.default.svc.cluster.local:9000/dati-gov/v1/subscribe" \
--from-literal=urlIpaGroup="http://security-manager.default.svc.cluster.local:9000/security-manager/v1/ipa/group"
