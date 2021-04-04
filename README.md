# uRpi4 - wlan container

Alpine linux/arm64 connect to wlan with wpa_supplicant

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

The following table has the general readiness state, the table below lists the boards with which the container has been tested.
When a version goes into production it means that it has been thoroughly tested in every single part.

| Board            | Kernel Version | Server Version | State      |
|------------------|----------------|----------------|-------------
| Raspberry Pi4    | 5.10           | 19.03.15       | Devel Only |

### Installing
A step-by-step example that tells you how to make a development environment work. If you already have the uRpi4 build docker is already installed.
You can manually install docker on your board. This container ready to run on linux/arm64 environments only.

```
docker run -dit -v /etc/resolv.conf:/etc/resolv.conf -e SSID="Your SSID Network" -e PSK="Your pre-shared key" --privileged --network host ubyte/wlan:latest

```

## Deployment

It is not yet recommended to use this in a production environment

## Built With

* [Docker](https://www.docker.com/) - Get Started with Docker
* [Alpine Linux](https://alpinelinux.org/) - Alpine Linux
* [Main Project](https://github.com/ubyte-source/urpi4) - The uByte.it Raspberry


## Contributing

Please read [CONTRIBUTING.md](https://github.com/ubyte-source/wlan/blob/main/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/ubyte-source/wlan/tags). 

## Authors

* **Paolo Fabris** - *Initial work* - [ubyte.it](https://rpi.ubyte.it/)

See also the list of [contributors](https://github.com/ubyte-source/wlan/blob/main/CONTRIBUTORS.md) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
