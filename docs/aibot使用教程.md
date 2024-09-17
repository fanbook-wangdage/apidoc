# ai bot使用教程

> 如果你是管理员，请先添加快捷指令到频道

## 基础功能-ChatGPT3.5聊天

> 不需要任何操作即可和ai聊天  

方法：@机器人 消息  
> 提示：长按机器人头像即可@

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/b96582c418d1bdb0bfa6eb236e42480f.png)  

## 基础功能-ChatGPT3.5联网模型

> 联网模型的好处：可以帮你搜索实时信息  

操作步骤：  

1. 点击切换模型指令，切换模型到搜索模型  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/1464c7effed9827bbcad990a3188b127.png)  

2. @机器人 消息使用即可

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/b79e7e916e80dd3cdc5e4819d52a5a23.png)  

## 基础功能-KimiAI模型  

> 该模型的特点：自动联网、可以解析文件、图片

### 普通聊天

切换模型后，@机器人 消息 发送即可  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/6cf5c5f04161cb5951a6ab2a5ab972e2.png)

### 引用文件和图片

发送文件或者图片，然后回复你发送的文件，@ 上机器人和问题，发送即可  
![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/2e914d72a4c99e01b71197312070171a.png)

## 基础功能-AI绘图

> 可以让ai帮你使用文本创建图像  

使用方法：点击AI绘图指令，输入关键词（中英均可），然后确定  
![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/0b12d5d94f78fe7f82f2e0264b88a83f.png)  

通常在1分钟内输出结果，如果失败，请调整关键词
![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/aaae55e286ee477406e74d0345f59406.png)  

## 基础功能-清除上下文

> 可以让AI忘记以前的对话  
![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/153a5b6a8956251017eb09d6fc05d6d5.png)  

## 基础功能-切换回复模式

> 让回复模式在普通回复模式和流回复模式切换  

区别：

- 普通回复模式：生成完以后才发送回复  
- 流回复模式：边生成变回复  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/645fa273b2c2ce020d54207f500a7836.png)

## 进阶功能-设置提示词  

> 提示词功能可以让你自定义ChatGPT3.5的回复方式  

1. 点击提示词创作平台  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/afe48011ef43da4e61a9936030ce674c.png)  

2. 直接点击搜索来查看所有提示词  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/cd53ed0d2c0786322cb69a01b078fa62.png)  

3. 找到你最喜欢的一个，记住id  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/4bc5d19bef79f39d3e111adb2c697d00.png)  

4. 回到频道设置提示词  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/05abef5da66f179e592822efaa436a3c.png)  

现在，你就可以使用那个提示词了，设置提示词id为0即可取消  
![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/99661f461db0f35840c510d180627494.png)

## 进阶功能-提示词创作平台

在提示词创作平台，你可以在一条提示词后面点击讨论区按钮来发送及查看评论  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/1a459cd4462e18ac3bfdaaf9f5c6d49e.png)

查看我创建的提示词可以筛选你自己创建的提示词，包括未审核的  

提交自定义提示词可以提交你的自定义提示词，并且可以让其他人看到及使用（前提是需要通过审核）  
按照上方的创作方法创作即可  

![alt text](https://fb-cdn.fanbook.cn/fanbook/app/files/chatroom/image/21bf3274906cdabb41b6d68cf7cdaa75.png)

### 开发者功能

提示词创作平台开放api  
获取提示词详细信息：  
GET  

```
https://124.221.67.43/webapi/web/getdataforid
```

参数：  
| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| id | string | 是 | 提示词的id |

返回：
| 参数名 | 类型 | 是否必须 | 描述 |
| :----: | :----: | :----: | :----: |
| code | integer | 是 | 状态码 |
| msg | string | 是 | 状态码的描述 |
| data | Array | 是 | 包含结果的数组 |

返回示例：

```json
{
    "code": 200,
    "data": [
        {
            "date": "2024/8/3",
            "id": 2,
            "introduce": "你的专属王大哥",
            "name": "wdg",
            "tsc": "你叫老王，有人也会叫你王大哥，你常常在消息里加上\"[吃瓜]\"喜欢使用一连串的。。。你精通Python，爱吃瓜皮，性格友好，温顺可人",
            "uid": "447266628875321344",
            "user": "Alex"
        }
    ],
    "msg": "成功"
}
```