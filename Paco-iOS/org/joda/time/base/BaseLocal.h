//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: joda-time/src/main/java/org/joda/time/base/BaseLocal.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgJodaTimeBaseBaseLocal_INCLUDE_ALL")
#ifdef OrgJodaTimeBaseBaseLocal_RESTRICT
#define OrgJodaTimeBaseBaseLocal_INCLUDE_ALL 0
#else
#define OrgJodaTimeBaseBaseLocal_INCLUDE_ALL 1
#endif
#undef OrgJodaTimeBaseBaseLocal_RESTRICT

#if !defined (OrgJodaTimeBaseBaseLocal_) && (OrgJodaTimeBaseBaseLocal_INCLUDE_ALL || defined(OrgJodaTimeBaseBaseLocal_INCLUDE))
#define OrgJodaTimeBaseBaseLocal_

#define OrgJodaTimeBaseAbstractPartial_RESTRICT 1
#define OrgJodaTimeBaseAbstractPartial_INCLUDE 1
#include "org/joda/time/base/AbstractPartial.h"

@interface OrgJodaTimeBaseBaseLocal : OrgJodaTimeBaseAbstractPartial

#pragma mark Protected

- (instancetype)init;

- (jlong)getLocalMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseLocal)

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseLocal_init(OrgJodaTimeBaseBaseLocal *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseLocal)

#endif

#pragma pop_macro("OrgJodaTimeBaseBaseLocal_INCLUDE_ALL")