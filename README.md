# Actions-OpenWrt
## [![Build](https://img.shields.io/github/workflow/status/KleinerSource/P3-OpenWrt-Actions/Build-OpenWrt/master?)](https://github.com/KleinerSource/P3-OpenWrt-Actions/actions?query=workflow%3ABuild-OpenWrt)

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)](https://github.com/P3TERX/Actions-OpenWrt/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)](https://github.com/P3TERX/Actions-OpenWrt/fork)

## 基础使用
- 首先你必须要熟悉整个 Open­Wrt 的编译过程，这会让你非常容易的理解如何使用 GitHub Ac­tions 进行编译，即使你没有成功过。因为实际上本地编译近 90% 失败的原因是因为网络问题导致的，中国大陆特色，咱也不敢多说。而使用 GitHub Ac­tions 编译成功率至少提升 200% ，为什么这样说呢？因为 Ac­tions 服务器由 Mi­crosoft Azure 提供，在自由的美利坚，拥有万兆带宽。

## 首次编译
- 在自己搭建编译环境中使用 Lean's OpenWrt 源码生成.config文件。（或使用后面进阶玩法中的云menuconfig，直接 SSH 到 Actions 进行操作）
- TIPS: 方案默认引用 Lean 的源码，因为他的 README 影响了我开始学习编译，也就有了这个项目，而且他的源码非常的优秀。有其它需求可自行修改 work­flow 文件，方法后面的进阶使用方法.

## 使用方法
- 将 `.config` 文件放如根目录 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 源码. ( 可以通过 workflow 文件中的环境变量进行更改. )
- Push `.config` 文件到 GitHub repository, 提交后查看 Acctions 会看到固件正在编译.
- 等待完成后点击 `Artifacts` 按钮下载即可.

## DIY 脚本
- 仓库内有一个 diy.sh 文件，你可以把对源码修改的指令写到这个文件中，比如修改默认 IP、主机名、主题、添加 / 删除软件包等操作。但不仅限于这些操作，发挥你强大的想象力，可做出更强大的功能。
- TIPS: 脚本工作目录在源码目录，内附一个修改默认 IP 的例子供参考使用。

## 添加软件包
- 在 DIY 脚本中加入对指定软件包的远程仓库的克隆指令。就像下面这样：
- `git clone https://github.com/P3TERX/xxx package/xxx`
- 这样做的好处是每一次编译都会拉取最新的源码。

## 尾巴
- 希望大家不要滥用免费的开发资源，需要时再编译，让开发者来充分利用才能产生更多更好的软件，这样大家才能受益。

- 详细教程请访问 [P3TERX Blog](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## 致谢

- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE) © P3TERX
