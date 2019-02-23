### Shopify REST API
[balance](https://help.shopify.com/en/api/reference/shopify_payments/balance)
```
GET     /admin/shopify_payments/balance.json 
```
[dispute](https://help.shopify.com/en/api/reference/shopify_payments/dispute)
```
GET     /admin/shopify_payments/disputes.json
GET     /admin/shopify_payments/disputes/#{dispute_id}.json
```
[payout](https://help.shopify.com/en/api/reference/shopify_payments/payout)
```
GET     /admin/shopify_payments/payouts.json
GET     /admin/shopify_payments/payouts/#{payout_id}.json
```
[transactions](https://help.shopify.com/en/api/reference/shopify_payments/transaction)
```
GET     /admin/shopify_payments/balance/transactions.json?payout_id=623721858
```
[access_scopes](https://help.shopify.com/en/api/reference/access/accessscope)
```
GET     /admin/oauth/access_scopes.json
```
[storefront_access_tokens](https://help.shopify.com/en/api/reference/access/storefrontaccesstoken)
```
POST    /admin/storefront_access_tokens.json
DELETE  /admin/storefront_access_tokens/#{storefront_access_token_id}.json
GET     /admin/storefront_access_tokens.json
```
[report](https://help.shopify.com/en/api/reference/analytics/report#setting-reports-publishing-permissions)
```
GET     /admin/reports.json
GET     /admin/reports/#{report_id}.json
POST    /admin/reports.json
PUT     /admin/reports/#{report_id}.json
DELETE  /admin/reports/#{report_id}.json
```
[application_charge](https://help.shopify.com/en/api/reference/billing/applicationcharge)
```
POST    /admin/application_charges.json
GET     /admin/application_charges/#{application_charge_id}.json
GET     /admin/application_charges.json
POST    /admin/application_charges/#{application_charge_id}/activate.json
```
[application_credit](https://help.shopify.com/en/api/reference/billing/applicationcredit)
```
POST    /admin/application_credits.json
GET     /admin/application_credits/#{application_credit_id}.json
GET     /admin/application_credits.json
```
[recuccuring_application_charge](https://help.shopify.com/en/api/reference/billing/recurringapplicationcharge)
```
POST    /admin/recurring_application_charges.json
GET     /admin/recurring_application_charges/#{recurring_application_charge_id}.json
GET     /admin/recurring_application_charges.json
POST    /admin/recurring_application_charges/#{recurring_application_charge_id}/activate.json
DELETE  /admin/recurring_application_charges/#{recurring_application_charge_id}.json
PUT /admin/recurring_application_charges/#{recurring_application_charge_id}/customize.json?recurring_application_charge[capped_amount]=200
```
[usageCharge](https://help.shopify.com/en/api/reference/billing/usagecharge#creating-usage-charges)
```
POST    /admin/recurring_application_charges/#{recurring_application_charge_id}/usage_charges.json
GET     /admin/recurring_application_charges/#{recurring_application_charge_id}/usage_charges/#{usage_charge_id}.json
GET     /admin/recurring_application_charges/#{recurring_application_charge_id}/usage_charges.json
```
[customer](https://help.shopify.com/en/api/reference/customers/customer#what-you-can-do-with-customer)
```
GET     /admin/customers.json
GET     /admin/customers/search.json?query=Bob country:United States
GET     /admin/customers/#{customer_id}.json
POST    /admin/customers.json
PUT     /admin/customers/#{customer_id}.json
POST    /admin/customers/#{customer_id}/account_activation_url.json
POST    /admin/customers/#{customer_id}/send_invite.json
DELETE  /admin/customers/#{customer_id}.json
GET     /admin/customers/count.json
GET     /admin/customers/#{customer_id}/orders.json
```
[customer_address](https://help.shopify.com/en/api/reference/customers/customer-address)
```
GET     /admin/customers/#{customer_id}/addresses.json
GET     /admin/customers/#{customer_id}/addresses/#{address_id}.json
POST    /admin/customers/#{customer_id}/addresses.json
PUT     /admin/customers/#{customer_id}/addresses/#{address_id}.json
DELETE  /admin/customers/#{customer_id}/addresses/#{address_id}.json
PUT     /admin/customers/#{customer_id}/addresses/set.json?address_ids[]=1053317288&operation=destroy
PUT     /admin/customers/#{customer_id}/addresses/#{address_id}/default.json
```
[customer_savedsearches](https://help.shopify.com/en/api/reference/customers/customersavedsearch#customer-saved-search-queries)
```
GET     /admin/customer_saved_searches.json
GET     /admin/customer_saved_searches/count.json
GET     /admin/customer_saved_searches/#{customer_saved_search_id}.json
GET     /admin/customer_saved_searches/#{customer_saved_search_id}/customers.json
POST    /admin/customer_saved_searches.json
PUT     /admin/customer_saved_searches/#{customer_saved_search_id}.json
DELETE  /admin/customer_saved_searches/#{customer_saved_search_id}.json
```
[price_rules](https://help.shopify.com/en/api/reference/discounts/pricerule)
```
POST    /admin/price_rules.json
PUT     /admin/price_rules/#{price_rule_id}.json
GET     /admin/price_rules.json
GET     /admin/price_rules/#{price_rule_id}.json
GET     /admin/price_rules/count.json
DELETE  /admin/price_rules/#{price_rule_id}.json
```
[discount_codes](https://help.shopify.com/en/api/reference/discounts/discountcode)
```
POST    /admin/price_rules/#{price_rule_id}/discount_codes.json
PUT     /admin/price_rules/#{price_rule_id}/discount_codes/#{discount_code_id}.json
GET     /admin/price_rules/#{price_rule_id}/discount_codes.json
GET     /admin/price_rules/#{price_rule_id}/discount_codes/#{discount_code_id}.json
GET     /admin/discount_codes/lookup.json?code=SUMMERSALE10OFF
DELETE  /admin/price_rules/#{price_rule_id}/discount_codes/#{discount_code_id}.json
POST    /admin/price_rules/#{price_rule_id}/batch.json
GET     /admin/price_rules/#{price_rule_id}/batch/#{batch_id}.json
GET     /admin/price_rules/#{price_rule_id}/batch/#{batch_id}/discount_codes.json
```
[event](https://help.shopify.com/en/api/reference/events/event#what-you-can-do-with-event)
```
GET     /admin/events.json Retrieves a list of events
GET     /admin/events/#{event_id}.json Retrieves a single event
GET     /admin/events/count.json?created_at_min=2008-01-10 08:00:00 Retrieves a count of events
```
[webhooks](https://help.shopify.com/en/api/reference/events/webhook)
```
GET     /admin/webhooks.json
GET     /admin/webhooks/count.json
GET     /admin/webhooks/#{webhook_id}.json
POST    /admin/webhooks.json
PUT     /admin/webhooks/#{webhook_id}.json
DELETE  /admin/webhooks/#{webhook_id}.json
```
[inventory_item](https://help.shopify.com/en/api/reference/inventory/inventoryitem)
```
GET     /admin/inventory_items.json?ids=808950810,39072856,457924702
GET     /admin/inventory_items/#{inventory_item_id}.json
PUT     /admin/inventory_items/#{inventory_item_id}.json
```
[inventory_level](https://help.shopify.com/en/api/reference/inventory/inventorylevel#what-you-can-do-with-inventorylevel)
```
GET     /admin/inventory_levels.json
POST    /admin/inventory_levels/adjust.json
DELETE  /admin/inventory_levels.json?inventory_item_id=808950810&location_id=905684977
POST    /admin/inventory_levels/connect.json
POST    /admin/inventory_levels/set.json
```
[location](https://help.shopify.com/en/api/reference/inventory/location)
```
GET     /admin/locations.json
GET     /admin/locations/#{location_id}.json
GET     /admin/locations/count.json
GET     /admin/locations/#{location_id}/inventory_levels.json
```
[marketing_event](https://help.shopify.com/en/api/reference/marketingevent)
```
GET     /admin/marketing_events.json Retrieves a list of all marketing events
GET     /admin/marketing_events/count.json Retrieves a count of all marketing events
GET     /admin/marketing_events/#{marketing_event_id}.json Retrieves a single marketing event
POST    /admin/marketing_events.json Creates a marketing event
PUT     /admin/marketing_events/#{marketing_event_id}.json Updates a marketing event
DELETE  /admin/marketing_events/#{marketing_event_id}.json Deletes a marketing event
POST    /admin/marketing_events/#{marketing_event_id}/engagements.json
```
[meta_field]()
```
GET     /admin/metafields.json
GET     /admin/metafields.json?metafield[owner_id]=850703190&metafield[owner_resource]=product_image
GET     /admin/metafields/count.json
GET     /admin/metafields/#{metafield_id}.json
POST    /admin/metafields.json
PUT     /admin/metafields/#{metafield_id}.json
DELETE  /admin/metafields/#{metafield_id}.json
```
[article](https://help.shopify.com/en/api/reference/online-store/article)
```
GET     /admin/blogs/#{blog_id}/articles.json
GET     /admin/blogs/#{blog_id}/articles/count.json
GET     /admin/blogs/#{blog_id}/articles/#{article_id}.json
POST    /admin/blogs/#{blog_id}/articles.json
PUT     /admin/blogs/#{blog_id}/articles/#{article_id}.json
GET     /admin/articles/authors.json
GET     /admin/articles/tags.json
DELETE  /admin/blogs/#{blog_id}/articles/#{article_id}.json
```
[asset](https://help.shopify.com/en/api/reference/online-store/asset)
```
GET     /admin/themes/#{theme_id}/assets.json
GET     /admin/themes/#{theme_id}/assets.json?asset[key]=templates/index.liquid&theme_id=828155753
PUT     /admin/themes/#{theme_id}/assets.json
DELETE  /admin/themes/#{theme_id}/assets.json?asset[key]=assets/bg-body.gif
``` 
[blog](https://help.shopify.com/en/api/reference/online-store/blog)
```
GET     /admin/blogs.json
GET     /admin/blogs/count.json
GET     /admin/blogs/#{blog_id}.json
POST    /admin/blogs.json
PUT     /admin/blogs/#{blog_id}.json
DELETE  /admin/blogs/#{blog_id}.json
```
[comment](https://help.shopify.com/en/api/reference/online-store/comment)
```
GET     /admin/comments.json?article_id=134645308&blog_id=241253187
GET     /admin/comments/count.json?article_id=134645308&blog_id=241253187
GET     /admin/comments/#{comment_id}.json
POST    /admin/comments.json
PUT     /admin/comments/#{comment_id}.json
POST    /admin/comments/#{comment_id}/spam.json
POST    /admin/comments/#{comment_id}/not_spam.json
POST    /admin/comments/#{comment_id}/approve.json
POST    /admin/comments/#{comment_id}/remove.json
POST    /admin/comments/#{comment_id}/restore.json 
```
[page](https://help.shopify.com/en/api/reference/online-store/page)
```
GET     /admin/pages.json?since_id=108828309
GET     /admin/pages/count.json
GET     /admin/pages/#{page_id}.json
POST    /admin/pages.json
PUT     /admin/pages/#{page_id}.json
DELETE  /admin/pages/#{page_id}.json
```
[redirect](https://help.shopify.com/en/api/reference/online-store/redirect)
```
GET     /admin/redirects.json
GET     /admin/redirects/count.json
GET     /admin/redirects/#{redirect_id}.json
POST    /admin/redirects.json
PUT     /admin/redirects/#{redirect_id}.json
DELETE  /admin/redirects/#{redirect_id}.json
```
[script_tag](https://help.shopify.com/en/api/reference/online-store/scripttag)
```
GET     /admin/script_tags.json
GET     /admin/script_tags/count.json
GET     /admin/script_tags/#{script_tag_id}.json
POST    /admin/script_tags.json
PUT     /admin/script_tags/#{script_tag_id}.json
DELETE  /admin/script_tags/#{script_tag_id}.json
```
[theme](https://help.shopify.com/en/api/reference/online-store/theme)
```
GET     /admin/themes.json
GET     /admin/themes/#{theme_id}.json
POST    /admin/themes.json
PUT     /admin/themes/#{theme_id}.json
DELETE  /admin/themes/#{theme_id}.json
```
[order](https://help.shopify.com/en/api/reference/orders/order#what-you-can-do-with-order)
```
GET     /admin/orders.json
GET     /admin/orders/#{order_id}.json
GET     /admin/orders/count.json
POST    /admin/orders/#{order_id}/close.json
POST    /admin/orders/#{order_id}/open.json
POST    /admin/orders/#{order_id}/cancel.json
POST    /admin/orders.json
PUT     /admin/orders/#{order_id}.json
DELETE  /admin/orders/#{order_id}.json
```
[abandon_checkouts](https://help.shopify.com/en/api/reference/orders/abandoned-checkouts)
```
GET     /admin/checkouts/count.json Retrieves a count of checkouts
GET     /admin/checkouts.json Retrieves abandoned checkouts 
```
[draft_order](https://help.shopify.com/en/api/reference/orders/draftorder)
```
POST    /admin/draft_orders.json
PUT     /admin/draft_orders/#{draft_order_id}.json
GET     /admin/draft_orders.json
GET     /admin/draft_orders/#{draft_order_id}.json
GET     /admin/draft_orders/count.json
POST    /admin/draft_orders/#{draft_order_id}/send_invoice.json
DELETE  /admin/draft_orders/#{draft_order_id}.json
PUT     /admin/draft_orders/#{draft_order_id}/complete.json
```
[order_risk](https://help.shopify.com/en/api/reference/orders/order-risk)
```
POST    /admin/orders/#{order_id}/risks.json
GET     /admin/orders/#{order_id}/risks.json
GET     /admin/orders/#{order_id}/risks/#{risk_id}.json
PUT     /admin/orders/#{order_id}/risks/#{risk_id}.json
DELETE  /admin/orders/#{order_id}/risks/#{risk_id}.json
```
[refund](https://help.shopify.com/en/api/reference/orders/order-risk)
```
GET     /admin/orders/#{order_id}/refunds.json
GET     /admin/orders/#{order_id}/refunds/#{refund_id}.json
POST    /admin/orders/#{order_id}/refunds/calculate.json
POST    /admin/orders/#{order_id}/refunds.json
```
[transactions](https://help.shopify.com/en/api/reference/orders/transaction#what-you-can-do-with-transaction)
```
GET     /admin/orders/#{order_id}/transactions.json
GET     /admin/orders/#{order_id}/transactions/count.json
GET     /admin/orders/#{order_id}/transactions/#{transaction_id}.json
POST    /admin/orders/#{order_id}/transactions.json
```
[gift_card](https://help.shopify.com/en/api/reference/plus/giftcard#what-you-can-do-with-gift%20card)
```
GET     /admin/gift_cards.json
GET     /admin/gift_cards/#{gift_card_id}.json
GET     /admin/gift_cards/count.json
POST    /admin/gift_cards.json
PUT     /admin/gift_cards/#{gift_card_id}.json
POST    /admin/gift_cards/#{gift_card_id}/disable.json
GET     /admin/gift_cards/search.json?query=mnop
```
[user](https://help.shopify.com/en/api/reference/plus/user#what-you-can-do-with-user)
```
GET     /admin/users.json
GET     /admin/users/#{user_id}.json
GET     /admin/users/current.json
```
[collects](https://help.shopify.com/en/api/reference/products/collect#what-you-can-do-with-collect)
```
POST    /admin/collects.json
DELETE  /admin/collects/#{collect_id}.json
GET     /admin/collects.json
GET     /admin/collects/count.json
GET     /admin/collects/#{collect_id}.json
```
[custom_collection](https://help.shopify.com/en/api/reference/products/customcollection#what-you-can-do-with-customcollection)
```
GET     /admin/custom_collections.json
GET     /admin/custom_collections/count.json
GET     /admin/custom_collections/#{custom_collection_id}.json
POST    /admin/custom_collections.json
PUT     /admin/custom_collections/#{custom_collection_id}.json
DELETE  /admin/custom_collections/#{custom_collection_id}.json
```
[product](https://help.shopify.com/en/api/reference/products/product)
```
GET     /admin/products.json
GET     /admin/products/count.json
GET     /admin/products/#{product_id}.json
POST    /admin/products.json
PUT     /admin/products/#{product_id}.json
DELETE  /admin/products/#{product_id}.json
```
[product_image](https://help.shopify.com/en/api/reference/products/product-image#what-you-can-do-with-product%20image)
```
GET     /admin/products/#{product_id}/images.json
GET     /admin/products/#{product_id}/images/count.json
GET     /admin/products/#{product_id}/images/#{image_id}.json
POST    /admin/products/#{product_id}/images.json
PUT     /admin/products/#{product_id}/images/#{image_id}.json
DELETE  /admin/products/#{product_id}/images/#{image_id}.json
```
[variant](https://help.shopify.com/en/api/reference/products/product-variant#what-you-can-do-with-product%20variant)
```
GET     /admin/products/#{product_id}/variants.json
GET     /admin/products/#{product_id}/variants/count.json
GET     /admin/variants/#{variant_id}.json
POST    /admin/products/#{product_id}/variants.json
PUT     /admin/variants/#{variant_id}.json
DELETE  /admin/products/#{product_id}/variants/#{variant_id}.json
```
[smart_collection](https://help.shopify.com/en/api/reference/products/smartcollection#what-you-can-do-with-smartcollection)
```
GET     /admin/smart_collections.json
GET     /admin/smart_collections/count.json
GET     /admin/smart_collections/#{smart_collection_id}.json
POST    /admin/smart_collections.json
PUT     /admin/smart_collections/#{smart_collection_id}.json
PUT     /admin/smart_collections/#{smart_collection_id}/order.json?products[]=921728736&products[]=632910392
DELETE  /admin/smart_collections/#{smart_collection_id}.json 
```
[checkouts](https://help.shopify.com/en/api/reference/sales-channels/checkout#what-you-can-do-with-checkout)
```
POST    /admin/checkouts.json
POST    /admin/checkouts/#{token}/complete.json
GET     /admin/checkouts/#{token}.json
PUT     /admin/checkouts/#{token}.json
GET     /admin/checkouts/#{token}/shipping_rates.json
```
[collection_listing](https://help.shopify.com/en/api/reference/sales-channels/collectionlisting#what-you-can-do-with-collectionlisting)
```
GET     /admin/collection_listings.json
GET     /admin/collection_listings/#{collection_listing_id}/product_ids.json
GET     /admin/collection_listings/#{collection_listing_id}.json
PUT     /admin/collection_listings/#{collection_listing_id}.json
DELETE  /admin/collection_listings/#{collection_listing_id}.json
```
[payment](https://help.shopify.com/en/api/reference/sales-channels/payment#what-you-can-do-with-payment)
```
POST    https://elb.deposit.shopifycs.com/sessions
POST    /admin/checkouts/#{token}/payments.json
GET     /admin/checkouts/#{token}/payments.json
GET     /admin/checkouts/#{token}/payments/#{payment_id}.json
GET     /admin/checkouts/#{token}/payments/count.json
```
[product_listing](https://help.shopify.com/en/api/reference/sales-channels/productlisting#what-you-can-do-with-productlisting)
```
GET     /admin/product_listings.json
GET     /admin/product_listings/product_ids.json
GET     /admin/product_listings/count.json
GET     /admin/product_listings/#{product_listing_id}.json
PUT     /admin/product_listings/#{product_listing_id}.json
DELETE  /admin/product_listings/#{product_listing_id}.json
```
[resource_feedback](https://help.shopify.com/en/api/reference/sales-channels/resourcefeedback#what-you-can-do-with-resourcefeedback)
```
POST    /admin/resource_feedback.json
GET     /admin/resource_feedback.json
```
[carrier_service](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/carrierservice#what-you-can-do-with-carrierservice)
```
POST    /admin/carrier_services.json
PUT     /admin/carrier_services/#{carrier_service_id}.json
GET     /admin/carrier_services.json
GET     /admin/carrier_services/#{carrier_service_id}.json
DELETE  /admin/carrier_services/#{carrier_service_id}.json
```
[fulfillment](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillment#what-you-can-do-with-fulfillment)
```
GET     /admin/orders/#{order_id}/fulfillments.json
GET     /admin/orders/#{order_id}/fulfillments/count.json
GET     /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}.json
POST    /admin/orders/#{order_id}/fulfillments.json
PUT     /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}.json
POST    /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/complete.json
POST    /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/open.json
POST    /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/cancel.json
```
[fulfillment_event](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillmentevent#what-you-can-do-with-fulfillmentevent)
```
GET     /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/events.json
GET     /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/events/#{event_id}.json
POST    /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/events.json
DELETE  /admin/orders/#{order_id}/fulfillments/#{fulfillment_id}/events/#{event_id}.json
```
[fulfillment_service](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillmentservice#what-you-can-do-with-fulfillmentservice)
```
GET     /admin/fulfillment_services.json
POST    /admin/fulfillment_services.json
GET     /admin/fulfillment_services/#{fulfillment_service_id}.json
PUT     /admin/fulfillment_services/#{fulfillment_service_id}.json
DELETE  /admin/fulfillment_services/#{fulfillment_service_id}.json
```
[country](https://help.shopify.com/en/api/reference/store-properties/country#what-you-can-do-with-country)
```
GET     /admin/countries.json
GET     /admin/countries/count.json
GET     /admin/countries/#{country_id}.json
POST    /admin/countries.json
PUT     /admin/countries/#{country_id}.json
DELETE  /admin/countries/#{country_id}.json
```
[currency](https://help.shopify.com/en/api/reference/store-properties/currency#what-you-can-do-with-currency)
```
GET     /admin/currencies.json
```
[policy](https://help.shopify.com/en/api/reference/store-properties/policy#what-you-can-do-with-policy)
```
GET     /admin/policies.json
```
[province](https://help.shopify.com/en/api/reference/store-properties/province#what-you-can-do-with-province)
```
GET     /admin/countries/#{country_id}/provinces.json
GET     /admin/countries/#{country_id}/provinces/count.json
GET     /admin/countries/#{country_id}/provinces/#{province_id}.json
PUT     /admin/countries/#{country_id}/provinces/#{province_id}.json
```
[shipping_zone](https://help.shopify.com/en/api/reference/store-properties/shippingzone#what-you-can-do-with-shippingzone)
```
GET     /admin/shipping_zones.json
```
[shop](https://help.shopify.com/en/api/reference/store-properties/shop#what-you-can-do-with-shop)
```
GET     /admin/shop.json
```
[tender_transaction](https://help.shopify.com/en/api/reference/tendertransaction#what-you-can-do-with-tendertransaction)
```
GET     /admin/tender_transactions.json?processed_at_max=2005-08-06 10:22:51 -0400
```












