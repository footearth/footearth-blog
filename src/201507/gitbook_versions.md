# 使用 gitbook versions

* GITHUB: https://github.com/GitbookIO/gitbook-cli

## gitbook versions

### List available versions:

列出 所有 versions

```bash
$ gitbook versions:available
```

### List installed versions:

列出 已安装 versions

```bash
$ gitbook versions
```

### Install a specific version:

安装指定 version

```bash
$ gitbook versions:install 2.1.0
```

### Uninstall a specific version

卸载指定 version

```bash
$ gitbook versions:uninstall 2.0.1
```

# Use a local folder as a GitBook version (for developement)

使用指定 version

```bash
$ gitbook versions:link 2.0.1-alpha ./mygitbook
```
