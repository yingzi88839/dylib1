# 军师超自然 - 字段翻译文档
==============================

## 渲染设置类 (RenderSettings)
---------------------------

```csharp
public sealed class UnityEngine.RenderSettings : UnityEngine.Object
{
    // Methods
    public static System.Single get_ambientSkyboxAmount(); // 0x4E91B2C  // 获取环境天空盒数量
    public static System.Void set_ambientSkyboxAmount(System.Single value); // 0x4E91B7C  // 设置环境天空盒数量
    public static System.Boolean get_fog(); // 0x4E91C44  // 起雾
    public static System.Void set_fog(System.Boolean value); // 0x4E91C6C  // 设置雾
    public static System.Single get_fogStartDistance(); // 0x4E91CA8  // 获取雾开始距离
    public static System.Void set_fogStartDistance(System.Single value); // 0x4E91CD0  // 设置雾开始距离
    public static System.Single get_fogEndDistance(); // 0x4E91D08  // 获取雾结束距离
    public static System.Void set_fogEndDistance(System.Single value); // 0x4E91D30  // 设置雾结束距离
    public static System.Single get_fogMode(enum UnityEngine.FogMode value); // 0x4E91D90  // 获取雾模式
    public static System.Void set_fogMode(enum UnityEngine.FogMode value); // 0x4E91D90  // 设置雾模式
    public static struct UnityEngine.Color get_fogColor(); // 0x4E91DCC  // 获取雾颜色
}
```

## 游戏定义类 (GameDefine)
-------------------------

```csharp
public class GameDefine
{
    public const UInt32 autoCancleTime = 10; // 自动取消时间
    public const UInt32 recentEmojiMax = 4; // 最近表情最大数量
    public const UInt32 recentEmojiMin = 4; // 最近表情最小数量
    public const UInt32 recentGiftEmojiMax = 3; // 最近礼物表情最大数量
    public const UInt32 recentGiftEmojiMin = 3; // 最近礼物表情最小数量
    public const UInt32 giftGoodsType = 2101; // 礼物商品类型
    public const UInt32 gameNameLimit = 14; // 游戏名称长度限制
    public const UInt32 GameRemarkLimit = 7; // 游戏备注长度限制
    public const UInt32 roomNameLimit = 10; // 房间名称长度限制
    public const UInt32 roomNoticeLimit = 50; // 房间公告长度限制
    public const UInt32 playGameNeedCount = 2; // 开始游戏需要人数
    public const UInt32 defaultMapId = 10002; // 默认地图ID
    public const UInt32 defaultOldMapId = 4002; // 默认旧地图ID
    public const UInt32 chestGetBtnShowNum = 3; // 宝箱获取按钮显示数量
    public const UInt32 clearDeathBodyToolId = 600001; // 清除尸体工具ID
    public const UInt32 spaceDefaultMapId = 1001; // 太空默认地图ID
    public const UInt32 NormalAstronautID = 2; // 正常宇航员ID
    public const UInt32 awardMaxNum = 20000; // 奖励最大数量
    public const Int32 ClassicPtype = 0; // 经典模式类型
    public const Int32 GodPtype = 6; // 上帝模式类型
    public const Int32 GodQualifyingPtype = 102; // 上帝排位赛类型
    public const UInt32 followLimite = 100; // 关注限制
    public const Single GunShotRayCastMaxLength = 1133903872; // 枪射击射线最大长度
}
```

## 层定义 (Layer Definitions)
----------------------------

