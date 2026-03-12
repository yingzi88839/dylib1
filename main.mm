#import <UIKit/UIKit.h>
#import <mach-o/dyld.h>

#define OFFSET_UpdateMinimap      0x1001A5000
#define OFFSET_RenderFogOfWar    0x1001A5200
#define OFFSET_AdjustBrightness  0x1001A5400
#define OFFSET_HighlightItems    0x1001A5600
#define OFFSET_RevealArea        0x1001A5800
#define OFFSET_UpdateExploration 0x1001A5A00
#define OFFSET_MarkAsExplored    0x1001A5C00

typedef void (*UpdateMinimap_t)();
typedef void (*AdjustBrightness_t)(float);
typedef void (*MarkAsExplored_t)();

static AdjustBrightness_t original_AdjustBrightness = NULL;
static MarkAsExplored_t   original_MarkAsExplored   = NULL;

void My_AdjustBrightness(float brightness) {
    NSLog(@"[MapHack] 强制最大亮度: 1.0");
    original_AdjustBrightness(1.0f);
}

void My_MarkAsExplored() {
    NSLog(@"[MapHack] 强制标记区域为已探索！");
    original_MarkAsExplored();

    const struct mach_header* header = _dyld_get_image_header_containing_address((void*)&My_MarkAsExplored);
    uintptr_t base = (uintptr_t)header;

    void (*RenderFogOfWar)() = (void (*)())(base + OFFSET_RenderFogOfWar);
    RenderFogOfWar();
}

__attribute__((constructor))
static void init() {
    const struct mach_header* header = _dyld_get_image_header_containing_address((void*)&init);
    uintptr_t base = (uintptr_t)header;

    original_AdjustBrightness = (AdjustBrightness_t)(base + OFFSET_AdjustBrightness);
    original_MarkAsExplored   = (MarkAsExplored_t)(base + OFFSET_MarkAsExplored);

    MSHookFunction((void*)original_AdjustBrightness, (void*)My_AdjustBrightness, NULL);
    MSHookFunction((void*)original_MarkAsExplored, (void*)My_MarkAsExplored, NULL);

    void (*HighlightItems)() = (void (*)())(base + OFFSET_HighlightItems);
    HighlightItems();

    NSLog(@"[MapHack] 插件加载成功！");
}
