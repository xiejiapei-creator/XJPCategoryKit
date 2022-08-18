#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CubismCdiJson.hpp"
#import "CubismDefaultParameterId.hpp"
#import "CubismFramework.hpp"
#import "CubismFrameworkConfig.hpp"
#import "CubismModelSettingJson.hpp"
#import "CubismBreath.hpp"
#import "CubismEyeBlink.hpp"
#import "CubismPose.hpp"
#import "ICubismAllocator.hpp"
#import "ICubismModelSetting.hpp"
#import "CubismId.hpp"
#import "CubismIdManager.hpp"
#import "Live2DCubismCore.hpp"
#import "CubismMath.hpp"
#import "CubismMatrix44.hpp"
#import "CubismModelMatrix.hpp"
#import "CubismTargetPoint.hpp"
#import "CubismVector2.hpp"
#import "CubismViewMatrix.hpp"
#import "CubismMoc.hpp"
#import "CubismModel.hpp"
#import "CubismModelUserData.hpp"
#import "CubismModelUserDataJson.hpp"
#import "CubismUserModel.hpp"
#import "ACubismMotion.hpp"
#import "CubismExpressionMotion.hpp"
#import "CubismMotion.hpp"
#import "CubismMotionInternal.hpp"
#import "CubismMotionJson.hpp"
#import "CubismMotionManager.hpp"
#import "CubismMotionQueueEntry.hpp"
#import "CubismMotionQueueManager.hpp"
#import "CubismPhysics.hpp"
#import "CubismPhysicsInternal.hpp"
#import "CubismPhysicsJson.hpp"
#import "CubismRenderer.hpp"
#import "csmMap.hpp"
#import "csmRectF.hpp"
#import "csmString.hpp"
#import "csmVector.hpp"
#import "CubismBasicType.hpp"
#import "CubismDebug.hpp"
#import "CubismJson.hpp"
#import "CubismString.hpp"
#import "Live2DCubismCore.h"
#import "L2DAppDefine.h"
#import "L2DCubism.h"
#import "L2DHelper.h"
#import "L2DMatrix44Bridge.h"
#import "L2DModelActionProtocol.h"
#import "L2DModelDefine.h"
#import "L2DRawArray.h"
#import "L2DUserModel.h"
#import "L2DViewRenderer.h"
#import "SBProductioEmotionExpression.h"
#import "UIColor+Live2D.h"
#import "KGMetalLive2DView.h"
#import "L2DMetalDrawable.h"
#import "L2DMetalRender.h"
#import "L2DBufferIndex.h"
#import "L2DShaderType.h"

FOUNDATION_EXPORT double XJPCategoryKitVersionNumber;
FOUNDATION_EXPORT const unsigned char XJPCategoryKitVersionString[];

