# Fanbook机器人基础使用方法

> 本文档主要介绍如何创建并使用Fanbook机器人。  

本文档分为5个部分，你可以在左侧菜单中选择你需要的部分进行阅读。

1. 创建机器人  
2. 使用机器人工具进行操作  
3. 使用机器人控制器进行操作  
4. 使用python进行操作  
5. 指令介绍

## 创建机器人

> 要想控制机器人，你需要先创建你第一个机器人  

先进入<f-link href="https://open.fanbook.mobi/developers/manage/app" state="line" type="primary" color="#58c8de">开放平台</f-link>  
使用你注册fanbook的账号登录  
之后，会进入到应用管理页面，你需要先创建一个应用  
点击创建应用
![创建应用](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/8464730e034e511aab8e4a7df98ea526.png)  
填写应用名称后，我们会进入应用管理页面，我们现在不需要使用应用信息，所以我们只点击左侧菜单中的机器人，转到机器人页面  
![应用设置介绍](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/30d958f6d1e67b6ea497b6b42e88a68d.png)  
**注意这里的设置不是机器人设置，而是应用的设置，我们不需要设置，现在我们点击创建机器人**  
![转到机器人页面](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/8e9c63c10cc54d37cc1cac8b032694e7.gif)
应用的设置仅会在授权页面上显示，不是机器人设置，我们现在还不需要设置
现在我们按照这个图片设置机器人的基础信息  
![设置机器人的基础信息](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/bbcb3ca9b3a72ce448672c29558e5ba6.png)
指令我们现在还不需要设置，接着我们按照图片说明选择**需要用到的**权限
![谨慎选择权限](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/6e6f93f38a3f6396ae240e439cbbbd1e.png)
现在，我们可以在有权限管理的社区（服务器）添加机器人了
![添加机器人](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/c5dfd267b6bc6e2d8d41815beb3aab74.gif)

现在，我们可以控制该机器人了

## 使用机器人工具进行操作

> 机器人工具是第三方用户凯凯本凯开发的一款开源的网页工具，可以方便的进行机器人的操作，新版还没有开发完成，我们先使用旧版  

