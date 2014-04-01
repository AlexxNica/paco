/* Copyright 2013 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "PacoTriggerSignal.h"

NSString* const kID = @"id";
NSString* const kSignalType= @"type";
NSString* const kEventCode = @"eventCode";
NSString* const kDelay = @"delay";

NSString* const kTriggerSignal = @"trigger";

@interface PacoTriggerSignal ()

@property (nonatomic, copy) NSString* identifier;
@property (nonatomic, copy) NSString* signalType;
@property (nonatomic, assign) int eventCode;
@property (nonatomic, assign) long long delay;

@end

@implementation PacoTriggerSignal

- (id)initWithDictionary:(NSDictionary*)dictionary {
  self = [super init];
  if (self) {
    _identifier = [NSString stringWithFormat:@"%lld", [[dictionary objectForKey:kID] longLongValue]];
    _signalType = [dictionary objectForKey:kSignalType];
    _eventCode = [[dictionary objectForKey:kEventCode] intValue];
    _delay = [[dictionary objectForKey:kDelay] longLongValue];
  }
  return self;
}

+ (id)signalFromJson:(id)jsonObject {
  NSAssert([jsonObject isKindOfClass:[NSDictionary class]],
           @"it has to be a dictionary for trigger signal");
  return [[PacoTriggerSignal alloc] initWithDictionary:jsonObject];
}


- (id)serializeToJSON {
  NSMutableDictionary* dict = [NSMutableDictionary dictionary];
  [dict setObject:[NSNumber numberWithLongLong:[self.identifier longLongValue]] forKey:kID];
  [dict setObject:self.signalType forKey:kSignalType];
  [dict setObject:[NSNumber numberWithInt:self.eventCode] forKey:kEventCode];
  [dict setObject:[NSNumber numberWithLongLong:self.delay] forKey:kDelay];
  return dict;
}

- (NSString*)description {
  return [NSString stringWithFormat:@"<%@, %p: id=%@, type=%@, eventCode=%d, delay=%lld>",
          NSStringFromClass([self class]),
          self,
          self.identifier,
          self.signalType,
          self.eventCode,
          self.delay];
}

@end
