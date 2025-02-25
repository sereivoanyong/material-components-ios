// Copyright 2020-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCOutlinedTextArea.h"

#import "MDCBaseTextArea.h"
#import "MaterialTextControlsPrivate+OutlinedStyle.h"
#import "MaterialTextControlsPrivate+Shared.h"

@interface MDCOutlinedTextArea (Private) <MDCTextControl>

@property(nonatomic, strong, nonnull) MDCTextControlStyleOutlined *containerStyle;

@end

@interface MDCOutlinedTextArea ()
@end

@implementation MDCOutlinedTextArea

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self commonMDCOutlinedTextAreaInit];
  }
  return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self commonMDCOutlinedTextAreaInit];
  }
  return self;
}

- (void)commonMDCOutlinedTextAreaInit {
  self.containerStyle = [[MDCTextControlStyleOutlined alloc] init];
}

- (void)setContainerRadius:(CGFloat)containerRadius {
  self.containerStyle.outlineCornerRadius = containerRadius;
}

- (CGFloat)containerRadius {
  return self.containerStyle.outlineCornerRadius;
}

#pragma mark Stateful Color APIs

- (void)setOutlineColor:(nullable UIColor *)outlineColor forState:(MDCTextControlState)state {
  [self.containerStyle setOutlineColor:outlineColor forState:state];
  [self setNeedsLayout];
}

- (nullable UIColor *)outlineColorForState:(MDCTextControlState)state {
  return [self.containerStyle outlineColorForState:state];
}

- (void)setOutlineLineWidth:(CGFloat)outlineLineWidth forState:(MDCTextControlState)state {
  [self.containerStyle setOutlineLineWidth:outlineLineWidth forState:state];
  [self setNeedsLayout];
}

- (CGFloat)outlineLineWidthForState:(MDCTextControlState)state {
  return [self.containerStyle outlineLineWidthForState:state];
}

@end
