# 使用说明

## 宿主机可通过以下命令创建、获取所需
- 容器名按需修改

```shell
# 创建名为 "username" 的用户
docker exec -it headscale headscale users create username

# 创建一个有效期为 10000 天的 API 密钥
docker exec -it headscale headscale apikeys create -e 10000d

# 创建一个有效期为 10000 天、可重复使用的预授权密钥，并关联到特定的用户名 "username"
docker exec -it headscale headscale preauthkeys create -e 10000d --reusable -u username
```
## 1Panel 容器管理页面连接容器终端

```shell
# 创建名为 "username" 的用户
headscale users create username

# 创建一个有效期为 10000 天的 API 密钥
headscale apikeys create -e 10000d

# 创建一个有效期为 10000 天、可重复使用的预授权密钥，并关联到特定的用户名 "username"
headscale preauthkeys create -e 10000d --reusable -u username
```

# 原始相关
***
![ci](https://github.com/juanfont/headscale/actions/workflows/test.yml/badge.svg)

An open source, self-hosted implementation of the Tailscale control server.

Join our [Discord](https://discord.gg/c84AZQhmpx) server for a chat.

**Note:** Always select the same GitHub tag as the released version you use
to ensure you have the correct example configuration and documentation.
The `main` branch might contain unreleased changes.

## What is Tailscale

Tailscale is [a modern VPN](https://tailscale.com/) built on top of
[Wireguard](https://www.wireguard.com/).
It [works like an overlay network](https://tailscale.com/blog/how-tailscale-works/)
between the computers of your networks - using
[NAT traversal](https://tailscale.com/blog/how-nat-traversal-works/).

Everything in Tailscale is Open Source, except the GUI clients for proprietary OS
(Windows and macOS/iOS), and the control server.

The control server works as an exchange point of Wireguard public keys for the
nodes in the Tailscale network. It assigns the IP addresses of the clients,
creates the boundaries between each user, enables sharing machines between users,
and exposes the advertised routes of your nodes.

A [Tailscale network (tailnet)](https://tailscale.com/kb/1136/tailnet/) is private
network which Tailscale assigns to a user in terms of private users or an
organisation.

## Design goal

Headscale aims to implement a self-hosted, open source alternative to the Tailscale
control server.
Headscale's goal is to provide self-hosters and hobbyists with an open-source
server they can use for their projects and labs.
It implements a narrow scope, a single Tailnet, suitable for a personal use, or a small
open-source organisation.

## Supporting Headscale

If you like `headscale` and find it useful, there is a sponsorship and donation
buttons available in the repo.

## Features

- Full "base" support of Tailscale's features
- Configurable DNS
  - [Split DNS](https://tailscale.com/kb/1054/dns/#using-dns-settings-in-the-admin-console)
- Node registration
  - Single-Sign-On (via Open ID Connect)
  - Pre authenticated key
- Taildrop (File Sharing)
- [Access control lists](https://tailscale.com/kb/1018/acls/)
- [MagicDNS](https://tailscale.com/kb/1081/magicdns)
- Support for multiple IP ranges in the tailnet
- Dual stack (IPv4 and IPv6)
- Routing advertising (including exit nodes)
- Ephemeral nodes
- Embedded [DERP server](https://tailscale.com/blog/how-tailscale-works/#encrypted-tcp-relays-derp)

## Client OS support

| OS      | Supports headscale                                        |
| ------- | --------------------------------------------------------- |
| Linux   | Yes                                                       |
| OpenBSD | Yes                                                       |
| FreeBSD | Yes                                                       |
| macOS   | Yes (see `/apple` on your headscale for more information) |
| Windows | Yes [docs](./docs/windows-client.md)                      |
| Android | Yes [docs](./docs/android-client.md)                      |
| iOS     | Yes [docs](./docs/iOS-client.md)                          |

## Running headscale

**Please note that we do not support nor encourage the use of reverse proxies
and container to run Headscale.**

Please have a look at the [`documentation`](https://headscale.net/).

## Talks

- Fosdem 2023 (video): [Headscale: How we are using integration testing to reimplement Tailscale](https://fosdem.org/2023/schedule/event/goheadscale/)
  - presented by Juan Font Alonso and Kristoffer Dalby

## Disclaimer

1. This project is not associated with Tailscale Inc.
2. The purpose of Headscale is maintaining a working, self-hosted Tailscale control panel.

## Contributing

Headscale is "Open Source, acknowledged contribution", this means that any
contribution will have to be discussed with the Maintainers before being submitted.

This model has been chosen to reduce the risk of burnout by limiting the
maintenance overhead of reviewing and validating third-party code.

Headscale is open to code contributions for bug fixes without discussion.

If you find mistakes in the documentation, please submit a fix to the documentation.

### Requirements

To contribute to headscale you would need the lastest version of [Go](https://golang.org)
and [Buf](https://buf.build)(Protobuf generator).

We recommend using [Nix](https://nixos.org/) to setup a development environment. This can
be done with `nix develop`, which will install the tools and give you a shell.
This guarantees that you will have the same dev env as `headscale` maintainers.

### Code style

To ensure we have some consistency with a growing number of contributions,
this project has adopted linting and style/formatting rules:

The **Go** code is linted with [`golangci-lint`](https://golangci-lint.run) and
formatted with [`golines`](https://github.com/segmentio/golines) (width 88) and
[`gofumpt`](https://github.com/mvdan/gofumpt).
Please configure your editor to run the tools while developing and make sure to
run `make lint` and `make fmt` before committing any code.

The **Proto** code is linted with [`buf`](https://docs.buf.build/lint/overview) and
formatted with [`clang-format`](https://clang.llvm.org/docs/ClangFormat.html).

The **rest** (Markdown, YAML, etc) is formatted with [`prettier`](https://prettier.io).

Check out the `.golangci.yaml` and `Makefile` to see the specific configuration.

### Install development tools

- Go
- Buf
- Protobuf tools

Install and activate:

```shell
nix develop
```

### Testing and building

Some parts of the project require the generation of Go code from Protobuf
(if changes are made in `proto/`) and it must be (re-)generated with:

```shell
make generate
```

**Note**: Please check in changes from `gen/` in a separate commit to make it easier to review.

To run the tests:

```shell
make test
```

To build the program:

```shell
nix build
```

or

```shell
make build
```