```csharp
public static class GameDefine
{
    public static readonly Int32 UILayer; // UI层
    public static readonly Int32 DefualtLayer; // 默认层
    public static readonly Int32 WaterLayer; // 水层
    public static readonly Int32 ProjectorTargetLayer; // 投影目标层
    public static readonly Int32 PortalCullingLayer; // 传送门剔除层
    public static readonly Int32 ItemLayer; // 物品层
    public static readonly Int32 Ground2Layer; // 地面2层
    public static readonly Int32 GroundLayer; // 地面层
    public static readonly Int32 WallLayer; // 墙壁层
    public static readonly Int32 TerminalCameraLayer; // 终端相机层
    public static readonly Int32 IgnoreRaycast; // 忽略射线检测层
    public static readonly Int32 NpcLayer; // NPC层
    public static readonly Int32 NpcBody1Layer; // NPC身体1层
    public static readonly Int32 NpcBody2Layer; // NPC身体2层
    public static readonly Int32 NpcBody3Layer; // NPC身体3层
    public static readonly Int32 NpcBody4Layer; // NPC身体4层
    public static readonly Int32 NpcBody5Layer; // NPC身体5层
    public static readonly Int32 NpcAllBitLayer; // NPC所有位层
    public static readonly Int32 ObstacleLayer; // 障碍物层
    public static readonly Int32 CHLayer; // CH层
    public static readonly Int32 NoCollisionLayer; // 无碰撞层
}
```

## 动画层定义 (Animator Layer Definitions)
---------------------------------------

```csharp
public class GameDefine
{
    public const Int32 Animator_UILayer = 1; // UI动画层
    public const Int32 Animator_TPSLayer = 2; // 第三人称动画层
    public const Int32 Animator_FPSLayer = 3; // 第一人称动画层
    public const Int32 Animator_NPCLayer = 4; // NPC动画层
    public const Int32 Animator_UseFullBodyLayer = 9; // 使用全身动画层
    public const Int32 Animator_HitLayer = 10; // 受击动画层
    public const Int32 Animator_FaceLayer = 11; // 面部动画层
    public const Int32 Animator_ReplaceActionLayer = 12; // 替换动作层
    public const Int32 Animator_ReplaceActionUpperLayer = 13; // 替换上半身动作层
    public const Int32 Animator_ReplaceActionLeftLayer = 14; // 替换左半身动作层
    public const Int32 Animator_ReplaceActionTwoLayer = 16; // 替换双层动作层
    public const Int32 Animator_TBGameLayer = 16; // TB游戏层
}
```

## 音量设置 (Audio Settings)
----------------------------

```csharp
public class GameDefine
{
    public const Single MusicVolume = 1058642330; // 音乐音量
    public const Single SoundVolume = 1058642330; // 音效音量
    public const Single MicVolume = 1062551421; // 麦克风音量
    public const Single SpeakVolume = 1062551421; // 说话音量
    public const Single MicToGameSoundVolume = 1058642330; // 麦克风到游戏音效音量
    public const Single PlayerMicVolume = 1065353216; // 玩家麦克风音量
    public const Boolean MicEnableAEC = 0; // 麦克风启用回声消除
}
```

## 菜单索引 (Menu Indices)
--------------------------

```csharp
public class GameDefine
{
    public const Int32 ColorMenuIndex = 99; // 颜色菜单索引
    public const Int32 SuitMenuIndex = 98; // 套装菜单索引
    public const Int32 HolyMenuIndex = 100; // 神圣菜单索引
    public const Int32 KillEffectMenuIndex = 1; // 击杀效果菜单索引
    public const Int32 KillActionMenuIndex = 2; // 击杀动作菜单索引
    public const Int32 MeetingBgMenuIndex = 3; // 会议背景菜单索引
    public const Int32 DazzleAccountMenuIndex = 4; // 炫目账户菜单索引
    public const Int32 HaloMenuIndex = 5; // 光环菜单索引
    public const Int32 HonoraryTitleIndex = 6; // 荣誉称号索引
    public const Int32 MapSkinIndex = 7; // 地图皮肤索引
    public const Int32 CardBgMenuIndex = 1; // 卡片背景菜单索引
    public const Int32 CardActionMenuIndex = 2; // 卡片动作菜单索引
    public const Int32 InteractActionIndex = 1; // 交互动作索引
    public const Int32 InteractEmoteIndex = 2; // 交互表情索引
    public const Int32 InteractHenshinIndex = 3; // 交互变身索引
}
```

## 道具ID (Item IDs)
--------------------

