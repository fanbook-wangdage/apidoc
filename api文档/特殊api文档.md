# 特殊api文档

> 特殊的api，使用get请求即可

## 请求url

```
http://1.117.76.68:5000
```

## 机器人控制器登录 

> GET /dl1/

机器人控制器登录  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| code | string | 是 | 验证码 |

返回：text，成功返回用户短id，否则返回none

## 机器人控制器登录-获取验证码 

> GET /dl/

机器人控制器登录-获取验证码  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| code | string | 是 | fanbook Oauth2.0用于获取用户信息的code |

返回：text，成功返回提示

## 匿名消息机器人举报及撤回 

> GET /api/jb

匿名消息机器人举报及撤回  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| code | string | 是 | fanbook Oauth2.0用于获取用户信息的code |
| state | string | 是 | 频道id-消息id-服务器id-发送者-管理频道-类型(jb/c)-撤回用户类型(0/1) |

返回：text，成功返回提示

## 机器人控制器安卓-获取新版本 

> GET /app/getnew

机器人控制器安卓-获取新版本  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |

返回：text，版本序号 更新内容 下载链接  

## AIbot消息记录 

> GET /api/get_data1

AIbot消息记录  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| code | string | 是 | fanbook Oauth2.0用于获取用户信息的code |

返回：html

## 云托管AIbot-运行 

> GET /rungpt/

云托管AIbot-运行  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| user | string | 是 | 用户短id |
| token | string | 是 | bot token |
| botid | string | 是 | bot id |
| apikey | string | 是 | apikey |
| pdid | string | 是 | 权限验证频道id |

返回：text，提示内容

## 云托管AIbot-获取进程名 

> GET /getjc/

云托管AIbot-获取进程名  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| user | string | 是 | 用户短id |

返回：text，进程名或者提示无进程

## 云托管AIbot-停止进程 

> GET /scjc/

云托管AIbot-停止进程  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| user | string | 是 | 用户短id |

返回：text，提示信息

## 词云 

> GET /Wordcloud

词云，可视化文本的主要内容，自带中文分词  
参数：

| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| text | string | 是 | 文本 |
| bkcolor | string | 否 | 背景颜色，#16进制或者常见单词 |
| colormap | string | 否 | 文字配色方案，见[此链接](https://matplotlib.org/2.0.2/examples/color/colormaps_reference.html) |

返回：text，图片链接