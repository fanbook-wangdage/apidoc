# 基本api文档

> 这些是简化过的fb bot api及其他api文档，拼接url和uri，使用get请求即可

## 请求url

```
http://1.117.76.68:5000
```

## 发送普通消息

> GET/POST /bot/sm

发送一条普通文本消息，参数写在url内  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| token | string | 是 | 机器人token |
| chatid | string | 是 | 频道id |
| text | string | 是 | 消息内容 |
| m | string | 否 | 如果为sx，则发送私信消息，频道id填用户短id |
| fwqid | string | 否 | 服务器id，发送私信消息是必填 |

返回：text，返回文本提示

## 撤回消息

> GET /bot/delmsg

撤回消息，参数写在url内  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| token | string | 是 | 机器人token |
| chatid | string | 是 | 频道id |
| msgid | string | 是 | 消息id |

返回：json，只有两种情况  
成功：
```json
{"data":"成功撤回此消息","errorInfo":"","status":"OK"}
```

失败：
```json
{"data":"失败","errorInfo":"无法完成请求，参数错误或者机器人没有权限","status":"error"}
```

## 发送消息卡片

> GET/POST /bot/fsmessagekp

发送消息卡片，参数写在url内  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| token | string | 是 | 机器人token |
| btwz | string | 是 | 标题文字 |
| btys | string | 是 | 标题背景颜色，例如0000ff |
| btysb | string | 否 | 标题背景颜色2，如果是渐变色标题背景就必须填 |
| jbs | string | 否 | 是否为渐变色标题背景，t为是 |
| wbnr | string | 是 | 正文内容,md格式 |
| qyan | string | 否 | 启用按钮，t为启用 |
| anwb | string | 否 | 按钮文字 |
| anlj | string | 否 | 点击按钮后的跳转链接 |
| pdid | string | 是 | 频道的id |
| anys | string | 否 | 按钮的颜色 |
| btwbys | string | 是 | 标题颜色 |

返回：text，返回文本提示