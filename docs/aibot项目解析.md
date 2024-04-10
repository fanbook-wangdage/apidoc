# fanbook ai bot原创项目解析  

## 项目介绍

Fanbook AI Bot 是一个基于ChatGPT及其他模型的聊天机器人，还可以生成图片，它能够与用户进行自然语言交互，并生成相应的回复。该聊天机器人使用ChatGPT API来处理用户的输入，并使用Fanbook API将结果发送到频道。

## 版本

- 4.8 更新绘图功能
- 4.7 更新`net-gpt-3.5-turbo`联网搜索模型  
- 4.6 更新杂项(最新开源版)

## 项目地址

- [Github](https://github.com/fanbook-wangdage/Fanbook-ChatGPT-BOT-V4)

## 开始使用

### 推荐环境

- Python 3.12  
- pip 22.0.4+  
- windows 10+  
- openai 0.28

### 获取代码

1.克隆或者下载压缩包解压，使用vscode或其他编辑器打开  
![vscode克隆](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/c9686418fc3f4cfd7d07251253cd4362.png)

### 安装依赖
> 该项目目前没有库列表，请查看vscode或者其他编辑器，查看import后面有没有黄色波浪线，如果有，请手动安装。
> 一些库可能在个别系统或者版本上不支持，请处理相应的代码
手动安装：
```
pip install <包名>
```

### 项目解析

打开`y-4.6-main.py`先从导入库以后的代码开始  
先看for前面的代码：
```python
# 获取控制台窗口句柄
kernel32 = ctypes.windll.kernel32
hwnd = kernel32.GetConsoleWindow()

# 设置窗口标题
if hwnd != 0:
    kernel32.SetConsoleTitleW("ChatGPT公用终端进程-1")

#openai.api_base = "https://api.chatanywhere.com.cn/v1"
openai.api_base = "https://openkey.cloud/v1"

messages = []
openai.api_key="sk-W7d3K1CMKjlLedzJK6xVH2pY9rNpIyTrEr4h5KFYdJjJWEz3"

sentry_sdk.init(
    dsn="https://89888d799d5eeb0b312495101590cf23@o4506008195956736.ingest.sentry.io/4506008234688512",
    # Set traces_sample_rate to 1.0 to capture 100%
    # of transactions for performance monitoring.
    traces_sample_rate=1.0,
    # Set profiles_sample_rate to 1.0 to profile 100%
    # of sampled transactions.
    # We recommend adjusting this value in production.
    profiles_sample_rate=1.0,
)
init(autoreset=True)  #初始化自动恢复颜色，多次执行会导致卡慢
b=0
lingpai='0f2de7ac667d1c'
```
这里，设置了窗口标题，以方便区分项目，然后，使用`openai.api_base`和`openai.api_key`设置了api地址及key，然后，设置了sentry的sdk，最后，使用`init(autoreset=True)`初始化了彩色输出。  
变量`b`表示重启次数，`lingpai`表示bot令牌，修改为自己有发言权限的bot token  

继续看for循环后面的代码：  
```python
for s in range(30):
    try:
        zdsxw=6
        b+=1
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":545093460387282944,
        "text":"ChatGPT服务启动[beta 4.6]\n标识号:FREE1\n第"+str(s+1)+"次，共30次"
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        def get_audio_duration(url,msg):
            """
            try:
                # 要下载的文件的URL
                file_url = url

                # 从URL中提取文件名
                file_name = os.path.basename(file_url)

                # 构建文件的保存路径
                save_path = os.path.join(os.getcwd(), file_name)
                filename=file_name
                # 下载文件并保存到程序根目录
                urllib.request.urlretrieve(url, filename)
                print(f"文件已下载到：{filename}")
            except Exception as e:
                print(f"下载出错：{e}")
            # 获取音频文件的时长
            filepath = filename
            """
            # 获取到的时长单位为秒
            return len(msg) // 4
        '''
        url = "https://speech.ai.xiaomi.com/speech/1.0/tts_token?token=eyJ2IjoiVjAiLCJuIjoiU1oifQ.AAAXUkp9P1QAFgBdFAwbZ24VTkoaRRsPG2AFFhgAQgBIRyIvRw4PfR9GGBh0VUBPEQhHWxBrPkBITxBDEFhHb1RHT0FXEw0QY20QRU4AWgBZTTJVQQ4YTE9KEXF2AAkUSRNMGBh0XUdeQRtQQ31hahBOGRJPQwlGMwUXHBFdQV5ANmhBTk0UTkEPFW4BQXMUWUECR2A-QEtIEkJHXBM3VRtKFQsSAxpgYxceGBVFEBRPJgMAAAAKR0xLMD99FB8ATABeR2NVQBlHWw8KEjE7D0kaERcPAkBlBA8YR1tEDkBqbxQcQhNUDhhLN0QAFhNYGwkTY2IVSkMOVEdCUnQKExobXRACE2ZtGgA.EO5fMqpLGoC6LrZI3pQP5w"
        audio_duration = get_audio_duration(url)
        print(f"音频时长：{audio_duration} 秒")
        '''
        ms='0'
        lingpai='0f2de7ac66727cd9fcec1ee43559c561f6abf3f1e202c5a06c2aead1ff314388d1c'
        pdid=433212507046281216
        sycyid=[]#使用成员id
        cysycs=[]#成员使用次数
        jgczsj=0#警告重置时间
        gjc=''#绘图关键词
        dycs=0#本次总调用次数
        fwqlb=[]#服务器列表
        fwqxz=[]#服务器选择角色
        fwqms=[]#服务器选择的模式
        efzdy=0#二分钟调用次数
        zdyzyxx=False#是否只打印重要信息，可能会影响性能
        mxlb=[]#模型列表
        hhxxlb=[]#绘画消息列表
        hhpdidlb=[]#频道id列表
        hhidlb=[]#绘画id列表
        xxjl=[]#消息记录
        xxfszid=[]#消息发送者列表
        xxfsz=[]#消息发送者用户名
        qgglb=[]#去广告服务器id列表
        dljclb=[]#独立进程服务器id列表
```

`for s in range(30):`表示，最多意外退出并重启30次，防止因为网络问题导致ws连接问题导致项目终止  
try后面的代码可以检查是否出现其他错误  
然后，向频道发送一条启动消息，可以把`"chat_id":545093460387282944,`换成日志频道id  
接着，定义了`get_audio_duration`函数，用来获取音频长度，现在为估算  
然后，定义了令牌等的变量，可以查看注释了解  

```python
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
        try:
            parsed_json = json.loads(json_data)  # 解析JSON数据
        except Exception as e:
            parsed_json=json_data
        formatted_json = json.dumps(parsed_json, indent=4)  # 格式化JSON数据
        # 使用Pygments库进行语法高亮
        colored_json = highlight(formatted_json, JsonLexer(), TerminalFormatter())
        print(colored_json)
    except json.JSONDecodeError as e:
        print(json_data)
def get_ad(adjl=10,fwqid=0):
    global qgglb
    fsad=random.randint(1,adjl)
    gg=''
    gglb=[""]
    if adjl==1 or adjl==2 or adjl==3:
        gg=gglb[random.randint(0,len(gglb)-1)]
        print(gg)
    if str(fwqid) in qgglb:
        return ''
    else:
        return gg
def bot_send_message(token=lingpai,pdid=0,text=''):
    url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
    headers = {'content-type':"application/json;charset=utf-8"}
    jsonfile=json.dumps({
    "chat_id":pdid,
    "text":text
    })
    print(jsonfile)
    postreturn=requests.post(url,data=jsonfile,headers=headers)
    colorize_json(smg2=postreturn.text,pcolor='d')
```

随后，定义了一些常用函数  
- `addmsg` 向终端添加彩色提示  
- `colorprint` 拓展终端颜色  
- `colorize_json` 格式化JSON数据并高亮显示  
- `get_ad` 获取一条广告，广告在`gglb`变量中定义  
- `bot_send_message` 向指定频道发送消息  

再来看处理消息的函数`pdxc(message=None)`
```python
def pdxc(message=None):
    try:
        global ms
        global xz
        global sycyid,cysycs,jgczsj,dycs,hhxxlb,hhidlb,messages
        global gjc,fwqlb,fwqxz,fwqms,efzdy,mxlb,hhpdidlb,xxjl,xxfsz,xxfszid
        # 处理接收到的消息
        if zdyzyxx == False:
            addmsg('收到消息',color='green')
            colorize_json(message)
        message=json.loads(message)
        if message["action"] =="push":
            if message["data"]["author"]["bot"] == false:
                if str(message["data"]["guild_id"]) in dljclb:
                    pass
                else: 
                    content = json.loads(message["data"]["content"])
                    userid=message["data"]["user_id"]
                    fwqid=message["data"]["guild_id"]
                    if "${@!448828939389894656}" in content['text']:
                        if zdyzyxx:
                            addmsg('收到重要消息',color='green')
                            colorize_json(message)
                        efzdy+=1
                        dycs+=1
                        if fwqid in fwqlb:
                            print('服务器id:',fwqid,'已经记录过，不需要重新记录')
                        else:
                            fwqlb.append(fwqid)
                            fwqms.append("0")
                            fwqxz.append('')
                            mxlb.append('ChatGPT')
                            messages.append([])
                            print('服务器id:',fwqid,'已经成功被记录')
                            print(fwqlb)
                        if userid in sycyid:
                            sycy=sycyid.index(userid)
                            cysycs[sycy]+=1
                            print('用户id:',userid,'使用次数增加1,原本次数为：',cysycs[sycy])
                        else:
                            sycyid.append(userid)
                            cysycs.append(1)
                            print('新使用用户：',userid)
                            print(sycyid)
                            print(cysycs)
                        if int(cysycs[sycyid.index(userid)]) == 7:
                            print('用户：',userid,'第6次操作')
                            url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
                            headers = {'content-type':"application/json;charset=utf-8"}
                            jsonfile=json.dumps({
                            "chat_id":int(message["data"]["channel_id"]),
                            "text": '速率限制：\n你当前给机器人发送消息数超过每两分钟6次，请休息一下，2分钟后再来吧'+get_ad(adjl=2,fwqid=fwqid),
                            "reply_to_message_id":int(message["data"]["message_id"])
                            })
                            print(jsonfile)
                            postreturn=requests.post(url,data=jsonfile,headers=headers)
                            colorize_json(smg2=postreturn.text,pcolor='d')
```

先是将变量声明为全局，然后格式化输出ws的消息，然后判断是否为@机器人的  
`if "${@!448828939389894656}" in content['text']:`这段非常重要，将448828939389894656替换为你的机器人id，否则会被忽略  
接着，判断有没有记录过服务器配置，没有的话向列表添加服务器配置，服务器之间设置不相互干扰  
然后，一系列判断是否为新使用用户、发送过快用户
剩下的里面174行都是判断输入的代码，我们选择一个来讲  
```python
elif '切换模型' in content['text']:
    if 'ChatGPT' in content['text']:
        mxlb[fwqlb.index(fwqid)] = 'ChatGPT'
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text":"模型已切换为ChatGPT"+get_ad(adjl=2,fwqid=fwqid),
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
    elif '文心一言' in content['text']:
        mxlb[fwqlb.index(fwqid)] = '文心一言'
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text":"模型已切换为文心一言"+get_ad(adjl=2,fwqid=fwqid),
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
    elif '星火大模型V2.0' in content['text']:
        mxlb[fwqlb.index(fwqid)] = '星火大模型V2.0'
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text":"模型已切换为星火大模型V2.0"+get_ad(adjl=2,fwqid=fwqid),
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
    else:
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text":"找不到你选择的模型，请重新选择"+get_ad(adjl=2,fwqid=fwqid),
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
```
先判断用户消息中是否含有"切换模型"，如果有就开始判断是否含有模型名称，有就更改，发送提示，没有就接着执行  
`mxlb[fwqlb.index(fwqid)] = '模型名'` 用来保存用户选择的模型，每个服务器单独一项  
接着看回复代码  
```python
if fwqms[fwqlb.index(fwqid)]=='0':
    #text=json.loads(content)
    print(mxlb[fwqlb.index(fwqid)]+'文本模式回复')
    print(content['text'])
    print(content['text'][23:])
    print(messages[fwqlb.index(fwqid)])
    if mxlb[fwqlb.index(fwqid)] == 'ChatGPT':
        if len(messages[fwqlb.index(fwqid)]) > zdsxw:
            sc=messages[fwqlb.index(fwqid)][0]
            sc2=messages[fwqlb.index(fwqid)][1]
            messages[fwqlb.index(fwqid)].pop(0)
            messages[fwqlb.index(fwqid)].pop(1)
            print('删除了上下文'+str(sc)+str(sc2)+'\n剩余长度'+str(len(messages[fwqlb.index(fwqid)])))
        a=''
        #chatmessage=requests.get('https://api.lolimi.cn/API/AI/mfcat3.5.php?type=json&format=0&sx= &msg='+content['text'][23:]+'.', stream=True)
        messages[fwqlb.index(fwqid)].append({"role":"user","content": content['text'][23:]})
        zt=0
        for resp in openai.ChatCompletion.create(
                                            model="gpt-3.5-turbo",
                                            messages=messages[fwqlb.index(fwqid)],
                                            # 流式输出
                                            stream = True):
            if 'content' in resp.choices[0].delta:
                if zt==0:
                    zt=1
                    url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
                    headers = {'content-type':"application/json;charset=utf-8"}
                    jsonfile=json.dumps({
                    "chat_id":int(message["data"]["channel_id"]),
                    "text": resp.choices[0].delta.content,
                    "reply_to_message_id":int(message["data"]["message_id"])
                    })
                    print(jsonfile)
                    postreturn=requests.post(url,data=jsonfile,headers=headers)
                    colorize_json(smg2=postreturn.text,pcolor='d')
                    messageinfo=postreturn.text
                    messageinfo=json.loads(messageinfo)
                a+=resp.choices[0].delta.content
                print(resp.choices[0].delta.content, end="", flush=True)
                print(a)
                if random.randint(0,100)<25:
                    url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/editMessageText'
                    headers = {'content-type':"application/json;charset=utf-8"}
                    jsonfile=json.dumps({
                    "chat_id":int(message["data"]["channel_id"]),
                    "message_id":messageinfo['result']['message_id'],
                    "text": a,
                    "reply_to_message_id":int(message["data"]["message_id"])
                    })
                    print(jsonfile)
                    postreturn=requests.post(url,data=jsonfile,headers=headers)
                    colorize_json(smg2=postreturn.text,pcolor='d')
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/editMessageText'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "message_id":messageinfo['result']['message_id'],
        "text": a,
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
        reply = a
        print(reply)
        chatmessage=reply
        messages[fwqlb.index(fwqid)].append({"role": "assistant", "content": chatmessage})
    elif mxlb[fwqlb.index(fwqid)] == '文心一言':
        chatmessage=requests.get('https://api.lolimi.cn/API/AI/wx.php?type=json&format=0&msg='+content['text'][23:], stream=True)
        chatmessage=json.loads(chatmessage.text)
    elif mxlb[fwqlb.index(fwqid)] == '星火大模型V2.0':
        chatmessage=requests.get('https://api.lolimi.cn/API/AI/xh.php?type=json&format=0&msg='+content['text'][23:]+'.', stream=True)
        chatmessage=json.loads(chatmessage.text)
    print(chatmessage)
    n="""
""""
    if mxlb[fwqlb.index(fwqid)] == '星火大模型V2.0' or mxlb[fwqlb.index(fwqid)] == '文心一言':
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text": chatmessage['data']['output'].replace('\n', n)+get_ad(adjl=8,fwqid=fwqid),
        "reply_to_message_id":int(message["data"]["message_id"]),
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
    '''
    else:
        #chatmessage=chatmessage['data'].replace('\\\\', '\\')
        chatmessage=chatmessage.replace('\\n', n)
        text=chatmessage.replace('', '')+get_ad(adjl=8)
        url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
        headers = {'content-type':"application/json;charset=utf-8"}
        jsonfile=json.dumps({
        "chat_id":int(message["data"]["channel_id"]),
        "text": "${@!"+message["data"]["user_id"]+"}"+text+get_ad(adjl=8,fwqid=fwqid),
        #"parse_mode":"Fanbook",
        "reply_to_message_id":int(message["data"]["message_id"])
        })
        print(jsonfile)
        postreturn=requests.post(url,data=jsonfile,headers=headers)
        colorize_json(smg2=postreturn.text,pcolor='d')
    '''
elif fwqms[fwqlb.index(fwqid)]=='1':
    print('音频模式回复')
    print(content['text'])
    print(content['text'][23:])
    if fwqxz[fwqlb.index(fwqid)] == '':
        chatmessage=requests.get('https://api.lolimi.cn/API/AI/ys3.5.php?msg=.'+content['text'][23:], stream=True)
    else:
        chatmessage=requests.get('https://api.lolimi.cn/API/AI/ys3.5.php?msg=.'+content['text'][23:]+'&speaker='+xz, stream=True)
    chatmessage=json.loads(chatmessage.text)
    print(chatmessage)
    print(chatmessage['music'])
    url = chatmessage['music']
    audio_duration = get_audio_duration(str(url),msg=chatmessage['msg'])
    print(f"音频时长：{audio_duration} 秒")
    xx='{"type": "voice","url": "'+chatmessage['music']+'","second": '+str(int(audio_duration))+',"isRead": false}'
    url='https://a1.fanbook.mobi/api/bot/'+lingpai+'/sendMessage'
    headers = {'content-type':"application/json;charset=utf-8"}
    jsonfile=json.dumps({
    "chat_id":int(message["data"]["channel_id"]),
    "text": xx,
    "reply_to_message_id":int(message["data"]["message_id"])
    })
    print(jsonfile)
    postreturn=requests.post(url,data=jsonfile,headers=headers)
    colorize_json(smg2=postreturn.text,pcolor='d')
xxjl.append(mxlb[fwqlb.index(fwqid)]+'模式回复消息:'+content['text'][23:].replace('\n', '')+'，模型回复:'+str(chatmessage).replace('\n',''))
xxfsz.append('发送者:'+message["data"]["author"]["nickname"]+message["data"]["author"]["username"])
xxfszid.append('userid:'+message['data']["user_id"]+" 服务器id:"+str(fwqid))
```

首先判断了用户选择的模型和上下文是否超出长度，然后通过调用chatgpt的接口，将用户输入的文本作为参数添加到上下文并发送给chatgpt。  
最后在记录列表中添加了本次对话记录  

最后看代码的末尾
定义了一些关于ws异常情况的处理函数，发送日志到频道
```python
with open('xxjl.txt', 'w',encoding="utf-8") as file:
    for item in xxjl:
        file.write(f"{item}\n")
with open('xxfsz.txt', 'w',encoding="utf-8") as file:
    for item in xxfsz:
        file.write(f"{item}\n")
with open('xxfszid.txt', 'w',encoding="utf-8") as file:
    for item in xxfszid:
        file.write(f"{item}\n")
```

将记录列表写入文件，方便后续通过api调用  
```python
data_queue = queue.Queue()
    def on_message(ws, message):
        n_pdxc = threading.Thread(target=pdxc,args=(message,))
        n_pdxc.start()
```

使用多线程来处理接收到的消息，调用pdxc函数处理
最后,建立连接
```python
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
    ws_url = f"wss://gateway-bot.fanbook.mobi/websocket?id={user_token}&dId={device_id}&v={version_number}&x-super-properties={super_str}"
    threading.Thread(target=send_data_thread, daemon=True).start()
    # 建立WebSocket连接
    websocket.enableTrace(True)
    ws = websocket.WebSocketApp(ws_url,
                                on_message=on_message,
                                on_error=on_error,
                                on_close=on_close)
    ws.on_open = on_open
    ws.run_forever(sslopt={"cert_reqs": ssl.CERT_NONE})
```
### 部署

安装依赖，修改代码，本地测试完成后，即可部署到服务器  