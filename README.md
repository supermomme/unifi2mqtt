# unifi2mqtt

## FORK

Forked from for personal use! Original: https://github.com/hobbyquaker/unifi2mqtt

### Install

* `npm i`
* `npm start`

### Usage 

config via [node-config](https://github.com/lorenwest/node-config)

#### Topics published by unifi2mqtt

* `<topic>/status/wifi/<ssid>/client/<hostname>` - `{"val":true}` if client is connected to the wifi network, `{"val":false}`
otherwise. Object also contains the properties `mac` and `ts`. Retained.
* `<topic>/status/wifi/<ssid>/event/connected` - Client connect event. Payload as above. Not retained.
* `<topic>/status/wifi/<ssid>/event/disconnected` - Client disconnect event. Payload as above. Not retained.
* `<topic>/status/wifi/<ssid>/clientCount` - number of clients in specific wifi network, e.g. `{"val":5}`. Retained.
* `<topic>/status/wifi/<ssid>/enabled` - wifi enabled status, e.g. `{"val":true}`. Retained.
* `<topic>/status/clientCount` - number of clients in all wifi networks, e.g. `{"val":12}`. Retained.
* `<topic>/status/device/<device>/led` - status of a device led, e.g. `{"val":"on"}` Retained.
* `<topic>/connected` - `1` if connected to mqtt broker, `2` if connected to UniFi Controller, `0` on last will. 
Retained.


#### Topics subscribed by unifi2mqtt

* `<topic>/set/device/<device>/led` - switch device led on or off. Payload `on`, `off` or `default` (default uses 
site-wide led setting).
* `<topic>/set/wifi/<ssid>/enabled` - enable/disable wireless network. Payload `true` or `false`.

## License

MIT © [Sebastian Raff](https://github.com/hobbyquaker)

[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=flat
[mit-url]: LICENSE
