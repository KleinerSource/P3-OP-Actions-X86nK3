# Actions-OpenWrt
## [![Build](https://img.shields.io/github/workflow/status/KleinerSource/P3-OpenWrt-Actions/Build-OpenWrt/master?)](https://github.com/KleinerSource/P3-OpenWrt-Actions/actions?query=workflow%3ABuild-OpenWrt)

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)](https://github.com/P3TERX/Actions-OpenWrt/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)](https://github.com/P3TERX/Actions-OpenWrt/fork)

## 基础使用
- 首先你必须要熟悉整个 Open­Wrt 的编译过程，这会让你非常容易的理解如何使用 GitHub Ac­tions 进行编译，即使你没有成功过。因为实际上本地编译近 90% 失败的原因是因为网络问题导致的，中国大陆特色，咱也不敢多说。而使用 GitHub Ac­tions 编译成功率至少提升 200% ，为什么这样说呢？因为 Ac­tions 服务器由 Mi­crosoft Azure 提供，在自由的美利坚，拥有万兆带宽。

## 首次编译
- 在自己搭建编译环境中使用 Lean's OpenWrt 源码生成.config文件。（或使用后面进阶玩法中的云menuconfig，直接 SSH 到 Actions 进行操作）
- TIPS: 方案默认引用 Lean 的源码，因为他的 README 影响了我开始学习编译，也就有了这个项目，而且他的源码非常的优秀。有其它需求可自行修改 work­flow 文件，方法后面的进阶使

## 使用方法
- 将 `.config` 文件放如根目录 [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) 源码. ( You can change it through environment variables in the workflow file. )
- Push `.config` 文件到 GitHub repository, 提交后查看 Acctions 会看到固件正在编译.
- 等待完成后点击 `Artifacts` 按钮下载即可.

## Acknowledgments

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
