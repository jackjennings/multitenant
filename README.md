# Multitenancy Test

This app is a used to explore a few ideas about how multitenancy can work in Rails.

* The root path should be different when accessed from a subdomain (`unit#index` vs `buyer#show`)
* Some routes should only be accessible to the current tenant (`buyer#show`)
* "Private" views should be preferred over regular views (not implemented)
* "Private" partials should act the same way (not implemented)

# Setup

In order to view the tenant-specific routes in the application, add the following line to your `/etc/hosts` configuration file:

```
127.0.0.1       tenant.localhost.com
```