```csharp
public class GameDefine
{
    public const UInt32 KillEffectId = 800001; // 击杀效果ID
    public const UInt32 defaultPoliceKillEffId = 810008; // 默认警察击杀效果ID
    public const UInt32 beThiefEffectId = 810012; // 成为小偷效果ID
    public const UInt32 loadingImgId = 220001; // 加载图片ID
    public const UInt32 sharkLoadingImgId = 220000; // 鲨鱼加载图片ID
    public const UInt32 DefaultBeatEffectId = 2000001; // 默认击败效果ID
    public const UInt32 DefaultUserPageSkinId = 440001; // 默认用户页面皮肤ID
    public const UInt32 DefaultHeadBorderId = 230001; // 默认头像边框ID
    public const UInt32 DefaultCardBgId = 2400001; // 默认卡片背景ID
    public const UInt32 DefaultCardActionId = 2500001; // 默认卡片动作ID
    public const UInt32 DefaultMeetingBgId = 3600001; // 默认会议背景ID
    public const UInt32 DefaultDazzleAccountId = 450001; // 默认炫目账户ID
    public const UInt32 DefaultMapSkinId = 500001; // 默认地图皮肤ID
    public const UInt32 DefaultProfileSkinId = 590001; // 默认个人资料皮肤ID
}
```

## 动作ID (Action IDs)
---------------------

```csharp
public class GameDefine
{
    public const UInt32 defultActionId = 240142; // 默认动作ID
    public const Int32 playerReviveActionBackId = 82000003; // 玩家复活背面动作ID
    public const Int32 playerReviveActionFrontId = 82000004; // 玩家复活正面动作ID
    public const Int32 playerRobotThrowActionId = 82000008; // 玩家扔机器人动作ID
    public const Int32 playerSelectTreasureAreaId = 82000009; // 玩家选择宝藏区域动作ID
    public const Int32 playerDigMoundActionId_TPS = 82000013; // 玩家挖土堆动作ID（第三人称）
    public const Int32 playerDigMoundActionId_FPS = 82000014; // 玩家挖土堆动作ID（第一人称）
    public const Int32 playerPutDragonTableActionId = 82000039; // 玩家放龙桌动作ID
    public const Int32 playerTreatmentActionId = 82000077; // 玩家治疗动作ID
    public const Int32 playerPvmSlateSlowActionId = 82000078; // 玩家PVM石板慢速动作ID
    public const Int32 playerPvmSlateFastActionId = 82000079; // 玩家PVM石板快速动作ID
    public const Int32 MWalkCarpetActionId = 82000182; // M走地毯动作ID
    public const Int32 WSWalkCarpetActionId = 82000183; // WS走地毯动作ID
    public const Int32 WOWalkCarpetActionId = 82000184; // WO走地毯动作ID
    public const UInt32 HandUpSignActionID = 4000147; // 举手标志动作ID
}
```

## 除颤器设置 (Defibrillator Settings)
-------------------------------------

```csharp
public class GameDefine
{
    public const Single DefibrillatorMaxCdTime = 1073741824; // 除颤器最大冷却时间
    public const Single DefibrillatorMaxChargeTime = 1073741824; // 除颤器最大充电时间
}
```

## 美人鱼服装ID (Mermaid Costume IDs)
------------------------------------

```csharp
public class GameDefine
{
    public const Int32 MermaidFishClothId = 20000444; // 美人鱼鱼服装ID
    public const Int32 MermaidManClothId = 20000447; // 美人鱼男装ID
}
```

## 道具交换ID (Item Exchange IDs)
---------------------------------

```csharp
public class GameDefine
{
    public const UInt32 ChangeNameCard = 640001; // 改名卡
    public const UInt32 ChangeNameGiftBox = 3900; // 改名礼盒
    public const UInt32 PieceOccGiftBox = 89999; // 职业碎片礼盒
    public const UInt32 PieceSkinGiftBox = 99999; // 皮肤碎片礼盒
    public const UInt32 PieceOccId = 620001; // 职业碎片ID
    public const UInt32 PieceSkinId = 620002; // 皮肤碎片ID
    public const UInt32 OccGiftBoxTokenId = 610050; // 职业礼盒代币ID
    public const UInt32 ExchangeCoinId = 640002; // 兑换币ID
    public const UInt32 SpacePointsGiftBox = 3799; // 太空积分礼盒
}
```

