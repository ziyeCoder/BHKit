//
//  BHMacro.h
//  Pods
//
//  Created by qibinghe on 2021/3/1.
//

#ifndef BHMacro_h
#define BHMacro_h


#ifdef DEBUG
#define BHLog(format, ...) do {                                             \
fprintf(stderr, "<%s : %d> %s\n",                                           \
[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
__LINE__, __func__);                                                        \
(NSLog)((format), ##__VA_ARGS__);                                           \
fprintf(stderr, "-------\n");                                               \
} while (0);
#else
#define BHLog(...){}
#endif
 
#define BHLog_Rect(rect) BHLog(@"%s x:%.4f, y:%.4f, w:%.4f, h:%.4f", #rect, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#define BHLog_Size(size) BHLog(@"%s w:%.4f, h:%.4f", #size, size.width, size.height)
#define BHLog_Point(point) BHLog(@"%s x:%.4f, y:%.4f", #point, point.x, point.y)



#define BH_ScreenWidth [UIScreen mainScreen].bounds.size.width
#define BH_ScreenHeight [UIScreen mainScreen].bounds.size.height
#define BH_ScreenScale    ([UIScreen mainScreen].scale)
#define BHSCALE_Height(w,size) (size.height / size.width * (w))
#define BHSCALE_Width(h,size) (size.width / size.height * (h))
// 根据 iPhone6 6s 的尺寸为例
#define BHWidthScale  BH_ScreenWidth/375
#define BHHeithtScale BH_ScreenHeight/667


#endif /* BHMacro_h */