<f-text type="success">点此使用：</f-text>
<f-link href="https://fb-bot.starlight.work/" state="line" type="primary" color="#58c8de">机器人工具</f-link>    
<f-text type="success">开源仓库：</f-text>
<f-link href="https://github.com/Starlight-Dev-Team/fanbook-bot-tools" state="line" type="primary" color="#58c8de">github</f-link>  
进入后，我们先点击登录，在开放平台复制Token，然后点击添加  
![添加机器人](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/5e2f42e2e70a41b6f40566ad90b39187.gif)
使用资料信息功能，可以获取机器人的信息
![机器人信息](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/7a9fa6cae4e5782d011863a5e806178d.png)
现在，官方为了防止乱发消息，设置了发送消息api白名单，只有在该白名单的机器人才可以发送消息，你的机器人还没有发送消息api白名单，按照下方文档，查看如何申请  
[错误码文档](http://docs.wdg.cloudns.ch/api%E9%94%99%E8%AF%AF%E7%A0%81/#%E6%9C%BA%E5%99%A8%E4%BA%BA%E6%B2%A1%E6%9C%89%E5%8F%91%E8%A8%80api%E7%99%BD%E5%90%8D%E5%8D%95-10002-limit-for-bot-send-per-1-second)  
由于没有发言api白名单，我们直接发送消息是不行的  
![没有白名单的效果](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/89dfd8f38e421bd405e28b4286a0f3b8.gif)  
我们找一个有发言白名单的机器人，以便我们学习发送消息功能  
我们在服务器设置中，复制服务器id，点击目标聊天右侧的+，输入服务器id，然后会自动列出所有频道，选择一个频道用于发送消息，注意只能单选  

### 发送消息功能

- 消息内容：只能是纯文本，可以换行  
- 禁止表态：开启后该消息没有表态按钮，无法被表态  
![禁止表态](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/ad3f0f066183c313a1890d4ae6f487e7.png)  
- 逐个通知成员：开启后，会向频道中所有用户的私信发送该消息，不会向频道发送  
![逐个通知成员](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/99546fa42453bfdae7ba3a79a4b45064.png)
![逐个通知成员效果](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/c9d81638bc57a7047a7cdc52c84a27c9.png)
请尽量少用该功能，避免打扰用户  
- 保存草稿：点击后，会保存本次内容到浏览器中，下次使用时，将会自动填充上次的内容，方便以后编辑  

### 荣誉卡槽功能

> 荣誉卡槽是一个用于展示荣誉的卡片，显示在用户信息下方和频道昵称的左侧，可以展示图片和文字，每个服务器不同  

#### 添加功能

图片链接可以在图床上传图片后获得  
[示例图床](https://img.wdg.cloudns.ch/)  
![上传图片](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/47c907a68472c43b2de43507d0b638e1.gif)
自定义id找一个你可以记住的数字和字母，长度大于10，每个都需要不同
![勋章描述1](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/a0b529d31c726f771943ef4bba34fbcf.png)
![勋章描述2](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/62826948a8a9fc7e76061cc7118d3e00.png)

#### 获取功能

获取当前用户的所有荣誉的自定义id，这个id是你创建时填写的自定义id，可以用于删除  
![获取自定义id](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/14cfc4188b44bbf8907bb2c95db1ee32.png)  

#### 删除功能

荣誉不想要了就可以删掉
![删除荣誉](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/d8730cba590bd53fb88175663375b995.png)  

## 机器人控制器

> 机器人控制器是第三方用户王大哥开发的一个主要用于研究和部署功能的一个开源工具，主要追求快速上线功能和直观的结果  

[下载](http://1.117.76.68/Update.exe)
[仓库地址](https://github.com/fanbook-wangdage/fanbook_bot-kzq)  

### 功能介绍

发送消息(1)：向频道（包括私聊）发送消息  
发送图片(2)：向频道（包括私聊）发送图片，图片链接可通过右键帖子或频道内图片获得  
创建私聊频道(3)：和一个用户建立私聊频道  
禁言用户(4)：禁言用户，最大30天  
创建频道(5)：创建已支持的频道，除过需要官方创建的  
通过消息链接获取消息详细信息(6):输入消息链接可以获得用户和消息的详细信息  
命令行模式：启动命令行支持其他功能（测试,不建议使用）  
反馈模式(7)：给王大哥直接发送反馈消息  
富文本模式(8):向频道(包括私聊)发送富文本
自定义勋章(9):为成员添加自定义勋章，最大支持4个图片  
获取勋章(10):获取成员勋章的详细信息  
迎新机器人 自动化_NEW(11):有新成员进入时，自动在频道发送欢迎消息  
发送定时重复消息 自动化(12): 重复在频道内延时一段时间后发送消息  
发送消息卡片(13): 向频道发送消息卡片(Beta)  
获取图片链接(14): 一键选择图片并上传图片获得图片链接  
拓展(Debug模式)(Debug): 使用拓展或者调试程序  
pin消息(15): pin频道中的指定消息  
撤回消息(16): 撤回频道中的指定消息  
进行WS连接(17):获取机器人所在服务器的所有消息，包括私聊机器人  
获取服务器表情包(18): 获取服务器中的所有表情包  
一键部署文件链接获取机器人(19):部署后，私信你的机器人文件即可获取链接  
一键部署答题活动审核机器人(20): 部署后，机器人会检查答题活动的规范性，并给出提示，或者撤回消息 
一键部署ChatGPT机器人(21): 部署后，即在服务器内使用ChatGPT  
发送高级消息卡片(22)：发送高级卡片，支持Markdown语法 https://markdown.com.cn  
获取富文本消息json 支持文本和图片(23)  
急速私信通知频道全体成员 支持消息json(24)  

填写上token，即可体验功能
![填写token](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/5d7d2e0dfbcf46f127f6646f5f5c5ec8.png)  

用于功能较多，这里只选发送消息功能进行演示
![发送消息](http://1.117.76.68:8001/i/2024/04/09/jvwanm.gif)

## 使用python请求

### Websocket连接

```python
import requests#http请求
import json#json数据处理
import traceback#错误捕获
import urllib.request
import time#延时
import websocket#ws接口链接
import base64#请求体编码
import threading
import queue
from pygments import highlight#高亮
from pygments.lexers import JsonLexer#高亮
from pygments.formatters import TerminalFormatter#高亮
from colorama import init, Fore, Back, Style#高亮
import urllib.request

lingpai='01a5edd683329aa483f5e3652d5f3dec53b8c01f98d20700ae4023c4ef59703abd892f16c7fd2ea9a1701293ada379d1'#bot token
bot_id='463988665363562782'#bot_id
websocket_url='wss://gateway-bot.fanbook.mobi/websocket'
requests_url='https://a1.fanbook.mobi/api/bot/'
post_headers={'Content-Type':'application/json'}

init(autoreset=True)    #  初始化，并且设置颜色设置自动恢复
def addmsg(msg, color="white"):
    if color == "white":
        print(msg)
    elif color == "red":
        print("\033[31m" + msg + "\033[39m")
    elif color == "yellow":
        print("\033[33m" + msg + "\033[39m")
    elif color == "green":
        print("\033[32m" + msg + "\033[39m")
    elif color == "aqua":
        print("\033[36m" + msg + "\033[39m")

def colorprint(smg2,pcolor):
    if pcolor=='red':
      print(Fore.RED + smg2)
    elif pcolor=='bandg':
      print(Back.GREEN + smg2)
    elif pcolor=='d':
      print(Style.DIM + smg2)
    # 如果未设置autoreset=True，需要使用如下代码重置终端颜色为初始设置
    #print(Fore.RESET + Back.RESET + Style.RESET_ALL)  autoreset=True
    
def colorize_json(smg2,pcolor=''):
    json_data=smg2
    try:
        parsed_json = json.loads(json_data)  # 解析JSON数据
        formatted_json = json.dumps(parsed_json, indent=4)  # 格式化JSON数据

        # 使用Pygments库进行语法高亮
        colored_json = highlight(formatted_json, JsonLexer(), TerminalFormatter())

        print(colored_json)
    except json.JSONDecodeError as e:
        print(json_data)

false=False
data_queue = queue.Queue()
def on_message(ws, message):
    # 处理接收到的消息
    addmsg('收到消息',color='green')
    colorize_json(message)
    message=json.loads(message)
    if message["action"] =="push":
        if message["data"]["author"]["bot"] == false:
            content = json.loads(message["data"]["content"])
            if "${@!"+bot_id+"}" in content['text']:
                #text=json.loads(content)
                print(content['text'])
                print(content['text'][23:])
                # 在这里添加你希望执行的操作
                
                
def on_error(ws, error):
    # 处理错误
    addmsg("发生错误:"+str(error),color='red')
def on_close(ws):
    # 连接关闭时的操作
    addmsg("连接已关闭",color='red')
def on_open(ws):
    # 连接建立时的操作
    addmsg("连接已建立",color='green')
    # 发送心跳包
    def send_ping():
        print('发送：{"type":"ping"}')
        ws.send('{"type":"ping"}')
    send_ping()  # 发送第一个心跳包
    # 定时发送心跳包
    def schedule_ping():
        send_ping()
        # 每25秒发送一次心跳包
        websocket._get_connection()._connect_time = 0  # 重置连接时间，避免过期
        ws.send_ping()
        websocket._get_connection().sock.settimeout(70)
        ws.send('{"type":"ping"}')
    websocket._get_connection().run_forever(ping_interval=25, ping_payload='{"type":"ping"}', ping_schedule=schedule_ping)
# 替换成用户输入的BOT令牌
lingpai = lingpai
url = requests_url+f"{lingpai}/getMe"
# 发送HTTP请求获取基本信息
response = requests.get(url)
data = response.json()
def send_data_thread():
    while True:
        # 在这里编写需要发送的数据
        time.sleep(25)
        ws.send('{"type":"ping"}')
        addmsg('发送心跳包：{"type":"ping"}',color='green')
if response.ok and data.get("ok"):
    user_token = data["result"]["user_token"]
    device_id = "your_device_id"
    version_number = "1.6.60"
    super_str = base64.b64encode(json.dumps({
        "platform": "bot",
        "version": version_number,
        "channel": "office",
        "device_id": device_id,
        "build_number": "1"
    }).encode('utf-8')).decode('utf-8')
    ws_url = websocket_url+f"?id={user_token}&dId={device_id}&v={version_number}&x-super-properties={super_str}"
    threading.Thread(target=send_data_thread, daemon=True).start()
    # 建立WebSocket连接
    websocket.enableTrace(True)
    ws = websocket.WebSocketApp(ws_url,
                                on_message=on_message,
                                on_error=on_error,
                                on_close=on_close)
    ws.on_open = on_open
    ws.run_forever()
else:
    addmsg("无法获取BOT基本信息，请检查令牌是否正确。",color='red')

```

## 指令介绍

> 最后，介绍机器人指令的相关信息

### 添加指令

在开放平台>应用>机器人>机器人编辑 里添加一个指令
![指令](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/fae065badaa54ff39a01e695e8751c31.png)
参数可以不填，如果参数不填，则为直接发送命令  

### 命令的可见性级别

> 该段来源于官方文档

开发者需要向特定的用户开放特定的命令，以实现基本的机器人功能权限划分。Fanbook 目前通过将命令的可见性进行分级，实现向不同的用户群开放命令，目前分为以下级别：  

0 级（公开可见）：这是最低的可见性级别，任何人（机器人所有者和普通用户）在任何聊天会话（私聊和频道）中都可以看到该命令。  
1 级（私聊可见）：该级别的命令任何人在与机器人私聊时可见。  
2 级（所有者可见）：仅服务器管理员可看到该命令。  

### 是否隐藏

设置为隐藏后，该指令发送以后只有发送者和机器人可以收到。

### 是否可点击

设置是否可以点击

### 命令参数

#### 小程序

小程序的appid填写为网页链接即可，和h5区别在于可以使用js sdk获取用户信息  

#### H5

H5的链接填写为网页链接即可，和小程序区别在于无法使用js sdk获取用户信息

#### 命令表单参数

命令点击后，弹出一个表单，用户填写完以后，点击确定，即可将命令和内容以空格分隔发送  
![表单](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/b656a4a68f0e6235ebdc6d278d773629.png)  

#### 命令选项参数

点击命令后，弹出列选项，用户选择后，即可将命令和选项以空格分隔发送  
![选项](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/9a9aeac6188563383bb3c0730f34fb53.png)