## Shader ID (Shader IDs)
-------------------------

```csharp
public class GameDefine
{
    public static readonly Int32 ShaderFxColorNameID; // 特效颜色名称ID
    public static readonly Int32 ShaderColorNameID; // 颜色名称ID
    public static readonly Int32 ShaderEmissionColorNameID; // 自发光颜色名称ID
    public static readonly Int32 Shader_ColorNameID; // Shader颜色名称ID
    public static readonly Int32 Shader_Alpha; // Shader透明度
    public static readonly Int32 Shader_ColorPic; // Shader颜色图片
    public static readonly Int32 Shader_HSVOffset; // Shader HSV偏移
    public static readonly Int32 Shader_OutlineWidth; // Shader轮廓宽度
    public static readonly Int32 Shader_OutlineColor; // Shader轮廓颜色
    public static readonly Int32 Shader_PhantomColorID; // Shader幽灵颜色ID
    public static readonly Int32 Shader_EmissiveColorID; // Shader自发光颜色ID
    public static readonly Int32 Shader_TransparencyIntensity; // Shader透明度强度
    public static readonly Int32 Shader_ENABLE_CHANGE_STATE; // Shader启用状态改变
    public static readonly Int32 Shader_StateMode; // Shader状态模式
}
```

## 操作设置 (Operation Settings)
--------------------------------

```csharp
public class GameDefine
{
    public const Int32 OperationDefultWidth = 1334; // 操作默认宽度
    public const Int32 OperationDefultHeight = 750; // 操作默认高度
    public const Single mainPageOperationOffsetX = 3177537602; // 主页操作偏移X
    public const Single mainPageJoyStickOffsetX = 0; // 主页摇杆偏移X
    public const Single mainPageJoyStickOffsetY = 0; // 主页摇杆偏移Y
}
```

## 时间设置 (Time Settings)
----------------------------

```csharp
public class GameDefine
{
    public const Single openPageTime = 1050253722; // 打开页面时间
    public const Single closePageTime = 1045220557; // 关闭页面时间
    public const Int32 showTimeDuration = 60; // 显示时间持续
    public const Single TinyGameGuideIdleTime = 1084227584; // 小游戏引导空闲时间
    public const Single InDoorSoundAfterTime = 1114636288; // 室内音效延迟时间
}
```

## 任务和活动 (Tasks & Activities)
------------------------------------

```csharp
public class GameDefine
{
    public const UInt32 ActivityCenterTaskTypeId = 17; // 活动中心任务类型ID
    public const Int32 OpenOccAward = 1001; // 开启职业奖励
}
```

## 迷你地图设置 (Minimap Settings)
-----------------------------------

```csharp
public class GameDefine
{
    public const Single miniMapPixeRatio = 1101004800; // 迷你地图像素比例
    public const Single pvmPreviewMapPixeRatio = 1076677837; // PVM预览地图像素比例
}
```

## 会议背景设置 (Meeting Background Settings)
---------------------------------------------

```csharp
public class GameDefine
{
    public const Single meetingBgWidth = 1141637120; // 会议背景宽度
    public const Single meetingBgHeight = 1124859904; // 会议背景高度
}
```

## 新手引导设置 (New Player Guide Settings)
-------------------------------------------

```csharp
public class GameDefine
{
    public const UInt32 newPlayerGuideSpaceNum = 10; // 新玩家引导太空数量
    public const Int32 GuideSpaceNum = 2; // 引导太空数量
    public const Int32 TinyGameMaxGuideTimes = 3; // 小游戏最大引导次数
    public const UInt32 TipChangeVentBtnSpaceNum = 5; // 提示改变通风口按钮太空数量
    public const UInt32 GaideMaxSpaceNum = 6; // 引导最大太空数量
}
```

## 其他设置 (Other Settings)
---------------------------

```csharp
public class GameDefine
{
    public static Boolean IsCZRXDZ; // 是否是某个特定版本
}
```

---

**注意**：这是基于dump文件的初步翻译，更多功能和字段可以通过进一步分析代码来发现。

