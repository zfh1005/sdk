/**
 * 3D programming in the browser.
 */
library dart.dom.web_gl;

import 'dart:collection';
import 'dart:_internal';
import 'dart:html';
import 'dart:html_common';
import 'dart:_native_typed_data';
import 'dart:typed_data';
import 'dart:_js_helper' show Creates, JSName, Native, Returns, convertDartClosureToJS;
import 'dart:_foreign_helper' show JS;
import 'dart:_interceptors' show Interceptor, JSExtendableArray;
// DO NOT EDIT - unless you are editing documentation as per:
// https://code.google.com/p/dart/wiki/ContributingHTMLDocumentation
// Auto-generated dart:web_gl library.





// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


const int ACTIVE_ATTRIBUTES = RenderingContext.ACTIVE_ATTRIBUTES;
const int ACTIVE_TEXTURE = RenderingContext.ACTIVE_TEXTURE;
const int ACTIVE_UNIFORMS = RenderingContext.ACTIVE_UNIFORMS;
const int ALIASED_LINE_WIDTH_RANGE = RenderingContext.ALIASED_LINE_WIDTH_RANGE;
const int ALIASED_POINT_SIZE_RANGE = RenderingContext.ALIASED_POINT_SIZE_RANGE;
const int ALPHA = RenderingContext.ALPHA;
const int ALPHA_BITS = RenderingContext.ALPHA_BITS;
const int ALWAYS = RenderingContext.ALWAYS;
const int ARRAY_BUFFER = RenderingContext.ARRAY_BUFFER;
const int ARRAY_BUFFER_BINDING = RenderingContext.ARRAY_BUFFER_BINDING;
const int ATTACHED_SHADERS = RenderingContext.ATTACHED_SHADERS;
const int BACK = RenderingContext.BACK;
const int BLEND = RenderingContext.BLEND;
const int BLEND_COLOR = RenderingContext.BLEND_COLOR;
const int BLEND_DST_ALPHA = RenderingContext.BLEND_DST_ALPHA;
const int BLEND_DST_RGB = RenderingContext.BLEND_DST_RGB;
const int BLEND_EQUATION = RenderingContext.BLEND_EQUATION;
const int BLEND_EQUATION_ALPHA = RenderingContext.BLEND_EQUATION_ALPHA;
const int BLEND_EQUATION_RGB = RenderingContext.BLEND_EQUATION_RGB;
const int BLEND_SRC_ALPHA = RenderingContext.BLEND_SRC_ALPHA;
const int BLEND_SRC_RGB = RenderingContext.BLEND_SRC_RGB;
const int BLUE_BITS = RenderingContext.BLUE_BITS;
const int BOOL = RenderingContext.BOOL;
const int BOOL_VEC2 = RenderingContext.BOOL_VEC2;
const int BOOL_VEC3 = RenderingContext.BOOL_VEC3;
const int BOOL_VEC4 = RenderingContext.BOOL_VEC4;
const int BROWSER_DEFAULT_WEBGL = RenderingContext.BROWSER_DEFAULT_WEBGL;
const int BUFFER_SIZE = RenderingContext.BUFFER_SIZE;
const int BUFFER_USAGE = RenderingContext.BUFFER_USAGE;
const int BYTE = RenderingContext.BYTE;
const int CCW = RenderingContext.CCW;
const int CLAMP_TO_EDGE = RenderingContext.CLAMP_TO_EDGE;
const int COLOR_ATTACHMENT0 = RenderingContext.COLOR_ATTACHMENT0;
const int COLOR_BUFFER_BIT = RenderingContext.COLOR_BUFFER_BIT;
const int COLOR_CLEAR_VALUE = RenderingContext.COLOR_CLEAR_VALUE;
const int COLOR_WRITEMASK = RenderingContext.COLOR_WRITEMASK;
const int COMPILE_STATUS = RenderingContext.COMPILE_STATUS;
const int COMPRESSED_TEXTURE_FORMATS = RenderingContext.COMPRESSED_TEXTURE_FORMATS;
const int CONSTANT_ALPHA = RenderingContext.CONSTANT_ALPHA;
const int CONSTANT_COLOR = RenderingContext.CONSTANT_COLOR;
const int CONTEXT_LOST_WEBGL = RenderingContext.CONTEXT_LOST_WEBGL;
const int CULL_FACE = RenderingContext.CULL_FACE;
const int CULL_FACE_MODE = RenderingContext.CULL_FACE_MODE;
const int CURRENT_PROGRAM = RenderingContext.CURRENT_PROGRAM;
const int CURRENT_VERTEX_ATTRIB = RenderingContext.CURRENT_VERTEX_ATTRIB;
const int CW = RenderingContext.CW;
const int DECR = RenderingContext.DECR;
const int DECR_WRAP = RenderingContext.DECR_WRAP;
const int DELETE_STATUS = RenderingContext.DELETE_STATUS;
const int DEPTH_ATTACHMENT = RenderingContext.DEPTH_ATTACHMENT;
const int DEPTH_BITS = RenderingContext.DEPTH_BITS;
const int DEPTH_BUFFER_BIT = RenderingContext.DEPTH_BUFFER_BIT;
const int DEPTH_CLEAR_VALUE = RenderingContext.DEPTH_CLEAR_VALUE;
const int DEPTH_COMPONENT = RenderingContext.DEPTH_COMPONENT;
const int DEPTH_COMPONENT16 = RenderingContext.DEPTH_COMPONENT16;
const int DEPTH_FUNC = RenderingContext.DEPTH_FUNC;
const int DEPTH_RANGE = RenderingContext.DEPTH_RANGE;
const int DEPTH_STENCIL = RenderingContext.DEPTH_STENCIL;
const int DEPTH_STENCIL_ATTACHMENT = RenderingContext.DEPTH_STENCIL_ATTACHMENT;
const int DEPTH_TEST = RenderingContext.DEPTH_TEST;
const int DEPTH_WRITEMASK = RenderingContext.DEPTH_WRITEMASK;
const int DITHER = RenderingContext.DITHER;
const int DONT_CARE = RenderingContext.DONT_CARE;
const int DST_ALPHA = RenderingContext.DST_ALPHA;
const int DST_COLOR = RenderingContext.DST_COLOR;
const int DYNAMIC_DRAW = RenderingContext.DYNAMIC_DRAW;
const int ELEMENT_ARRAY_BUFFER = RenderingContext.ELEMENT_ARRAY_BUFFER;
const int ELEMENT_ARRAY_BUFFER_BINDING = RenderingContext.ELEMENT_ARRAY_BUFFER_BINDING;
const int EQUAL = RenderingContext.EQUAL;
const int FASTEST = RenderingContext.FASTEST;
const int FLOAT = RenderingContext.FLOAT;
const int FLOAT_MAT2 = RenderingContext.FLOAT_MAT2;
const int FLOAT_MAT3 = RenderingContext.FLOAT_MAT3;
const int FLOAT_MAT4 = RenderingContext.FLOAT_MAT4;
const int FLOAT_VEC2 = RenderingContext.FLOAT_VEC2;
const int FLOAT_VEC3 = RenderingContext.FLOAT_VEC3;
const int FLOAT_VEC4 = RenderingContext.FLOAT_VEC4;
const int FRAGMENT_SHADER = RenderingContext.FRAGMENT_SHADER;
const int FRAMEBUFFER = RenderingContext.FRAMEBUFFER;
const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
const int FRAMEBUFFER_BINDING = RenderingContext.FRAMEBUFFER_BINDING;
const int FRAMEBUFFER_COMPLETE = RenderingContext.FRAMEBUFFER_COMPLETE;
const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = RenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT;
const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = RenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS;
const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = RenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT;
const int FRAMEBUFFER_UNSUPPORTED = RenderingContext.FRAMEBUFFER_UNSUPPORTED;
const int FRONT = RenderingContext.FRONT;
const int FRONT_AND_BACK = RenderingContext.FRONT_AND_BACK;
const int FRONT_FACE = RenderingContext.FRONT_FACE;
const int FUNC_ADD = RenderingContext.FUNC_ADD;
const int FUNC_REVERSE_SUBTRACT = RenderingContext.FUNC_REVERSE_SUBTRACT;
const int FUNC_SUBTRACT = RenderingContext.FUNC_SUBTRACT;
const int GENERATE_MIPMAP_HINT = RenderingContext.GENERATE_MIPMAP_HINT;
const int GEQUAL = RenderingContext.GEQUAL;
const int GREATER = RenderingContext.GREATER;
const int GREEN_BITS = RenderingContext.GREEN_BITS;
const int HALF_FLOAT_OES = OesTextureHalfFloat.HALF_FLOAT_OES;
const int HIGH_FLOAT = RenderingContext.HIGH_FLOAT;
const int HIGH_INT = RenderingContext.HIGH_INT;
const int INCR = RenderingContext.INCR;
const int INCR_WRAP = RenderingContext.INCR_WRAP;
const int INT = RenderingContext.INT;
const int INT_VEC2 = RenderingContext.INT_VEC2;
const int INT_VEC3 = RenderingContext.INT_VEC3;
const int INT_VEC4 = RenderingContext.INT_VEC4;
const int INVALID_ENUM = RenderingContext.INVALID_ENUM;
const int INVALID_FRAMEBUFFER_OPERATION = RenderingContext.INVALID_FRAMEBUFFER_OPERATION;
const int INVALID_OPERATION = RenderingContext.INVALID_OPERATION;
const int INVALID_VALUE = RenderingContext.INVALID_VALUE;
const int INVERT = RenderingContext.INVERT;
const int KEEP = RenderingContext.KEEP;
const int LEQUAL = RenderingContext.LEQUAL;
const int LESS = RenderingContext.LESS;
const int LINEAR = RenderingContext.LINEAR;
const int LINEAR_MIPMAP_LINEAR = RenderingContext.LINEAR_MIPMAP_LINEAR;
const int LINEAR_MIPMAP_NEAREST = RenderingContext.LINEAR_MIPMAP_NEAREST;
const int LINES = RenderingContext.LINES;
const int LINE_LOOP = RenderingContext.LINE_LOOP;
const int LINE_STRIP = RenderingContext.LINE_STRIP;
const int LINE_WIDTH = RenderingContext.LINE_WIDTH;
const int LINK_STATUS = RenderingContext.LINK_STATUS;
const int LOW_FLOAT = RenderingContext.LOW_FLOAT;
const int LOW_INT = RenderingContext.LOW_INT;
const int LUMINANCE = RenderingContext.LUMINANCE;
const int LUMINANCE_ALPHA = RenderingContext.LUMINANCE_ALPHA;
const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS;
const int MAX_CUBE_MAP_TEXTURE_SIZE = RenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE;
const int MAX_FRAGMENT_UNIFORM_VECTORS = RenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS;
const int MAX_RENDERBUFFER_SIZE = RenderingContext.MAX_RENDERBUFFER_SIZE;
const int MAX_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_TEXTURE_IMAGE_UNITS;
const int MAX_TEXTURE_SIZE = RenderingContext.MAX_TEXTURE_SIZE;
const int MAX_VARYING_VECTORS = RenderingContext.MAX_VARYING_VECTORS;
const int MAX_VERTEX_ATTRIBS = RenderingContext.MAX_VERTEX_ATTRIBS;
const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = RenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS;
const int MAX_VERTEX_UNIFORM_VECTORS = RenderingContext.MAX_VERTEX_UNIFORM_VECTORS;
const int MAX_VIEWPORT_DIMS = RenderingContext.MAX_VIEWPORT_DIMS;
const int MEDIUM_FLOAT = RenderingContext.MEDIUM_FLOAT;
const int MEDIUM_INT = RenderingContext.MEDIUM_INT;
const int MIRRORED_REPEAT = RenderingContext.MIRRORED_REPEAT;
const int NEAREST = RenderingContext.NEAREST;
const int NEAREST_MIPMAP_LINEAR = RenderingContext.NEAREST_MIPMAP_LINEAR;
const int NEAREST_MIPMAP_NEAREST = RenderingContext.NEAREST_MIPMAP_NEAREST;
const int NEVER = RenderingContext.NEVER;
const int NICEST = RenderingContext.NICEST;
const int NONE = RenderingContext.NONE;
const int NOTEQUAL = RenderingContext.NOTEQUAL;
const int NO_ERROR = RenderingContext.NO_ERROR;
const int ONE = RenderingContext.ONE;
const int ONE_MINUS_CONSTANT_ALPHA = RenderingContext.ONE_MINUS_CONSTANT_ALPHA;
const int ONE_MINUS_CONSTANT_COLOR = RenderingContext.ONE_MINUS_CONSTANT_COLOR;
const int ONE_MINUS_DST_ALPHA = RenderingContext.ONE_MINUS_DST_ALPHA;
const int ONE_MINUS_DST_COLOR = RenderingContext.ONE_MINUS_DST_COLOR;
const int ONE_MINUS_SRC_ALPHA = RenderingContext.ONE_MINUS_SRC_ALPHA;
const int ONE_MINUS_SRC_COLOR = RenderingContext.ONE_MINUS_SRC_COLOR;
const int OUT_OF_MEMORY = RenderingContext.OUT_OF_MEMORY;
const int PACK_ALIGNMENT = RenderingContext.PACK_ALIGNMENT;
const int POINTS = RenderingContext.POINTS;
const int POLYGON_OFFSET_FACTOR = RenderingContext.POLYGON_OFFSET_FACTOR;
const int POLYGON_OFFSET_FILL = RenderingContext.POLYGON_OFFSET_FILL;
const int POLYGON_OFFSET_UNITS = RenderingContext.POLYGON_OFFSET_UNITS;
const int RED_BITS = RenderingContext.RED_BITS;
const int RENDERBUFFER = RenderingContext.RENDERBUFFER;
const int RENDERBUFFER_ALPHA_SIZE = RenderingContext.RENDERBUFFER_ALPHA_SIZE;
const int RENDERBUFFER_BINDING = RenderingContext.RENDERBUFFER_BINDING;
const int RENDERBUFFER_BLUE_SIZE = RenderingContext.RENDERBUFFER_BLUE_SIZE;
const int RENDERBUFFER_DEPTH_SIZE = RenderingContext.RENDERBUFFER_DEPTH_SIZE;
const int RENDERBUFFER_GREEN_SIZE = RenderingContext.RENDERBUFFER_GREEN_SIZE;
const int RENDERBUFFER_HEIGHT = RenderingContext.RENDERBUFFER_HEIGHT;
const int RENDERBUFFER_INTERNAL_FORMAT = RenderingContext.RENDERBUFFER_INTERNAL_FORMAT;
const int RENDERBUFFER_RED_SIZE = RenderingContext.RENDERBUFFER_RED_SIZE;
const int RENDERBUFFER_STENCIL_SIZE = RenderingContext.RENDERBUFFER_STENCIL_SIZE;
const int RENDERBUFFER_WIDTH = RenderingContext.RENDERBUFFER_WIDTH;
const int RENDERER = RenderingContext.RENDERER;
const int REPEAT = RenderingContext.REPEAT;
const int REPLACE = RenderingContext.REPLACE;
const int RGB = RenderingContext.RGB;
const int RGB565 = RenderingContext.RGB565;
const int RGB5_A1 = RenderingContext.RGB5_A1;
const int RGBA = RenderingContext.RGBA;
const int RGBA4 = RenderingContext.RGBA4;
const int SAMPLER_2D = RenderingContext.SAMPLER_2D;
const int SAMPLER_CUBE = RenderingContext.SAMPLER_CUBE;
const int SAMPLES = RenderingContext.SAMPLES;
const int SAMPLE_ALPHA_TO_COVERAGE = RenderingContext.SAMPLE_ALPHA_TO_COVERAGE;
const int SAMPLE_BUFFERS = RenderingContext.SAMPLE_BUFFERS;
const int SAMPLE_COVERAGE = RenderingContext.SAMPLE_COVERAGE;
const int SAMPLE_COVERAGE_INVERT = RenderingContext.SAMPLE_COVERAGE_INVERT;
const int SAMPLE_COVERAGE_VALUE = RenderingContext.SAMPLE_COVERAGE_VALUE;
const int SCISSOR_BOX = RenderingContext.SCISSOR_BOX;
const int SCISSOR_TEST = RenderingContext.SCISSOR_TEST;
const int SHADER_TYPE = RenderingContext.SHADER_TYPE;
const int SHADING_LANGUAGE_VERSION = RenderingContext.SHADING_LANGUAGE_VERSION;
const int SHORT = RenderingContext.SHORT;
const int SRC_ALPHA = RenderingContext.SRC_ALPHA;
const int SRC_ALPHA_SATURATE = RenderingContext.SRC_ALPHA_SATURATE;
const int SRC_COLOR = RenderingContext.SRC_COLOR;
const int STATIC_DRAW = RenderingContext.STATIC_DRAW;
const int STENCIL_ATTACHMENT = RenderingContext.STENCIL_ATTACHMENT;
const int STENCIL_BACK_FAIL = RenderingContext.STENCIL_BACK_FAIL;
const int STENCIL_BACK_FUNC = RenderingContext.STENCIL_BACK_FUNC;
const int STENCIL_BACK_PASS_DEPTH_FAIL = RenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL;
const int STENCIL_BACK_PASS_DEPTH_PASS = RenderingContext.STENCIL_BACK_PASS_DEPTH_PASS;
const int STENCIL_BACK_REF = RenderingContext.STENCIL_BACK_REF;
const int STENCIL_BACK_VALUE_MASK = RenderingContext.STENCIL_BACK_VALUE_MASK;
const int STENCIL_BACK_WRITEMASK = RenderingContext.STENCIL_BACK_WRITEMASK;
const int STENCIL_BITS = RenderingContext.STENCIL_BITS;
const int STENCIL_BUFFER_BIT = RenderingContext.STENCIL_BUFFER_BIT;
const int STENCIL_CLEAR_VALUE = RenderingContext.STENCIL_CLEAR_VALUE;
const int STENCIL_FAIL = RenderingContext.STENCIL_FAIL;
const int STENCIL_FUNC = RenderingContext.STENCIL_FUNC;
const int STENCIL_INDEX = RenderingContext.STENCIL_INDEX;
const int STENCIL_INDEX8 = RenderingContext.STENCIL_INDEX8;
const int STENCIL_PASS_DEPTH_FAIL = RenderingContext.STENCIL_PASS_DEPTH_FAIL;
const int STENCIL_PASS_DEPTH_PASS = RenderingContext.STENCIL_PASS_DEPTH_PASS;
const int STENCIL_REF = RenderingContext.STENCIL_REF;
const int STENCIL_TEST = RenderingContext.STENCIL_TEST;
const int STENCIL_VALUE_MASK = RenderingContext.STENCIL_VALUE_MASK;
const int STENCIL_WRITEMASK = RenderingContext.STENCIL_WRITEMASK;
const int STREAM_DRAW = RenderingContext.STREAM_DRAW;
const int SUBPIXEL_BITS = RenderingContext.SUBPIXEL_BITS;
const int TEXTURE = RenderingContext.TEXTURE;
const int TEXTURE0 = RenderingContext.TEXTURE0;
const int TEXTURE1 = RenderingContext.TEXTURE1;
const int TEXTURE10 = RenderingContext.TEXTURE10;
const int TEXTURE11 = RenderingContext.TEXTURE11;
const int TEXTURE12 = RenderingContext.TEXTURE12;
const int TEXTURE13 = RenderingContext.TEXTURE13;
const int TEXTURE14 = RenderingContext.TEXTURE14;
const int TEXTURE15 = RenderingContext.TEXTURE15;
const int TEXTURE16 = RenderingContext.TEXTURE16;
const int TEXTURE17 = RenderingContext.TEXTURE17;
const int TEXTURE18 = RenderingContext.TEXTURE18;
const int TEXTURE19 = RenderingContext.TEXTURE19;
const int TEXTURE2 = RenderingContext.TEXTURE2;
const int TEXTURE20 = RenderingContext.TEXTURE20;
const int TEXTURE21 = RenderingContext.TEXTURE21;
const int TEXTURE22 = RenderingContext.TEXTURE22;
const int TEXTURE23 = RenderingContext.TEXTURE23;
const int TEXTURE24 = RenderingContext.TEXTURE24;
const int TEXTURE25 = RenderingContext.TEXTURE25;
const int TEXTURE26 = RenderingContext.TEXTURE26;
const int TEXTURE27 = RenderingContext.TEXTURE27;
const int TEXTURE28 = RenderingContext.TEXTURE28;
const int TEXTURE29 = RenderingContext.TEXTURE29;
const int TEXTURE3 = RenderingContext.TEXTURE3;
const int TEXTURE30 = RenderingContext.TEXTURE30;
const int TEXTURE31 = RenderingContext.TEXTURE31;
const int TEXTURE4 = RenderingContext.TEXTURE4;
const int TEXTURE5 = RenderingContext.TEXTURE5;
const int TEXTURE6 = RenderingContext.TEXTURE6;
const int TEXTURE7 = RenderingContext.TEXTURE7;
const int TEXTURE8 = RenderingContext.TEXTURE8;
const int TEXTURE9 = RenderingContext.TEXTURE9;
const int TEXTURE_2D = RenderingContext.TEXTURE_2D;
const int TEXTURE_BINDING_2D = RenderingContext.TEXTURE_BINDING_2D;
const int TEXTURE_BINDING_CUBE_MAP = RenderingContext.TEXTURE_BINDING_CUBE_MAP;
const int TEXTURE_CUBE_MAP = RenderingContext.TEXTURE_CUBE_MAP;
const int TEXTURE_CUBE_MAP_NEGATIVE_X = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X;
const int TEXTURE_CUBE_MAP_NEGATIVE_Y = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y;
const int TEXTURE_CUBE_MAP_NEGATIVE_Z = RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z;
const int TEXTURE_CUBE_MAP_POSITIVE_X = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X;
const int TEXTURE_CUBE_MAP_POSITIVE_Y = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y;
const int TEXTURE_CUBE_MAP_POSITIVE_Z = RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z;
const int TEXTURE_MAG_FILTER = RenderingContext.TEXTURE_MAG_FILTER;
const int TEXTURE_MIN_FILTER = RenderingContext.TEXTURE_MIN_FILTER;
const int TEXTURE_WRAP_S = RenderingContext.TEXTURE_WRAP_S;
const int TEXTURE_WRAP_T = RenderingContext.TEXTURE_WRAP_T;
const int TRIANGLES = RenderingContext.TRIANGLES;
const int TRIANGLE_FAN = RenderingContext.TRIANGLE_FAN;
const int TRIANGLE_STRIP = RenderingContext.TRIANGLE_STRIP;
const int UNPACK_ALIGNMENT = RenderingContext.UNPACK_ALIGNMENT;
const int UNPACK_COLORSPACE_CONVERSION_WEBGL = RenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL;
const int UNPACK_FLIP_Y_WEBGL = RenderingContext.UNPACK_FLIP_Y_WEBGL;
const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = RenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL;
const int UNSIGNED_BYTE = RenderingContext.UNSIGNED_BYTE;
const int UNSIGNED_INT = RenderingContext.UNSIGNED_INT;
const int UNSIGNED_SHORT = RenderingContext.UNSIGNED_SHORT;
const int UNSIGNED_SHORT_4_4_4_4 = RenderingContext.UNSIGNED_SHORT_4_4_4_4;
const int UNSIGNED_SHORT_5_5_5_1 = RenderingContext.UNSIGNED_SHORT_5_5_5_1;
const int UNSIGNED_SHORT_5_6_5 = RenderingContext.UNSIGNED_SHORT_5_6_5;
const int VALIDATE_STATUS = RenderingContext.VALIDATE_STATUS;
const int VENDOR = RenderingContext.VENDOR;
const int VERSION = RenderingContext.VERSION;
const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = RenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
const int VERTEX_ATTRIB_ARRAY_ENABLED = RenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED;
const int VERTEX_ATTRIB_ARRAY_NORMALIZED = RenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED;
const int VERTEX_ATTRIB_ARRAY_POINTER = RenderingContext.VERTEX_ATTRIB_ARRAY_POINTER;
const int VERTEX_ATTRIB_ARRAY_SIZE = RenderingContext.VERTEX_ATTRIB_ARRAY_SIZE;
const int VERTEX_ATTRIB_ARRAY_STRIDE = RenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE;
const int VERTEX_ATTRIB_ARRAY_TYPE = RenderingContext.VERTEX_ATTRIB_ARRAY_TYPE;
const int VERTEX_SHADER = RenderingContext.VERTEX_SHADER;
const int VIEWPORT = RenderingContext.VIEWPORT;
const int ZERO = RenderingContext.ZERO;
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGL2RenderingContext')
@Experimental() // untriaged
@Native("WebGL2RenderingContext")
class 2RenderingContext extends Interceptor implements 2RenderingContextBase, _WebGLRenderingContextBase {
  // To suppress missing implicit constructor warnings.
  factory 2RenderingContext._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGL2RenderingContext.ACTIVE_ATTRIBUTES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_ATTRIBUTES = 0x8B89;

  @DomName('WebGL2RenderingContext.ACTIVE_TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_TEXTURE = 0x84E0;

  @DomName('WebGL2RenderingContext.ACTIVE_UNIFORMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_UNIFORMS = 0x8B86;

  @DomName('WebGL2RenderingContext.ALIASED_LINE_WIDTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  @DomName('WebGL2RenderingContext.ALIASED_POINT_SIZE_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_POINT_SIZE_RANGE = 0x846D;

  @DomName('WebGL2RenderingContext.ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA = 0x1906;

  @DomName('WebGL2RenderingContext.ALPHA_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA_BITS = 0x0D55;

  @DomName('WebGL2RenderingContext.ALWAYS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALWAYS = 0x0207;

  @DomName('WebGL2RenderingContext.ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER = 0x8892;

  @DomName('WebGL2RenderingContext.ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER_BINDING = 0x8894;

  @DomName('WebGL2RenderingContext.ATTACHED_SHADERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ATTACHED_SHADERS = 0x8B85;

  @DomName('WebGL2RenderingContext.BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BACK = 0x0405;

  @DomName('WebGL2RenderingContext.BLEND')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND = 0x0BE2;

  @DomName('WebGL2RenderingContext.BLEND_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_COLOR = 0x8005;

  @DomName('WebGL2RenderingContext.BLEND_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_ALPHA = 0x80CA;

  @DomName('WebGL2RenderingContext.BLEND_DST_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_RGB = 0x80C8;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION = 0x8009;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_ALPHA = 0x883D;

  @DomName('WebGL2RenderingContext.BLEND_EQUATION_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_RGB = 0x8009;

  @DomName('WebGL2RenderingContext.BLEND_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_ALPHA = 0x80CB;

  @DomName('WebGL2RenderingContext.BLEND_SRC_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_RGB = 0x80C9;

  @DomName('WebGL2RenderingContext.BLUE_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLUE_BITS = 0x0D54;

  @DomName('WebGL2RenderingContext.BOOL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL = 0x8B56;

  @DomName('WebGL2RenderingContext.BOOL_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC2 = 0x8B57;

  @DomName('WebGL2RenderingContext.BOOL_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC3 = 0x8B58;

  @DomName('WebGL2RenderingContext.BOOL_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC4 = 0x8B59;

  @DomName('WebGL2RenderingContext.BROWSER_DEFAULT_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BROWSER_DEFAULT_WEBGL = 0x9244;

  @DomName('WebGL2RenderingContext.BUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_SIZE = 0x8764;

  @DomName('WebGL2RenderingContext.BUFFER_USAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_USAGE = 0x8765;

  @DomName('WebGL2RenderingContext.BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BYTE = 0x1400;

  @DomName('WebGL2RenderingContext.CCW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CCW = 0x0901;

  @DomName('WebGL2RenderingContext.CLAMP_TO_EDGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CLAMP_TO_EDGE = 0x812F;

  @DomName('WebGL2RenderingContext.COLOR_ATTACHMENT0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT0 = 0x8CE0;

  @DomName('WebGL2RenderingContext.COLOR_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_BUFFER_BIT = 0x00004000;

  @DomName('WebGL2RenderingContext.COLOR_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_CLEAR_VALUE = 0x0C22;

  @DomName('WebGL2RenderingContext.COLOR_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_WRITEMASK = 0x0C23;

  @DomName('WebGL2RenderingContext.COMPILE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPILE_STATUS = 0x8B81;

  @DomName('WebGL2RenderingContext.COMPRESSED_TEXTURE_FORMATS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  @DomName('WebGL2RenderingContext.CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_ALPHA = 0x8003;

  @DomName('WebGL2RenderingContext.CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_COLOR = 0x8001;

  @DomName('WebGL2RenderingContext.CONTEXT_LOST_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONTEXT_LOST_WEBGL = 0x9242;

  @DomName('WebGL2RenderingContext.CULL_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE = 0x0B44;

  @DomName('WebGL2RenderingContext.CULL_FACE_MODE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE_MODE = 0x0B45;

  @DomName('WebGL2RenderingContext.CURRENT_PROGRAM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_PROGRAM = 0x8B8D;

  @DomName('WebGL2RenderingContext.CURRENT_VERTEX_ATTRIB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_VERTEX_ATTRIB = 0x8626;

  @DomName('WebGL2RenderingContext.CW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CW = 0x0900;

  @DomName('WebGL2RenderingContext.DECR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR = 0x1E03;

  @DomName('WebGL2RenderingContext.DECR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR_WRAP = 0x8508;

  @DomName('WebGL2RenderingContext.DELETE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DELETE_STATUS = 0x8B80;

  @DomName('WebGL2RenderingContext.DEPTH_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_ATTACHMENT = 0x8D00;

  @DomName('WebGL2RenderingContext.DEPTH_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BITS = 0x0D56;

  @DomName('WebGL2RenderingContext.DEPTH_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BUFFER_BIT = 0x00000100;

  @DomName('WebGL2RenderingContext.DEPTH_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_CLEAR_VALUE = 0x0B73;

  @DomName('WebGL2RenderingContext.DEPTH_COMPONENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT = 0x1902;

  @DomName('WebGL2RenderingContext.DEPTH_COMPONENT16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT16 = 0x81A5;

  @DomName('WebGL2RenderingContext.DEPTH_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_FUNC = 0x0B74;

  @DomName('WebGL2RenderingContext.DEPTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_RANGE = 0x0B70;

  @DomName('WebGL2RenderingContext.DEPTH_STENCIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL = 0x84F9;

  @DomName('WebGL2RenderingContext.DEPTH_STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  @DomName('WebGL2RenderingContext.DEPTH_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_TEST = 0x0B71;

  @DomName('WebGL2RenderingContext.DEPTH_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_WRITEMASK = 0x0B72;

  @DomName('WebGL2RenderingContext.DITHER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DITHER = 0x0BD0;

  @DomName('WebGL2RenderingContext.DONT_CARE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DONT_CARE = 0x1100;

  @DomName('WebGL2RenderingContext.DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_ALPHA = 0x0304;

  @DomName('WebGL2RenderingContext.DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_COLOR = 0x0306;

  @DomName('WebGL2RenderingContext.DYNAMIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DYNAMIC_DRAW = 0x88E8;

  @DomName('WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER = 0x8893;

  @DomName('WebGL2RenderingContext.ELEMENT_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  @DomName('WebGL2RenderingContext.EQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int EQUAL = 0x0202;

  @DomName('WebGL2RenderingContext.FASTEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FASTEST = 0x1101;

  @DomName('WebGL2RenderingContext.FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT = 0x1406;

  @DomName('WebGL2RenderingContext.FLOAT_MAT2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT2 = 0x8B5A;

  @DomName('WebGL2RenderingContext.FLOAT_MAT3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT3 = 0x8B5B;

  @DomName('WebGL2RenderingContext.FLOAT_MAT4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT4 = 0x8B5C;

  @DomName('WebGL2RenderingContext.FLOAT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC2 = 0x8B50;

  @DomName('WebGL2RenderingContext.FLOAT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC3 = 0x8B51;

  @DomName('WebGL2RenderingContext.FLOAT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC4 = 0x8B52;

  @DomName('WebGL2RenderingContext.FRAGMENT_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAGMENT_SHADER = 0x8B30;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER = 0x8D40;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_COMPLETE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_COMPLETE = 0x8CD5;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  @DomName('WebGL2RenderingContext.FRAMEBUFFER_UNSUPPORTED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  @DomName('WebGL2RenderingContext.FRONT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT = 0x0404;

  @DomName('WebGL2RenderingContext.FRONT_AND_BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_AND_BACK = 0x0408;

  @DomName('WebGL2RenderingContext.FRONT_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_FACE = 0x0B46;

  @DomName('WebGL2RenderingContext.FUNC_ADD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_ADD = 0x8006;

  @DomName('WebGL2RenderingContext.FUNC_REVERSE_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_REVERSE_SUBTRACT = 0x800B;

  @DomName('WebGL2RenderingContext.FUNC_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_SUBTRACT = 0x800A;

  @DomName('WebGL2RenderingContext.GENERATE_MIPMAP_HINT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GENERATE_MIPMAP_HINT = 0x8192;

  @DomName('WebGL2RenderingContext.GEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GEQUAL = 0x0206;

  @DomName('WebGL2RenderingContext.GREATER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREATER = 0x0204;

  @DomName('WebGL2RenderingContext.GREEN_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREEN_BITS = 0x0D53;

  @DomName('WebGL2RenderingContext.HIGH_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_FLOAT = 0x8DF2;

  @DomName('WebGL2RenderingContext.HIGH_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_INT = 0x8DF5;

  @DomName('WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

  @DomName('WebGL2RenderingContext.IMPLEMENTATION_COLOR_READ_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

  @DomName('WebGL2RenderingContext.INCR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR = 0x1E02;

  @DomName('WebGL2RenderingContext.INCR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR_WRAP = 0x8507;

  @DomName('WebGL2RenderingContext.INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT = 0x1404;

  @DomName('WebGL2RenderingContext.INT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC2 = 0x8B53;

  @DomName('WebGL2RenderingContext.INT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC3 = 0x8B54;

  @DomName('WebGL2RenderingContext.INT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC4 = 0x8B55;

  @DomName('WebGL2RenderingContext.INVALID_ENUM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_ENUM = 0x0500;

  @DomName('WebGL2RenderingContext.INVALID_FRAMEBUFFER_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  @DomName('WebGL2RenderingContext.INVALID_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_OPERATION = 0x0502;

  @DomName('WebGL2RenderingContext.INVALID_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_VALUE = 0x0501;

  @DomName('WebGL2RenderingContext.INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVERT = 0x150A;

  @DomName('WebGL2RenderingContext.KEEP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int KEEP = 0x1E00;

  @DomName('WebGL2RenderingContext.LEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LEQUAL = 0x0203;

  @DomName('WebGL2RenderingContext.LESS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LESS = 0x0201;

  @DomName('WebGL2RenderingContext.LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR = 0x2601;

  @DomName('WebGL2RenderingContext.LINEAR_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_LINEAR = 0x2703;

  @DomName('WebGL2RenderingContext.LINEAR_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_NEAREST = 0x2701;

  @DomName('WebGL2RenderingContext.LINES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINES = 0x0001;

  @DomName('WebGL2RenderingContext.LINE_LOOP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_LOOP = 0x0002;

  @DomName('WebGL2RenderingContext.LINE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_STRIP = 0x0003;

  @DomName('WebGL2RenderingContext.LINE_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_WIDTH = 0x0B21;

  @DomName('WebGL2RenderingContext.LINK_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINK_STATUS = 0x8B82;

  @DomName('WebGL2RenderingContext.LOW_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_FLOAT = 0x8DF0;

  @DomName('WebGL2RenderingContext.LOW_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_INT = 0x8DF3;

  @DomName('WebGL2RenderingContext.LUMINANCE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE = 0x1909;

  @DomName('WebGL2RenderingContext.LUMINANCE_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE_ALPHA = 0x190A;

  @DomName('WebGL2RenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  @DomName('WebGL2RenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  @DomName('WebGL2RenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  @DomName('WebGL2RenderingContext.MAX_RENDERBUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_RENDERBUFFER_SIZE = 0x84E8;

  @DomName('WebGL2RenderingContext.MAX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  @DomName('WebGL2RenderingContext.MAX_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_SIZE = 0x0D33;

  @DomName('WebGL2RenderingContext.MAX_VARYING_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VARYING_VECTORS = 0x8DFC;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_ATTRIBS = 0x8869;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  @DomName('WebGL2RenderingContext.MAX_VERTEX_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  @DomName('WebGL2RenderingContext.MAX_VIEWPORT_DIMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VIEWPORT_DIMS = 0x0D3A;

  @DomName('WebGL2RenderingContext.MEDIUM_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_FLOAT = 0x8DF1;

  @DomName('WebGL2RenderingContext.MEDIUM_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_INT = 0x8DF4;

  @DomName('WebGL2RenderingContext.MIRRORED_REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIRRORED_REPEAT = 0x8370;

  @DomName('WebGL2RenderingContext.NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST = 0x2600;

  @DomName('WebGL2RenderingContext.NEAREST_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_LINEAR = 0x2702;

  @DomName('WebGL2RenderingContext.NEAREST_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_NEAREST = 0x2700;

  @DomName('WebGL2RenderingContext.NEVER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEVER = 0x0200;

  @DomName('WebGL2RenderingContext.NICEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NICEST = 0x1102;

  @DomName('WebGL2RenderingContext.NONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NONE = 0;

  @DomName('WebGL2RenderingContext.NOTEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NOTEQUAL = 0x0205;

  @DomName('WebGL2RenderingContext.NO_ERROR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NO_ERROR = 0;

  @DomName('WebGL2RenderingContext.ONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE = 1;

  @DomName('WebGL2RenderingContext.ONE_MINUS_CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  @DomName('WebGL2RenderingContext.ONE_MINUS_CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  @DomName('WebGL2RenderingContext.ONE_MINUS_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_ALPHA = 0x0305;

  @DomName('WebGL2RenderingContext.ONE_MINUS_DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_COLOR = 0x0307;

  @DomName('WebGL2RenderingContext.ONE_MINUS_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_ALPHA = 0x0303;

  @DomName('WebGL2RenderingContext.ONE_MINUS_SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_COLOR = 0x0301;

  @DomName('WebGL2RenderingContext.OUT_OF_MEMORY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int OUT_OF_MEMORY = 0x0505;

  @DomName('WebGL2RenderingContext.PACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_ALIGNMENT = 0x0D05;

  @DomName('WebGL2RenderingContext.POINTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POINTS = 0x0000;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_FACTOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FACTOR = 0x8038;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_FILL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FILL = 0x8037;

  @DomName('WebGL2RenderingContext.POLYGON_OFFSET_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_UNITS = 0x2A00;

  @DomName('WebGL2RenderingContext.RED_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RED_BITS = 0x0D52;

  @DomName('WebGL2RenderingContext.RENDERBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER = 0x8D41;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_ALPHA_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BINDING = 0x8CA7;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_BLUE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_DEPTH_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_GREEN_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_HEIGHT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_HEIGHT = 0x8D43;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_INTERNAL_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_RED_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_RED_SIZE = 0x8D50;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_STENCIL_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  @DomName('WebGL2RenderingContext.RENDERBUFFER_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_WIDTH = 0x8D42;

  @DomName('WebGL2RenderingContext.RENDERER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERER = 0x1F01;

  @DomName('WebGL2RenderingContext.REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPEAT = 0x2901;

  @DomName('WebGL2RenderingContext.REPLACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPLACE = 0x1E01;

  @DomName('WebGL2RenderingContext.RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB = 0x1907;

  @DomName('WebGL2RenderingContext.RGB565')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB565 = 0x8D62;

  @DomName('WebGL2RenderingContext.RGB5_A1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB5_A1 = 0x8057;

  @DomName('WebGL2RenderingContext.RGBA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA = 0x1908;

  @DomName('WebGL2RenderingContext.RGBA4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA4 = 0x8056;

  @DomName('WebGL2RenderingContext.SAMPLER_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D = 0x8B5E;

  @DomName('WebGL2RenderingContext.SAMPLER_CUBE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_CUBE = 0x8B60;

  @DomName('WebGL2RenderingContext.SAMPLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLES = 0x80A9;

  @DomName('WebGL2RenderingContext.SAMPLE_ALPHA_TO_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  @DomName('WebGL2RenderingContext.SAMPLE_BUFFERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_BUFFERS = 0x80A8;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE = 0x80A0;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE_INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_INVERT = 0x80AB;

  @DomName('WebGL2RenderingContext.SAMPLE_COVERAGE_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_VALUE = 0x80AA;

  @DomName('WebGL2RenderingContext.SCISSOR_BOX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_BOX = 0x0C10;

  @DomName('WebGL2RenderingContext.SCISSOR_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_TEST = 0x0C11;

  @DomName('WebGL2RenderingContext.SHADER_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADER_TYPE = 0x8B4F;

  @DomName('WebGL2RenderingContext.SHADING_LANGUAGE_VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADING_LANGUAGE_VERSION = 0x8B8C;

  @DomName('WebGL2RenderingContext.SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHORT = 0x1402;

  @DomName('WebGL2RenderingContext.SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA = 0x0302;

  @DomName('WebGL2RenderingContext.SRC_ALPHA_SATURATE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA_SATURATE = 0x0308;

  @DomName('WebGL2RenderingContext.SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_COLOR = 0x0300;

  @DomName('WebGL2RenderingContext.STATIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STATIC_DRAW = 0x88E4;

  @DomName('WebGL2RenderingContext.STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_ATTACHMENT = 0x8D20;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FAIL = 0x8801;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FUNC = 0x8800;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_REF = 0x8CA3;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  @DomName('WebGL2RenderingContext.STENCIL_BACK_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_WRITEMASK = 0x8CA5;

  @DomName('WebGL2RenderingContext.STENCIL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BITS = 0x0D57;

  @DomName('WebGL2RenderingContext.STENCIL_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BUFFER_BIT = 0x00000400;

  @DomName('WebGL2RenderingContext.STENCIL_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_CLEAR_VALUE = 0x0B91;

  @DomName('WebGL2RenderingContext.STENCIL_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FAIL = 0x0B94;

  @DomName('WebGL2RenderingContext.STENCIL_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FUNC = 0x0B92;

  @DomName('WebGL2RenderingContext.STENCIL_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX = 0x1901;

  @DomName('WebGL2RenderingContext.STENCIL_INDEX8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX8 = 0x8D48;

  @DomName('WebGL2RenderingContext.STENCIL_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  @DomName('WebGL2RenderingContext.STENCIL_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  @DomName('WebGL2RenderingContext.STENCIL_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_REF = 0x0B97;

  @DomName('WebGL2RenderingContext.STENCIL_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_TEST = 0x0B90;

  @DomName('WebGL2RenderingContext.STENCIL_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_VALUE_MASK = 0x0B93;

  @DomName('WebGL2RenderingContext.STENCIL_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_WRITEMASK = 0x0B98;

  @DomName('WebGL2RenderingContext.STREAM_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STREAM_DRAW = 0x88E0;

  @DomName('WebGL2RenderingContext.SUBPIXEL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SUBPIXEL_BITS = 0x0D50;

  @DomName('WebGL2RenderingContext.TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE = 0x1702;

  @DomName('WebGL2RenderingContext.TEXTURE0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE0 = 0x84C0;

  @DomName('WebGL2RenderingContext.TEXTURE1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE1 = 0x84C1;

  @DomName('WebGL2RenderingContext.TEXTURE10')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE10 = 0x84CA;

  @DomName('WebGL2RenderingContext.TEXTURE11')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE11 = 0x84CB;

  @DomName('WebGL2RenderingContext.TEXTURE12')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE12 = 0x84CC;

  @DomName('WebGL2RenderingContext.TEXTURE13')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE13 = 0x84CD;

  @DomName('WebGL2RenderingContext.TEXTURE14')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE14 = 0x84CE;

  @DomName('WebGL2RenderingContext.TEXTURE15')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE15 = 0x84CF;

  @DomName('WebGL2RenderingContext.TEXTURE16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE16 = 0x84D0;

  @DomName('WebGL2RenderingContext.TEXTURE17')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE17 = 0x84D1;

  @DomName('WebGL2RenderingContext.TEXTURE18')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE18 = 0x84D2;

  @DomName('WebGL2RenderingContext.TEXTURE19')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE19 = 0x84D3;

  @DomName('WebGL2RenderingContext.TEXTURE2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE2 = 0x84C2;

  @DomName('WebGL2RenderingContext.TEXTURE20')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE20 = 0x84D4;

  @DomName('WebGL2RenderingContext.TEXTURE21')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE21 = 0x84D5;

  @DomName('WebGL2RenderingContext.TEXTURE22')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE22 = 0x84D6;

  @DomName('WebGL2RenderingContext.TEXTURE23')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE23 = 0x84D7;

  @DomName('WebGL2RenderingContext.TEXTURE24')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE24 = 0x84D8;

  @DomName('WebGL2RenderingContext.TEXTURE25')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE25 = 0x84D9;

  @DomName('WebGL2RenderingContext.TEXTURE26')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE26 = 0x84DA;

  @DomName('WebGL2RenderingContext.TEXTURE27')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE27 = 0x84DB;

  @DomName('WebGL2RenderingContext.TEXTURE28')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE28 = 0x84DC;

  @DomName('WebGL2RenderingContext.TEXTURE29')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE29 = 0x84DD;

  @DomName('WebGL2RenderingContext.TEXTURE3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE3 = 0x84C3;

  @DomName('WebGL2RenderingContext.TEXTURE30')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE30 = 0x84DE;

  @DomName('WebGL2RenderingContext.TEXTURE31')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE31 = 0x84DF;

  @DomName('WebGL2RenderingContext.TEXTURE4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE4 = 0x84C4;

  @DomName('WebGL2RenderingContext.TEXTURE5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE5 = 0x84C5;

  @DomName('WebGL2RenderingContext.TEXTURE6')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE6 = 0x84C6;

  @DomName('WebGL2RenderingContext.TEXTURE7')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE7 = 0x84C7;

  @DomName('WebGL2RenderingContext.TEXTURE8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE8 = 0x84C8;

  @DomName('WebGL2RenderingContext.TEXTURE9')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE9 = 0x84C9;

  @DomName('WebGL2RenderingContext.TEXTURE_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_2D = 0x0DE1;

  @DomName('WebGL2RenderingContext.TEXTURE_BINDING_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_2D = 0x8069;

  @DomName('WebGL2RenderingContext.TEXTURE_BINDING_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP = 0x8513;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  @DomName('WebGL2RenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  @DomName('WebGL2RenderingContext.TEXTURE_MAG_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MAG_FILTER = 0x2800;

  @DomName('WebGL2RenderingContext.TEXTURE_MIN_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MIN_FILTER = 0x2801;

  @DomName('WebGL2RenderingContext.TEXTURE_WRAP_S')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_S = 0x2802;

  @DomName('WebGL2RenderingContext.TEXTURE_WRAP_T')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_T = 0x2803;

  @DomName('WebGL2RenderingContext.TRIANGLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLES = 0x0004;

  @DomName('WebGL2RenderingContext.TRIANGLE_FAN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_FAN = 0x0006;

  @DomName('WebGL2RenderingContext.TRIANGLE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_STRIP = 0x0005;

  @DomName('WebGL2RenderingContext.UNPACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_ALIGNMENT = 0x0CF5;

  @DomName('WebGL2RenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  @DomName('WebGL2RenderingContext.UNPACK_FLIP_Y_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_FLIP_Y_WEBGL = 0x9240;

  @DomName('WebGL2RenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  @DomName('WebGL2RenderingContext.UNSIGNED_BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_BYTE = 0x1401;

  @DomName('WebGL2RenderingContext.UNSIGNED_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT = 0x1405;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT = 0x1403;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_4_4_4_4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_5_5_5_1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  @DomName('WebGL2RenderingContext.UNSIGNED_SHORT_5_6_5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_6_5 = 0x8363;

  @DomName('WebGL2RenderingContext.VALIDATE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VALIDATE_STATUS = 0x8B83;

  @DomName('WebGL2RenderingContext.VENDOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VENDOR = 0x1F00;

  @DomName('WebGL2RenderingContext.VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERSION = 0x1F02;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_POINTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  @DomName('WebGL2RenderingContext.VERTEX_ATTRIB_ARRAY_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  @DomName('WebGL2RenderingContext.VERTEX_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_SHADER = 0x8B31;

  @DomName('WebGL2RenderingContext.VIEWPORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VIEWPORT = 0x0BA2;

  @DomName('WebGL2RenderingContext.ZERO')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ZERO = 0;

  // From WebGL2RenderingContextBase

  @DomName('WebGL2RenderingContext.beginQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void beginQuery(int target, Query query) native;

  @DomName('WebGL2RenderingContext.beginTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void beginTransformFeedback(int primitiveMode) native;

  @DomName('WebGL2RenderingContext.bindTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTransformFeedback(int target, TransformFeedback feedback) native;

  @DomName('WebGL2RenderingContext.bindVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void bindVertexArray(VertexArrayObject vertexArray) native;

  @DomName('WebGL2RenderingContext.createQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query createQuery() native;

  @DomName('WebGL2RenderingContext.createSampler')
  @DocsEditable()
  @Experimental() // untriaged
  Sampler createSampler() native;

  @DomName('WebGL2RenderingContext.createTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  TransformFeedback createTransformFeedback() native;

  @DomName('WebGL2RenderingContext.createVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  VertexArrayObject createVertexArray() native;

  @DomName('WebGL2RenderingContext.deleteQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteQuery(Query query) native;

  @DomName('WebGL2RenderingContext.deleteSampler')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSampler(Sampler sampler) native;

  @DomName('WebGL2RenderingContext.deleteSync')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSync(Sync sync) native;

  @DomName('WebGL2RenderingContext.deleteTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTransformFeedback(TransformFeedback feedback) native;

  @DomName('WebGL2RenderingContext.deleteVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteVertexArray(VertexArrayObject vertexArray) native;

  @DomName('WebGL2RenderingContext.drawBuffers')
  @DocsEditable()
  @Experimental() // untriaged
  void drawBuffers(List<int> buffers) native;

  @DomName('WebGL2RenderingContext.endQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void endQuery(int target) native;

  @DomName('WebGL2RenderingContext.endTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void endTransformFeedback() native;

  @DomName('WebGL2RenderingContext.getInternalformatParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getInternalformatParameter(int target, int internalformat, int pname) native;

  @DomName('WebGL2RenderingContext.getQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query getQuery(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getQueryParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getQueryParameter(Query query, int pname) native;

  @DomName('WebGL2RenderingContext.getSamplerParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSamplerParameter(Sampler sampler, int pname) native;

  @DomName('WebGL2RenderingContext.getSyncParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSyncParameter(Sync sync, int pname) native;

  @DomName('WebGL2RenderingContext.invalidateFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void invalidateFramebuffer(int target, List<int> attachments) native;

  @DomName('WebGL2RenderingContext.pauseTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void pauseTransformFeedback() native;

  @DomName('WebGL2RenderingContext.readBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void readBuffer(int mode) native;

  @DomName('WebGL2RenderingContext.resumeTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void resumeTransformFeedback() native;

  @DomName('WebGL2RenderingContext.transformFeedbackVaryings')
  @DocsEditable()
  @Experimental() // untriaged
  void transformFeedbackVaryings(Program program, List<String> varyings, int bufferMode) {
    List varyings_1 = convertDartToNative_StringArray(varyings);
    _transformFeedbackVaryings_1(program, varyings_1, bufferMode);
    return;
  }
  @JSName('transformFeedbackVaryings')
  @DomName('WebGL2RenderingContext.transformFeedbackVaryings')
  @DocsEditable()
  @Experimental() // untriaged
  void _transformFeedbackVaryings_1(Program program, List varyings, bufferMode) native;

  // From WebGLRenderingContextBase

  @DomName('WebGL2RenderingContext.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  final CanvasElement canvas;

  @DomName('WebGL2RenderingContext.activeTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void activeTexture(int texture) native;

  @DomName('WebGL2RenderingContext.attachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void attachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContext.bindBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindBuffer(int target, Buffer buffer) native;

  @DomName('WebGL2RenderingContext.bindFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindFramebuffer(int target, Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContext.bindRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.bindTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTexture(int target, Texture texture) native;

  @DomName('WebGL2RenderingContext.blendEquation')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquation(int mode) native;

  @DomName('WebGL2RenderingContext.blendEquationSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  @DomName('WebGL2RenderingContext.blendFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFunc(int sfactor, int dfactor) native;

  @DomName('WebGL2RenderingContext.blendFuncSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  @DomName('WebGL2RenderingContext.bufferData')
  @DocsEditable()
  @Experimental() // untriaged
  void bufferData(int target, data, int usage) native;

  @DomName('WebGL2RenderingContext.checkFramebufferStatus')
  @DocsEditable()
  @Experimental() // untriaged
  int checkFramebufferStatus(int target) native;

  @DomName('WebGL2RenderingContext.compileShader')
  @DocsEditable()
  @Experimental() // untriaged
  void compileShader(Shader shader) native;

  @DomName('WebGL2RenderingContext.createBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Buffer createBuffer() native;

  @DomName('WebGL2RenderingContext.createFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Framebuffer createFramebuffer() native;

  @DomName('WebGL2RenderingContext.createProgram')
  @DocsEditable()
  @Experimental() // untriaged
  Program createProgram() native;

  @DomName('WebGL2RenderingContext.createRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Renderbuffer createRenderbuffer() native;

  @DomName('WebGL2RenderingContext.createShader')
  @DocsEditable()
  @Experimental() // untriaged
  Shader createShader(int type) native;

  @DomName('WebGL2RenderingContext.createTexture')
  @DocsEditable()
  @Experimental() // untriaged
  Texture createTexture() native;

  @DomName('WebGL2RenderingContext.cullFace')
  @DocsEditable()
  @Experimental() // untriaged
  void cullFace(int mode) native;

  @DomName('WebGL2RenderingContext.deleteBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteBuffer(Buffer buffer) native;

  @DomName('WebGL2RenderingContext.deleteFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteFramebuffer(Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContext.deleteProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteProgram(Program program) native;

  @DomName('WebGL2RenderingContext.deleteRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteRenderbuffer(Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.deleteShader')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteShader(Shader shader) native;

  @DomName('WebGL2RenderingContext.deleteTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTexture(Texture texture) native;

  @DomName('WebGL2RenderingContext.depthFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void depthFunc(int func) native;

  @DomName('WebGL2RenderingContext.detachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void detachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContext.disable')
  @DocsEditable()
  @Experimental() // untriaged
  void disable(int cap) native;

  @DomName('WebGL2RenderingContext.enable')
  @DocsEditable()
  @Experimental() // untriaged
  void enable(int cap) native;

  @DomName('WebGL2RenderingContext.finish')
  @DocsEditable()
  @Experimental() // untriaged
  void finish() native;

  @DomName('WebGL2RenderingContext.flush')
  @DocsEditable()
  @Experimental() // untriaged
  void flush() native;

  @DomName('WebGL2RenderingContext.framebufferRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.frontFace')
  @DocsEditable()
  @Experimental() // untriaged
  void frontFace(int mode) native;

  @DomName('WebGL2RenderingContext.generateMipmap')
  @DocsEditable()
  @Experimental() // untriaged
  void generateMipmap(int target) native;

  @DomName('WebGL2RenderingContext.getAttachedShaders')
  @DocsEditable()
  @Experimental() // untriaged
  List<Shader> getAttachedShaders(Program program) native;

  @DomName('WebGL2RenderingContext.getBufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getBufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  Map getContextAttributes() {
    return convertNativeToDart_Dictionary(_getContextAttributes_1());
  }
  @JSName('getContextAttributes')
  @DomName('WebGL2RenderingContext.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  _getContextAttributes_1() native;

  @DomName('WebGL2RenderingContext.getError')
  @DocsEditable()
  @Experimental() // untriaged
  int getError() native;

  @DomName('WebGL2RenderingContext.getExtension')
  @DocsEditable()
  @Experimental() // untriaged
  Object getExtension(String name) native;

  @DomName('WebGL2RenderingContext.getFramebufferAttachmentParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  @DomName('WebGL2RenderingContext.getParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getParameter(int pname) native;

  @DomName('WebGL2RenderingContext.getProgramInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getProgramInfoLog(Program program) native;

  @DomName('WebGL2RenderingContext.getProgramParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getProgramParameter(Program program, int pname) native;

  @DomName('WebGL2RenderingContext.getRenderbufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getRenderbufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getShaderInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderInfoLog(Shader shader) native;

  @DomName('WebGL2RenderingContext.getShaderParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getShaderParameter(Shader shader, int pname) native;

  @DomName('WebGL2RenderingContext.getShaderPrecisionFormat')
  @DocsEditable()
  @Experimental() // untriaged
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) native;

  @DomName('WebGL2RenderingContext.getShaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderSource(Shader shader) native;

  @DomName('WebGL2RenderingContext.getSupportedExtensions')
  @DocsEditable()
  @Experimental() // untriaged
  List<String> getSupportedExtensions() native;

  @DomName('WebGL2RenderingContext.getTexParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getTexParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getUniform')
  @DocsEditable()
  @Experimental() // untriaged
  Object getUniform(Program program, UniformLocation location) native;

  @DomName('WebGL2RenderingContext.getUniformLocation')
  @DocsEditable()
  @Experimental() // untriaged
  UniformLocation getUniformLocation(Program program, String name) native;

  @DomName('WebGL2RenderingContext.hint')
  @DocsEditable()
  @Experimental() // untriaged
  void hint(int target, int mode) native;

  @DomName('WebGL2RenderingContext.linkProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void linkProgram(Program program) native;

  @DomName('WebGL2RenderingContext.shaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  void shaderSource(Shader shader, String string) native;

  @DomName('WebGL2RenderingContext.stencilOp')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOp(int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContext.stencilOpSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContext.uniform1fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform1iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform2fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform2iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform3fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform3iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform4fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform4iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.useProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void useProgram(Program program) native;

  @DomName('WebGL2RenderingContext.validateProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void validateProgram(Program program) native;

  @DomName('WebGL2RenderingContext.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  final CanvasElement canvas;

  @DomName('WebGL2RenderingContext.activeTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void activeTexture(int texture) native;

  @DomName('WebGL2RenderingContext.attachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void attachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContext.bindBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindBuffer(int target, Buffer buffer) native;

  @DomName('WebGL2RenderingContext.bindFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindFramebuffer(int target, Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContext.bindRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.bindTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTexture(int target, Texture texture) native;

  @DomName('WebGL2RenderingContext.blendEquation')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquation(int mode) native;

  @DomName('WebGL2RenderingContext.blendEquationSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  @DomName('WebGL2RenderingContext.blendFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFunc(int sfactor, int dfactor) native;

  @DomName('WebGL2RenderingContext.blendFuncSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  @DomName('WebGL2RenderingContext.bufferData')
  @DocsEditable()
  @Experimental() // untriaged
  void bufferData(int target, data, int usage) native;

  @DomName('WebGL2RenderingContext.checkFramebufferStatus')
  @DocsEditable()
  @Experimental() // untriaged
  int checkFramebufferStatus(int target) native;

  @DomName('WebGL2RenderingContext.compileShader')
  @DocsEditable()
  @Experimental() // untriaged
  void compileShader(Shader shader) native;

  @DomName('WebGL2RenderingContext.createBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Buffer createBuffer() native;

  @DomName('WebGL2RenderingContext.createFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Framebuffer createFramebuffer() native;

  @DomName('WebGL2RenderingContext.createProgram')
  @DocsEditable()
  @Experimental() // untriaged
  Program createProgram() native;

  @DomName('WebGL2RenderingContext.createRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Renderbuffer createRenderbuffer() native;

  @DomName('WebGL2RenderingContext.createShader')
  @DocsEditable()
  @Experimental() // untriaged
  Shader createShader(int type) native;

  @DomName('WebGL2RenderingContext.createTexture')
  @DocsEditable()
  @Experimental() // untriaged
  Texture createTexture() native;

  @DomName('WebGL2RenderingContext.cullFace')
  @DocsEditable()
  @Experimental() // untriaged
  void cullFace(int mode) native;

  @DomName('WebGL2RenderingContext.deleteBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteBuffer(Buffer buffer) native;

  @DomName('WebGL2RenderingContext.deleteFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteFramebuffer(Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContext.deleteProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteProgram(Program program) native;

  @DomName('WebGL2RenderingContext.deleteRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteRenderbuffer(Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.deleteShader')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteShader(Shader shader) native;

  @DomName('WebGL2RenderingContext.deleteTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTexture(Texture texture) native;

  @DomName('WebGL2RenderingContext.depthFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void depthFunc(int func) native;

  @DomName('WebGL2RenderingContext.detachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void detachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContext.disable')
  @DocsEditable()
  @Experimental() // untriaged
  void disable(int cap) native;

  @DomName('WebGL2RenderingContext.enable')
  @DocsEditable()
  @Experimental() // untriaged
  void enable(int cap) native;

  @DomName('WebGL2RenderingContext.finish')
  @DocsEditable()
  @Experimental() // untriaged
  void finish() native;

  @DomName('WebGL2RenderingContext.flush')
  @DocsEditable()
  @Experimental() // untriaged
  void flush() native;

  @DomName('WebGL2RenderingContext.framebufferRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContext.frontFace')
  @DocsEditable()
  @Experimental() // untriaged
  void frontFace(int mode) native;

  @DomName('WebGL2RenderingContext.generateMipmap')
  @DocsEditable()
  @Experimental() // untriaged
  void generateMipmap(int target) native;

  @DomName('WebGL2RenderingContext.getAttachedShaders')
  @DocsEditable()
  @Experimental() // untriaged
  List<Shader> getAttachedShaders(Program program) native;

  @DomName('WebGL2RenderingContext.getBufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getBufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  Map getContextAttributes() {
    return convertNativeToDart_Dictionary(_getContextAttributes_1());
  }
  @JSName('getContextAttributes')
  @DomName('WebGL2RenderingContext.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  _getContextAttributes_1() native;

  @DomName('WebGL2RenderingContext.getError')
  @DocsEditable()
  @Experimental() // untriaged
  int getError() native;

  @DomName('WebGL2RenderingContext.getExtension')
  @DocsEditable()
  @Experimental() // untriaged
  Object getExtension(String name) native;

  @DomName('WebGL2RenderingContext.getFramebufferAttachmentParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  @DomName('WebGL2RenderingContext.getParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getParameter(int pname) native;

  @DomName('WebGL2RenderingContext.getProgramInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getProgramInfoLog(Program program) native;

  @DomName('WebGL2RenderingContext.getProgramParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getProgramParameter(Program program, int pname) native;

  @DomName('WebGL2RenderingContext.getRenderbufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getRenderbufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getShaderInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderInfoLog(Shader shader) native;

  @DomName('WebGL2RenderingContext.getShaderParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getShaderParameter(Shader shader, int pname) native;

  @DomName('WebGL2RenderingContext.getShaderPrecisionFormat')
  @DocsEditable()
  @Experimental() // untriaged
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) native;

  @DomName('WebGL2RenderingContext.getShaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderSource(Shader shader) native;

  @DomName('WebGL2RenderingContext.getSupportedExtensions')
  @DocsEditable()
  @Experimental() // untriaged
  List<String> getSupportedExtensions() native;

  @DomName('WebGL2RenderingContext.getTexParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getTexParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContext.getUniform')
  @DocsEditable()
  @Experimental() // untriaged
  Object getUniform(Program program, UniformLocation location) native;

  @DomName('WebGL2RenderingContext.getUniformLocation')
  @DocsEditable()
  @Experimental() // untriaged
  UniformLocation getUniformLocation(Program program, String name) native;

  @DomName('WebGL2RenderingContext.hint')
  @DocsEditable()
  @Experimental() // untriaged
  void hint(int target, int mode) native;

  @DomName('WebGL2RenderingContext.linkProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void linkProgram(Program program) native;

  @DomName('WebGL2RenderingContext.shaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  void shaderSource(Shader shader, String string) native;

  @DomName('WebGL2RenderingContext.stencilOp')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOp(int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContext.stencilOpSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContext.uniform1fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform1iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform2fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform2iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform3fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform3iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.uniform4fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContext.uniform4iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContext.useProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void useProgram(Program program) native;

  @DomName('WebGL2RenderingContext.validateProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void validateProgram(Program program) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGL2RenderingContextBase')
@Experimental() // untriaged
@Native("WebGL2RenderingContextBase")
class 2RenderingContextBase extends Interceptor implements _WebGLRenderingContextBase {
  // To suppress missing implicit constructor warnings.
  factory 2RenderingContextBase._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGL2RenderingContextBase.ACTIVE_UNIFORM_BLOCKS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_UNIFORM_BLOCKS = 0x8A36;

  @DomName('WebGL2RenderingContextBase.ALREADY_SIGNALED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALREADY_SIGNALED = 0x911A;

  @DomName('WebGL2RenderingContextBase.ANY_SAMPLES_PASSED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ANY_SAMPLES_PASSED = 0x8C2F;

  @DomName('WebGL2RenderingContextBase.ANY_SAMPLES_PASSED_CONSERVATIVE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ANY_SAMPLES_PASSED_CONSERVATIVE = 0x8D6A;

  @DomName('WebGL2RenderingContextBase.BLUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLUE = 0x1905;

  @DomName('WebGL2RenderingContextBase.COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR = 0x1800;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT1 = 0x8CE1;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT10')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT10 = 0x8CEA;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT11')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT11 = 0x8CEB;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT12')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT12 = 0x8CEC;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT13')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT13 = 0x8CED;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT14')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT14 = 0x8CEE;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT15')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT15 = 0x8CEF;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT2 = 0x8CE2;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT3 = 0x8CE3;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT4 = 0x8CE4;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT5 = 0x8CE5;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT6')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT6 = 0x8CE6;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT7')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT7 = 0x8CE7;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT8 = 0x8CE8;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT9')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT9 = 0x8CE9;

  @DomName('WebGL2RenderingContextBase.COMPARE_REF_TO_TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPARE_REF_TO_TEXTURE = 0x884E;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_R11_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_R11_EAC = 0x9270;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_RG11_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RG11_EAC = 0x9272;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_RGB8_ETC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGB8_ETC2 = 0x9274;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9276;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_RGBA8_ETC2_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA8_ETC2_EAC = 0x9278;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_SIGNED_R11_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SIGNED_R11_EAC = 0x9271;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_SIGNED_RG11_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SIGNED_RG11_EAC = 0x9273;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 0x9279;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_SRGB8_ETC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ETC2 = 0x9275;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 0x9277;

  @DomName('WebGL2RenderingContextBase.CONDITION_SATISFIED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONDITION_SATISFIED = 0x911C;

  @DomName('WebGL2RenderingContextBase.COPY_READ_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COPY_READ_BUFFER = 0x8F36;

  @DomName('WebGL2RenderingContextBase.COPY_READ_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COPY_READ_BUFFER_BINDING = 0x8F36;

  @DomName('WebGL2RenderingContextBase.COPY_WRITE_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COPY_WRITE_BUFFER = 0x8F37;

  @DomName('WebGL2RenderingContextBase.COPY_WRITE_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COPY_WRITE_BUFFER_BINDING = 0x8F37;

  @DomName('WebGL2RenderingContextBase.CURRENT_QUERY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_QUERY = 0x8865;

  @DomName('WebGL2RenderingContextBase.DEPTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH = 0x1801;

  @DomName('WebGL2RenderingContextBase.DEPTH24_STENCIL8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH24_STENCIL8 = 0x88F0;

  @DomName('WebGL2RenderingContextBase.DEPTH32F_STENCIL8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH32F_STENCIL8 = 0x8CAD;

  @DomName('WebGL2RenderingContextBase.DEPTH_COMPONENT24')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT24 = 0x81A6;

  @DomName('WebGL2RenderingContextBase.DEPTH_COMPONENT32F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT32F = 0x8CAC;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER0 = 0x8825;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER1 = 0x8826;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER10')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER10 = 0x882F;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER11')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER11 = 0x8830;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER12')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER12 = 0x8831;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER13')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER13 = 0x8832;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER14')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER14 = 0x8833;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER15')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER15 = 0x8834;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER2 = 0x8827;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER3 = 0x8828;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER4 = 0x8829;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER5 = 0x882A;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER6')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER6 = 0x882B;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER7')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER7 = 0x882C;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER8 = 0x882D;

  @DomName('WebGL2RenderingContextBase.DRAW_BUFFER9')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_BUFFER9 = 0x882E;

  @DomName('WebGL2RenderingContextBase.DRAW_FRAMEBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_FRAMEBUFFER = 0x8CA9;

  @DomName('WebGL2RenderingContextBase.DRAW_FRAMEBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DRAW_FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGL2RenderingContextBase.DYNAMIC_COPY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DYNAMIC_COPY = 0x88EA;

  @DomName('WebGL2RenderingContextBase.DYNAMIC_READ')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DYNAMIC_READ = 0x88E9;

  @DomName('WebGL2RenderingContextBase.FLOAT_32_UNSIGNED_INT_24_8_REV')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_32_UNSIGNED_INT_24_8_REV = 0x8DAD;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT2x3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT2x3 = 0x8B65;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT2x4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT2x4 = 0x8B66;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT3x2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT3x2 = 0x8B67;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT3x4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT3x4 = 0x8B68;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT4x2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT4x2 = 0x8B69;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT4x3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT4x3 = 0x8B6A;

  @DomName('WebGL2RenderingContextBase.FRAGMENT_SHADER_DERIVATIVE_HINT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAGMENT_SHADER_DERIVATIVE_HINT = 0x8B8B;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 0x8215;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_BLUE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 0x8214;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 0x8210;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 0x8211;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 0x8216;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_GREEN_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 0x8213;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_RED_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_RED_SIZE = 0x8212;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 0x8217;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 0x8CD4;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_DEFAULT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_DEFAULT = 0x8218;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_INCOMPLETE_MULTISAMPLE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 0x8D56;

  @DomName('WebGL2RenderingContextBase.GREEN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREEN = 0x1904;

  @DomName('WebGL2RenderingContextBase.HALF_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HALF_FLOAT = 0x140B;

  @DomName('WebGL2RenderingContextBase.INTERLEAVED_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INTERLEAVED_ATTRIBS = 0x8C8C;

  @DomName('WebGL2RenderingContextBase.INT_2_10_10_10_REV')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_2_10_10_10_REV = 0x8D9F;

  @DomName('WebGL2RenderingContextBase.INT_SAMPLER_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_SAMPLER_2D = 0x8DCA;

  @DomName('WebGL2RenderingContextBase.INT_SAMPLER_2D_ARRAY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_SAMPLER_2D_ARRAY = 0x8DCF;

  @DomName('WebGL2RenderingContextBase.INT_SAMPLER_3D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_SAMPLER_3D = 0x8DCB;

  @DomName('WebGL2RenderingContextBase.INT_SAMPLER_CUBE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_SAMPLER_CUBE = 0x8DCC;

  @DomName('WebGL2RenderingContextBase.INVALID_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_INDEX = 0xFFFFFFFF;

  @DomName('WebGL2RenderingContextBase.MAX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX = 0x8008;

  @DomName('WebGL2RenderingContextBase.MAX_3D_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_3D_TEXTURE_SIZE = 0x8073;

  @DomName('WebGL2RenderingContextBase.MAX_ARRAY_TEXTURE_LAYERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_ARRAY_TEXTURE_LAYERS = 0x88FF;

  @DomName('WebGL2RenderingContextBase.MAX_CLIENT_WAIT_TIMEOUT_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_CLIENT_WAIT_TIMEOUT_WEBGL = 0x9247;

  @DomName('WebGL2RenderingContextBase.MAX_COLOR_ATTACHMENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COLOR_ATTACHMENTS = 0x8CDF;

  @DomName('WebGL2RenderingContextBase.MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 0x8A33;

  @DomName('WebGL2RenderingContextBase.MAX_COMBINED_UNIFORM_BLOCKS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_UNIFORM_BLOCKS = 0x8A2E;

  @DomName('WebGL2RenderingContextBase.MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 0x8A31;

  @DomName('WebGL2RenderingContextBase.MAX_DRAW_BUFFERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_DRAW_BUFFERS = 0x8824;

  @DomName('WebGL2RenderingContextBase.MAX_ELEMENTS_INDICES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_ELEMENTS_INDICES = 0x80E9;

  @DomName('WebGL2RenderingContextBase.MAX_ELEMENTS_VERTICES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_ELEMENTS_VERTICES = 0x80E8;

  @DomName('WebGL2RenderingContextBase.MAX_ELEMENT_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_ELEMENT_INDEX = 0x8D6B;

  @DomName('WebGL2RenderingContextBase.MAX_FRAGMENT_INPUT_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_INPUT_COMPONENTS = 0x9125;

  @DomName('WebGL2RenderingContextBase.MAX_FRAGMENT_UNIFORM_BLOCKS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_UNIFORM_BLOCKS = 0x8A2D;

  @DomName('WebGL2RenderingContextBase.MAX_FRAGMENT_UNIFORM_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_UNIFORM_COMPONENTS = 0x8B49;

  @DomName('WebGL2RenderingContextBase.MAX_PROGRAM_TEXEL_OFFSET')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_PROGRAM_TEXEL_OFFSET = 0x8905;

  @DomName('WebGL2RenderingContextBase.MAX_SAMPLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_SAMPLES = 0x8D57;

  @DomName('WebGL2RenderingContextBase.MAX_SERVER_WAIT_TIMEOUT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_SERVER_WAIT_TIMEOUT = 0x9111;

  @DomName('WebGL2RenderingContextBase.MAX_TEXTURE_LOD_BIAS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_LOD_BIAS = 0x84FD;

  @DomName('WebGL2RenderingContextBase.MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 0x8C8A;

  @DomName('WebGL2RenderingContextBase.MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 0x8C8B;

  @DomName('WebGL2RenderingContextBase.MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 0x8C80;

  @DomName('WebGL2RenderingContextBase.MAX_UNIFORM_BLOCK_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_UNIFORM_BLOCK_SIZE = 0x8A30;

  @DomName('WebGL2RenderingContextBase.MAX_UNIFORM_BUFFER_BINDINGS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_UNIFORM_BUFFER_BINDINGS = 0x8A2F;

  @DomName('WebGL2RenderingContextBase.MAX_VARYING_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VARYING_COMPONENTS = 0x8B4B;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_OUTPUT_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_OUTPUT_COMPONENTS = 0x9122;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_UNIFORM_BLOCKS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_UNIFORM_BLOCKS = 0x8A2B;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_UNIFORM_COMPONENTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_UNIFORM_COMPONENTS = 0x8B4A;

  @DomName('WebGL2RenderingContextBase.MIN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIN = 0x8007;

  @DomName('WebGL2RenderingContextBase.MIN_PROGRAM_TEXEL_OFFSET')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIN_PROGRAM_TEXEL_OFFSET = 0x8904;

  @DomName('WebGL2RenderingContextBase.NUM_SAMPLE_COUNTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NUM_SAMPLE_COUNTS = 0x9380;

  @DomName('WebGL2RenderingContextBase.OBJECT_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int OBJECT_TYPE = 0x9112;

  @DomName('WebGL2RenderingContextBase.PACK_ROW_LENGTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_ROW_LENGTH = 0x0D02;

  @DomName('WebGL2RenderingContextBase.PACK_SKIP_PIXELS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_SKIP_PIXELS = 0x0D04;

  @DomName('WebGL2RenderingContextBase.PACK_SKIP_ROWS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_SKIP_ROWS = 0x0D03;

  @DomName('WebGL2RenderingContextBase.PIXEL_PACK_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PIXEL_PACK_BUFFER = 0x88EB;

  @DomName('WebGL2RenderingContextBase.PIXEL_PACK_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PIXEL_PACK_BUFFER_BINDING = 0x88ED;

  @DomName('WebGL2RenderingContextBase.PIXEL_UNPACK_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PIXEL_UNPACK_BUFFER = 0x88EC;

  @DomName('WebGL2RenderingContextBase.PIXEL_UNPACK_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PIXEL_UNPACK_BUFFER_BINDING = 0x88EF;

  @DomName('WebGL2RenderingContextBase.QUERY_RESULT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int QUERY_RESULT = 0x8866;

  @DomName('WebGL2RenderingContextBase.QUERY_RESULT_AVAILABLE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int QUERY_RESULT_AVAILABLE = 0x8867;

  @DomName('WebGL2RenderingContextBase.R11F_G11F_B10F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R11F_G11F_B10F = 0x8C3A;

  @DomName('WebGL2RenderingContextBase.R16F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R16F = 0x822D;

  @DomName('WebGL2RenderingContextBase.R16I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R16I = 0x8233;

  @DomName('WebGL2RenderingContextBase.R16UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R16UI = 0x8234;

  @DomName('WebGL2RenderingContextBase.R32F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R32F = 0x822E;

  @DomName('WebGL2RenderingContextBase.R32I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R32I = 0x8235;

  @DomName('WebGL2RenderingContextBase.R32UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R32UI = 0x8236;

  @DomName('WebGL2RenderingContextBase.R8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R8 = 0x8229;

  @DomName('WebGL2RenderingContextBase.R8I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R8I = 0x8231;

  @DomName('WebGL2RenderingContextBase.R8UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R8UI = 0x8232;

  @DomName('WebGL2RenderingContextBase.R8_SNORM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int R8_SNORM = 0x8F94;

  @DomName('WebGL2RenderingContextBase.RASTERIZER_DISCARD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RASTERIZER_DISCARD = 0x8C89;

  @DomName('WebGL2RenderingContextBase.READ_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int READ_BUFFER = 0x0C02;

  @DomName('WebGL2RenderingContextBase.READ_FRAMEBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int READ_FRAMEBUFFER = 0x8CA8;

  @DomName('WebGL2RenderingContextBase.READ_FRAMEBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int READ_FRAMEBUFFER_BINDING = 0x8CAA;

  @DomName('WebGL2RenderingContextBase.RED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RED = 0x1903;

  @DomName('WebGL2RenderingContextBase.RED_INTEGER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RED_INTEGER = 0x8D94;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_SAMPLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_SAMPLES = 0x8CAB;

  @DomName('WebGL2RenderingContextBase.RG')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG = 0x8227;

  @DomName('WebGL2RenderingContextBase.RG16F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG16F = 0x822F;

  @DomName('WebGL2RenderingContextBase.RG16I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG16I = 0x8239;

  @DomName('WebGL2RenderingContextBase.RG16UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG16UI = 0x823A;

  @DomName('WebGL2RenderingContextBase.RG32F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG32F = 0x8230;

  @DomName('WebGL2RenderingContextBase.RG32I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG32I = 0x823B;

  @DomName('WebGL2RenderingContextBase.RG32UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG32UI = 0x823C;

  @DomName('WebGL2RenderingContextBase.RG8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG8 = 0x822B;

  @DomName('WebGL2RenderingContextBase.RG8I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG8I = 0x8237;

  @DomName('WebGL2RenderingContextBase.RG8UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG8UI = 0x8238;

  @DomName('WebGL2RenderingContextBase.RG8_SNORM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG8_SNORM = 0x8F95;

  @DomName('WebGL2RenderingContextBase.RGB10_A2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB10_A2 = 0x8059;

  @DomName('WebGL2RenderingContextBase.RGB10_A2UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB10_A2UI = 0x906F;

  @DomName('WebGL2RenderingContextBase.RGB16F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB16F = 0x881B;

  @DomName('WebGL2RenderingContextBase.RGB16I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB16I = 0x8D89;

  @DomName('WebGL2RenderingContextBase.RGB16UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB16UI = 0x8D77;

  @DomName('WebGL2RenderingContextBase.RGB32F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB32F = 0x8815;

  @DomName('WebGL2RenderingContextBase.RGB32I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB32I = 0x8D83;

  @DomName('WebGL2RenderingContextBase.RGB32UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB32UI = 0x8D71;

  @DomName('WebGL2RenderingContextBase.RGB8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB8 = 0x8051;

  @DomName('WebGL2RenderingContextBase.RGB8I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB8I = 0x8D8F;

  @DomName('WebGL2RenderingContextBase.RGB8UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB8UI = 0x8D7D;

  @DomName('WebGL2RenderingContextBase.RGB8_SNORM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB8_SNORM = 0x8F96;

  @DomName('WebGL2RenderingContextBase.RGB9_E5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB9_E5 = 0x8C3D;

  @DomName('WebGL2RenderingContextBase.RGBA16F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA16F = 0x881A;

  @DomName('WebGL2RenderingContextBase.RGBA16I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA16I = 0x8D88;

  @DomName('WebGL2RenderingContextBase.RGBA16UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA16UI = 0x8D76;

  @DomName('WebGL2RenderingContextBase.RGBA32F')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA32F = 0x8814;

  @DomName('WebGL2RenderingContextBase.RGBA32I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA32I = 0x8D82;

  @DomName('WebGL2RenderingContextBase.RGBA32UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA32UI = 0x8D70;

  @DomName('WebGL2RenderingContextBase.RGBA8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA8 = 0x8058;

  @DomName('WebGL2RenderingContextBase.RGBA8I')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA8I = 0x8D8E;

  @DomName('WebGL2RenderingContextBase.RGBA8UI')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA8UI = 0x8D7C;

  @DomName('WebGL2RenderingContextBase.RGBA8_SNORM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA8_SNORM = 0x8F97;

  @DomName('WebGL2RenderingContextBase.RGBA_INTEGER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA_INTEGER = 0x8D99;

  @DomName('WebGL2RenderingContextBase.RGB_INTEGER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB_INTEGER = 0x8D98;

  @DomName('WebGL2RenderingContextBase.RG_INTEGER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RG_INTEGER = 0x8228;

  @DomName('WebGL2RenderingContextBase.SAMPLER_2D_ARRAY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D_ARRAY = 0x8DC1;

  @DomName('WebGL2RenderingContextBase.SAMPLER_2D_ARRAY_SHADOW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D_ARRAY_SHADOW = 0x8DC4;

  @DomName('WebGL2RenderingContextBase.SAMPLER_2D_SHADOW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D_SHADOW = 0x8B62;

  @DomName('WebGL2RenderingContextBase.SAMPLER_3D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_3D = 0x8B5F;

  @DomName('WebGL2RenderingContextBase.SAMPLER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_BINDING = 0x8919;

  @DomName('WebGL2RenderingContextBase.SAMPLER_CUBE_SHADOW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_CUBE_SHADOW = 0x8DC5;

  @DomName('WebGL2RenderingContextBase.SEPARATE_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SEPARATE_ATTRIBS = 0x8C8D;

  @DomName('WebGL2RenderingContextBase.SIGNALED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SIGNALED = 0x9119;

  @DomName('WebGL2RenderingContextBase.SIGNED_NORMALIZED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SIGNED_NORMALIZED = 0x8F9C;

  @DomName('WebGL2RenderingContextBase.SRGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB = 0x8C40;

  @DomName('WebGL2RenderingContextBase.SRGB8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB8 = 0x8C41;

  @DomName('WebGL2RenderingContextBase.SRGB8_ALPHA8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB8_ALPHA8 = 0x8C43;

  @DomName('WebGL2RenderingContextBase.STATIC_COPY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STATIC_COPY = 0x88E6;

  @DomName('WebGL2RenderingContextBase.STATIC_READ')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STATIC_READ = 0x88E5;

  @DomName('WebGL2RenderingContextBase.STENCIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL = 0x1802;

  @DomName('WebGL2RenderingContextBase.STREAM_COPY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STREAM_COPY = 0x88E2;

  @DomName('WebGL2RenderingContextBase.STREAM_READ')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STREAM_READ = 0x88E1;

  @DomName('WebGL2RenderingContextBase.SYNC_CONDITION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_CONDITION = 0x9113;

  @DomName('WebGL2RenderingContextBase.SYNC_FENCE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_FENCE = 0x9116;

  @DomName('WebGL2RenderingContextBase.SYNC_FLAGS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_FLAGS = 0x9115;

  @DomName('WebGL2RenderingContextBase.SYNC_FLUSH_COMMANDS_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_FLUSH_COMMANDS_BIT = 0x00000001;

  @DomName('WebGL2RenderingContextBase.SYNC_GPU_COMMANDS_COMPLETE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_GPU_COMMANDS_COMPLETE = 0x9117;

  @DomName('WebGL2RenderingContextBase.SYNC_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SYNC_STATUS = 0x9114;

  @DomName('WebGL2RenderingContextBase.TEXTURE_2D_ARRAY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_2D_ARRAY = 0x8C1A;

  @DomName('WebGL2RenderingContextBase.TEXTURE_3D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_3D = 0x806F;

  @DomName('WebGL2RenderingContextBase.TEXTURE_BASE_LEVEL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BASE_LEVEL = 0x813C;

  @DomName('WebGL2RenderingContextBase.TEXTURE_BINDING_2D_ARRAY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_2D_ARRAY = 0x8C1D;

  @DomName('WebGL2RenderingContextBase.TEXTURE_BINDING_3D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_3D = 0x806A;

  @DomName('WebGL2RenderingContextBase.TEXTURE_COMPARE_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_COMPARE_FUNC = 0x884D;

  @DomName('WebGL2RenderingContextBase.TEXTURE_COMPARE_MODE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_COMPARE_MODE = 0x884C;

  @DomName('WebGL2RenderingContextBase.TEXTURE_IMMUTABLE_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_IMMUTABLE_FORMAT = 0x912F;

  @DomName('WebGL2RenderingContextBase.TEXTURE_IMMUTABLE_LEVELS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_IMMUTABLE_LEVELS = 0x82DF;

  @DomName('WebGL2RenderingContextBase.TEXTURE_MAX_LEVEL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MAX_LEVEL = 0x813D;

  @DomName('WebGL2RenderingContextBase.TEXTURE_MAX_LOD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MAX_LOD = 0x813B;

  @DomName('WebGL2RenderingContextBase.TEXTURE_MIN_LOD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MIN_LOD = 0x813A;

  @DomName('WebGL2RenderingContextBase.TEXTURE_WRAP_R')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_R = 0x8072;

  @DomName('WebGL2RenderingContextBase.TIMEOUT_EXPIRED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TIMEOUT_EXPIRED = 0x911B;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK = 0x8E22;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_ACTIVE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_ACTIVE = 0x8E24;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BINDING = 0x8E25;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BUFFER = 0x8C8E;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BUFFER_BINDING = 0x8C8F;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BUFFER_MODE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BUFFER_MODE = 0x8C7F;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BUFFER_SIZE = 0x8C85;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_BUFFER_START')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_BUFFER_START = 0x8C84;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_PAUSED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_PAUSED = 0x8E23;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 0x8C88;

  @DomName('WebGL2RenderingContextBase.TRANSFORM_FEEDBACK_VARYINGS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRANSFORM_FEEDBACK_VARYINGS = 0x8C83;

  @DomName('WebGL2RenderingContextBase.UNIFORM_ARRAY_STRIDE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_ARRAY_STRIDE = 0x8A3C;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_ACTIVE_UNIFORMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_ACTIVE_UNIFORMS = 0x8A42;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 0x8A43;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_BINDING = 0x8A3F;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_DATA_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_DATA_SIZE = 0x8A40;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_INDEX = 0x8A3A;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 0x8A46;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 0x8A44;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BUFFER = 0x8A11;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BUFFER_BINDING = 0x8A28;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BUFFER_OFFSET_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BUFFER_OFFSET_ALIGNMENT = 0x8A34;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BUFFER_SIZE = 0x8A2A;

  @DomName('WebGL2RenderingContextBase.UNIFORM_BUFFER_START')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_BUFFER_START = 0x8A29;

  @DomName('WebGL2RenderingContextBase.UNIFORM_IS_ROW_MAJOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_IS_ROW_MAJOR = 0x8A3E;

  @DomName('WebGL2RenderingContextBase.UNIFORM_MATRIX_STRIDE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_MATRIX_STRIDE = 0x8A3D;

  @DomName('WebGL2RenderingContextBase.UNIFORM_OFFSET')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_OFFSET = 0x8A3B;

  @DomName('WebGL2RenderingContextBase.UNIFORM_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_SIZE = 0x8A38;

  @DomName('WebGL2RenderingContextBase.UNIFORM_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNIFORM_TYPE = 0x8A37;

  @DomName('WebGL2RenderingContextBase.UNPACK_IMAGE_HEIGHT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_IMAGE_HEIGHT = 0x806E;

  @DomName('WebGL2RenderingContextBase.UNPACK_ROW_LENGTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_ROW_LENGTH = 0x0CF2;

  @DomName('WebGL2RenderingContextBase.UNPACK_SKIP_IMAGES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_SKIP_IMAGES = 0x806D;

  @DomName('WebGL2RenderingContextBase.UNPACK_SKIP_PIXELS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_SKIP_PIXELS = 0x0CF4;

  @DomName('WebGL2RenderingContextBase.UNPACK_SKIP_ROWS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_SKIP_ROWS = 0x0CF3;

  @DomName('WebGL2RenderingContextBase.UNSIGNALED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNALED = 0x9118;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_10F_11F_11F_REV')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_10F_11F_11F_REV = 0x8C3B;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_24_8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_24_8 = 0x84FA;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_2_10_10_10_REV')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_2_10_10_10_REV = 0x8368;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_5_9_9_9_REV')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_5_9_9_9_REV = 0x8C3E;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_SAMPLER_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_SAMPLER_2D = 0x8DD2;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_SAMPLER_2D_ARRAY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_SAMPLER_2D_ARRAY = 0x8DD7;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_SAMPLER_3D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_SAMPLER_3D = 0x8DD3;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_SAMPLER_CUBE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_SAMPLER_CUBE = 0x8DD4;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_VEC2 = 0x8DC6;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_VEC3 = 0x8DC7;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT_VEC4 = 0x8DC8;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_NORMALIZED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_NORMALIZED = 0x8C17;

  @DomName('WebGL2RenderingContextBase.VERTEX_ARRAY_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ARRAY_BINDING = 0x85B5;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_DIVISOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_DIVISOR = 0x88FE;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_INTEGER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_INTEGER = 0x88FD;

  @DomName('WebGL2RenderingContextBase.WAIT_FAILED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int WAIT_FAILED = 0x911D;

  @DomName('WebGL2RenderingContextBase.beginQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void beginQuery(int target, Query query) native;

  @DomName('WebGL2RenderingContextBase.beginTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void beginTransformFeedback(int primitiveMode) native;

  @DomName('WebGL2RenderingContextBase.bindTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTransformFeedback(int target, TransformFeedback feedback) native;

  @DomName('WebGL2RenderingContextBase.bindVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void bindVertexArray(VertexArrayObject vertexArray) native;

  @DomName('WebGL2RenderingContextBase.createQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query createQuery() native;

  @DomName('WebGL2RenderingContextBase.createSampler')
  @DocsEditable()
  @Experimental() // untriaged
  Sampler createSampler() native;

  @DomName('WebGL2RenderingContextBase.createTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  TransformFeedback createTransformFeedback() native;

  @DomName('WebGL2RenderingContextBase.createVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  VertexArrayObject createVertexArray() native;

  @DomName('WebGL2RenderingContextBase.deleteQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteQuery(Query query) native;

  @DomName('WebGL2RenderingContextBase.deleteSampler')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSampler(Sampler sampler) native;

  @DomName('WebGL2RenderingContextBase.deleteSync')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteSync(Sync sync) native;

  @DomName('WebGL2RenderingContextBase.deleteTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTransformFeedback(TransformFeedback feedback) native;

  @DomName('WebGL2RenderingContextBase.deleteVertexArray')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteVertexArray(VertexArrayObject vertexArray) native;

  @DomName('WebGL2RenderingContextBase.drawBuffers')
  @DocsEditable()
  @Experimental() // untriaged
  void drawBuffers(List<int> buffers) native;

  @DomName('WebGL2RenderingContextBase.endQuery')
  @DocsEditable()
  @Experimental() // untriaged
  void endQuery(int target) native;

  @DomName('WebGL2RenderingContextBase.endTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void endTransformFeedback() native;

  @DomName('WebGL2RenderingContextBase.getInternalformatParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getInternalformatParameter(int target, int internalformat, int pname) native;

  @DomName('WebGL2RenderingContextBase.getQuery')
  @DocsEditable()
  @Experimental() // untriaged
  Query getQuery(int target, int pname) native;

  @DomName('WebGL2RenderingContextBase.getQueryParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getQueryParameter(Query query, int pname) native;

  @DomName('WebGL2RenderingContextBase.getSamplerParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSamplerParameter(Sampler sampler, int pname) native;

  @DomName('WebGL2RenderingContextBase.getSyncParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getSyncParameter(Sync sync, int pname) native;

  @DomName('WebGL2RenderingContextBase.invalidateFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void invalidateFramebuffer(int target, List<int> attachments) native;

  @DomName('WebGL2RenderingContextBase.pauseTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void pauseTransformFeedback() native;

  @DomName('WebGL2RenderingContextBase.readBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void readBuffer(int mode) native;

  @DomName('WebGL2RenderingContextBase.resumeTransformFeedback')
  @DocsEditable()
  @Experimental() // untriaged
  void resumeTransformFeedback() native;

  @DomName('WebGL2RenderingContextBase.transformFeedbackVaryings')
  @DocsEditable()
  @Experimental() // untriaged
  void transformFeedbackVaryings(Program program, List<String> varyings, int bufferMode) {
    List varyings_1 = convertDartToNative_StringArray(varyings);
    _transformFeedbackVaryings_1(program, varyings_1, bufferMode);
    return;
  }
  @JSName('transformFeedbackVaryings')
  @DomName('WebGL2RenderingContextBase.transformFeedbackVaryings')
  @DocsEditable()
  @Experimental() // untriaged
  void _transformFeedbackVaryings_1(Program program, List varyings, bufferMode) native;

  @DomName('WebGL2RenderingContextBase.ACTIVE_ATTRIBUTES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_ATTRIBUTES = 0x8B89;

  @DomName('WebGL2RenderingContextBase.ACTIVE_TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_TEXTURE = 0x84E0;

  @DomName('WebGL2RenderingContextBase.ACTIVE_UNIFORMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ACTIVE_UNIFORMS = 0x8B86;

  @DomName('WebGL2RenderingContextBase.ALIASED_LINE_WIDTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  @DomName('WebGL2RenderingContextBase.ALIASED_POINT_SIZE_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALIASED_POINT_SIZE_RANGE = 0x846D;

  @DomName('WebGL2RenderingContextBase.ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA = 0x1906;

  @DomName('WebGL2RenderingContextBase.ALPHA_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALPHA_BITS = 0x0D55;

  @DomName('WebGL2RenderingContextBase.ALWAYS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ALWAYS = 0x0207;

  @DomName('WebGL2RenderingContextBase.ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER = 0x8892;

  @DomName('WebGL2RenderingContextBase.ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ARRAY_BUFFER_BINDING = 0x8894;

  @DomName('WebGL2RenderingContextBase.ATTACHED_SHADERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ATTACHED_SHADERS = 0x8B85;

  @DomName('WebGL2RenderingContextBase.BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BACK = 0x0405;

  @DomName('WebGL2RenderingContextBase.BLEND')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND = 0x0BE2;

  @DomName('WebGL2RenderingContextBase.BLEND_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_COLOR = 0x8005;

  @DomName('WebGL2RenderingContextBase.BLEND_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_ALPHA = 0x80CA;

  @DomName('WebGL2RenderingContextBase.BLEND_DST_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_DST_RGB = 0x80C8;

  @DomName('WebGL2RenderingContextBase.BLEND_EQUATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION = 0x8009;

  @DomName('WebGL2RenderingContextBase.BLEND_EQUATION_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_ALPHA = 0x883D;

  @DomName('WebGL2RenderingContextBase.BLEND_EQUATION_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_EQUATION_RGB = 0x8009;

  @DomName('WebGL2RenderingContextBase.BLEND_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_ALPHA = 0x80CB;

  @DomName('WebGL2RenderingContextBase.BLEND_SRC_RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLEND_SRC_RGB = 0x80C9;

  @DomName('WebGL2RenderingContextBase.BLUE_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BLUE_BITS = 0x0D54;

  @DomName('WebGL2RenderingContextBase.BOOL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL = 0x8B56;

  @DomName('WebGL2RenderingContextBase.BOOL_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC2 = 0x8B57;

  @DomName('WebGL2RenderingContextBase.BOOL_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC3 = 0x8B58;

  @DomName('WebGL2RenderingContextBase.BOOL_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BOOL_VEC4 = 0x8B59;

  @DomName('WebGL2RenderingContextBase.BROWSER_DEFAULT_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BROWSER_DEFAULT_WEBGL = 0x9244;

  @DomName('WebGL2RenderingContextBase.BUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_SIZE = 0x8764;

  @DomName('WebGL2RenderingContextBase.BUFFER_USAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BUFFER_USAGE = 0x8765;

  @DomName('WebGL2RenderingContextBase.BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int BYTE = 0x1400;

  @DomName('WebGL2RenderingContextBase.CCW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CCW = 0x0901;

  @DomName('WebGL2RenderingContextBase.CLAMP_TO_EDGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CLAMP_TO_EDGE = 0x812F;

  @DomName('WebGL2RenderingContextBase.COLOR_ATTACHMENT0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_ATTACHMENT0 = 0x8CE0;

  @DomName('WebGL2RenderingContextBase.COLOR_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_BUFFER_BIT = 0x00004000;

  @DomName('WebGL2RenderingContextBase.COLOR_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_CLEAR_VALUE = 0x0C22;

  @DomName('WebGL2RenderingContextBase.COLOR_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COLOR_WRITEMASK = 0x0C23;

  @DomName('WebGL2RenderingContextBase.COMPILE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPILE_STATUS = 0x8B81;

  @DomName('WebGL2RenderingContextBase.COMPRESSED_TEXTURE_FORMATS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  @DomName('WebGL2RenderingContextBase.CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_ALPHA = 0x8003;

  @DomName('WebGL2RenderingContextBase.CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONSTANT_COLOR = 0x8001;

  @DomName('WebGL2RenderingContextBase.CONTEXT_LOST_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CONTEXT_LOST_WEBGL = 0x9242;

  @DomName('WebGL2RenderingContextBase.CULL_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE = 0x0B44;

  @DomName('WebGL2RenderingContextBase.CULL_FACE_MODE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CULL_FACE_MODE = 0x0B45;

  @DomName('WebGL2RenderingContextBase.CURRENT_PROGRAM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_PROGRAM = 0x8B8D;

  @DomName('WebGL2RenderingContextBase.CURRENT_VERTEX_ATTRIB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_VERTEX_ATTRIB = 0x8626;

  @DomName('WebGL2RenderingContextBase.CW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CW = 0x0900;

  @DomName('WebGL2RenderingContextBase.DECR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR = 0x1E03;

  @DomName('WebGL2RenderingContextBase.DECR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DECR_WRAP = 0x8508;

  @DomName('WebGL2RenderingContextBase.DELETE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DELETE_STATUS = 0x8B80;

  @DomName('WebGL2RenderingContextBase.DEPTH_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_ATTACHMENT = 0x8D00;

  @DomName('WebGL2RenderingContextBase.DEPTH_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BITS = 0x0D56;

  @DomName('WebGL2RenderingContextBase.DEPTH_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_BUFFER_BIT = 0x00000100;

  @DomName('WebGL2RenderingContextBase.DEPTH_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_CLEAR_VALUE = 0x0B73;

  @DomName('WebGL2RenderingContextBase.DEPTH_COMPONENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT = 0x1902;

  @DomName('WebGL2RenderingContextBase.DEPTH_COMPONENT16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_COMPONENT16 = 0x81A5;

  @DomName('WebGL2RenderingContextBase.DEPTH_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_FUNC = 0x0B74;

  @DomName('WebGL2RenderingContextBase.DEPTH_RANGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_RANGE = 0x0B70;

  @DomName('WebGL2RenderingContextBase.DEPTH_STENCIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL = 0x84F9;

  @DomName('WebGL2RenderingContextBase.DEPTH_STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  @DomName('WebGL2RenderingContextBase.DEPTH_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_TEST = 0x0B71;

  @DomName('WebGL2RenderingContextBase.DEPTH_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DEPTH_WRITEMASK = 0x0B72;

  @DomName('WebGL2RenderingContextBase.DITHER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DITHER = 0x0BD0;

  @DomName('WebGL2RenderingContextBase.DONT_CARE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DONT_CARE = 0x1100;

  @DomName('WebGL2RenderingContextBase.DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_ALPHA = 0x0304;

  @DomName('WebGL2RenderingContextBase.DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DST_COLOR = 0x0306;

  @DomName('WebGL2RenderingContextBase.DYNAMIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int DYNAMIC_DRAW = 0x88E8;

  @DomName('WebGL2RenderingContextBase.ELEMENT_ARRAY_BUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER = 0x8893;

  @DomName('WebGL2RenderingContextBase.ELEMENT_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  @DomName('WebGL2RenderingContextBase.EQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int EQUAL = 0x0202;

  @DomName('WebGL2RenderingContextBase.FASTEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FASTEST = 0x1101;

  @DomName('WebGL2RenderingContextBase.FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT = 0x1406;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT2 = 0x8B5A;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT3 = 0x8B5B;

  @DomName('WebGL2RenderingContextBase.FLOAT_MAT4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_MAT4 = 0x8B5C;

  @DomName('WebGL2RenderingContextBase.FLOAT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC2 = 0x8B50;

  @DomName('WebGL2RenderingContextBase.FLOAT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC3 = 0x8B51;

  @DomName('WebGL2RenderingContextBase.FLOAT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FLOAT_VEC4 = 0x8B52;

  @DomName('WebGL2RenderingContextBase.FRAGMENT_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAGMENT_SHADER = 0x8B30;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER = 0x8D40;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_COMPLETE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_COMPLETE = 0x8CD5;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  @DomName('WebGL2RenderingContextBase.FRAMEBUFFER_UNSUPPORTED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  @DomName('WebGL2RenderingContextBase.FRONT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT = 0x0404;

  @DomName('WebGL2RenderingContextBase.FRONT_AND_BACK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_AND_BACK = 0x0408;

  @DomName('WebGL2RenderingContextBase.FRONT_FACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRONT_FACE = 0x0B46;

  @DomName('WebGL2RenderingContextBase.FUNC_ADD')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_ADD = 0x8006;

  @DomName('WebGL2RenderingContextBase.FUNC_REVERSE_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_REVERSE_SUBTRACT = 0x800B;

  @DomName('WebGL2RenderingContextBase.FUNC_SUBTRACT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FUNC_SUBTRACT = 0x800A;

  @DomName('WebGL2RenderingContextBase.GENERATE_MIPMAP_HINT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GENERATE_MIPMAP_HINT = 0x8192;

  @DomName('WebGL2RenderingContextBase.GEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GEQUAL = 0x0206;

  @DomName('WebGL2RenderingContextBase.GREATER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREATER = 0x0204;

  @DomName('WebGL2RenderingContextBase.GREEN_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GREEN_BITS = 0x0D53;

  @DomName('WebGL2RenderingContextBase.HIGH_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_FLOAT = 0x8DF2;

  @DomName('WebGL2RenderingContextBase.HIGH_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int HIGH_INT = 0x8DF5;

  @DomName('WebGL2RenderingContextBase.IMPLEMENTATION_COLOR_READ_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

  @DomName('WebGL2RenderingContextBase.IMPLEMENTATION_COLOR_READ_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

  @DomName('WebGL2RenderingContextBase.INCR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR = 0x1E02;

  @DomName('WebGL2RenderingContextBase.INCR_WRAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INCR_WRAP = 0x8507;

  @DomName('WebGL2RenderingContextBase.INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT = 0x1404;

  @DomName('WebGL2RenderingContextBase.INT_VEC2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC2 = 0x8B53;

  @DomName('WebGL2RenderingContextBase.INT_VEC3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC3 = 0x8B54;

  @DomName('WebGL2RenderingContextBase.INT_VEC4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INT_VEC4 = 0x8B55;

  @DomName('WebGL2RenderingContextBase.INVALID_ENUM')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_ENUM = 0x0500;

  @DomName('WebGL2RenderingContextBase.INVALID_FRAMEBUFFER_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  @DomName('WebGL2RenderingContextBase.INVALID_OPERATION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_OPERATION = 0x0502;

  @DomName('WebGL2RenderingContextBase.INVALID_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVALID_VALUE = 0x0501;

  @DomName('WebGL2RenderingContextBase.INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int INVERT = 0x150A;

  @DomName('WebGL2RenderingContextBase.KEEP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int KEEP = 0x1E00;

  @DomName('WebGL2RenderingContextBase.LEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LEQUAL = 0x0203;

  @DomName('WebGL2RenderingContextBase.LESS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LESS = 0x0201;

  @DomName('WebGL2RenderingContextBase.LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR = 0x2601;

  @DomName('WebGL2RenderingContextBase.LINEAR_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_LINEAR = 0x2703;

  @DomName('WebGL2RenderingContextBase.LINEAR_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINEAR_MIPMAP_NEAREST = 0x2701;

  @DomName('WebGL2RenderingContextBase.LINES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINES = 0x0001;

  @DomName('WebGL2RenderingContextBase.LINE_LOOP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_LOOP = 0x0002;

  @DomName('WebGL2RenderingContextBase.LINE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_STRIP = 0x0003;

  @DomName('WebGL2RenderingContextBase.LINE_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINE_WIDTH = 0x0B21;

  @DomName('WebGL2RenderingContextBase.LINK_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LINK_STATUS = 0x8B82;

  @DomName('WebGL2RenderingContextBase.LOW_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_FLOAT = 0x8DF0;

  @DomName('WebGL2RenderingContextBase.LOW_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LOW_INT = 0x8DF3;

  @DomName('WebGL2RenderingContextBase.LUMINANCE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE = 0x1909;

  @DomName('WebGL2RenderingContextBase.LUMINANCE_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int LUMINANCE_ALPHA = 0x190A;

  @DomName('WebGL2RenderingContextBase.MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  @DomName('WebGL2RenderingContextBase.MAX_CUBE_MAP_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  @DomName('WebGL2RenderingContextBase.MAX_FRAGMENT_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  @DomName('WebGL2RenderingContextBase.MAX_RENDERBUFFER_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_RENDERBUFFER_SIZE = 0x84E8;

  @DomName('WebGL2RenderingContextBase.MAX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  @DomName('WebGL2RenderingContextBase.MAX_TEXTURE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_TEXTURE_SIZE = 0x0D33;

  @DomName('WebGL2RenderingContextBase.MAX_VARYING_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VARYING_VECTORS = 0x8DFC;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_ATTRIBS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_ATTRIBS = 0x8869;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  @DomName('WebGL2RenderingContextBase.MAX_VERTEX_UNIFORM_VECTORS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  @DomName('WebGL2RenderingContextBase.MAX_VIEWPORT_DIMS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_VIEWPORT_DIMS = 0x0D3A;

  @DomName('WebGL2RenderingContextBase.MEDIUM_FLOAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_FLOAT = 0x8DF1;

  @DomName('WebGL2RenderingContextBase.MEDIUM_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MEDIUM_INT = 0x8DF4;

  @DomName('WebGL2RenderingContextBase.MIRRORED_REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIRRORED_REPEAT = 0x8370;

  @DomName('WebGL2RenderingContextBase.NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST = 0x2600;

  @DomName('WebGL2RenderingContextBase.NEAREST_MIPMAP_LINEAR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_LINEAR = 0x2702;

  @DomName('WebGL2RenderingContextBase.NEAREST_MIPMAP_NEAREST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEAREST_MIPMAP_NEAREST = 0x2700;

  @DomName('WebGL2RenderingContextBase.NEVER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NEVER = 0x0200;

  @DomName('WebGL2RenderingContextBase.NICEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NICEST = 0x1102;

  @DomName('WebGL2RenderingContextBase.NONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NONE = 0;

  @DomName('WebGL2RenderingContextBase.NOTEQUAL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NOTEQUAL = 0x0205;

  @DomName('WebGL2RenderingContextBase.NO_ERROR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int NO_ERROR = 0;

  @DomName('WebGL2RenderingContextBase.ONE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE = 1;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_CONSTANT_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_CONSTANT_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_DST_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_ALPHA = 0x0305;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_DST_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_DST_COLOR = 0x0307;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_ALPHA = 0x0303;

  @DomName('WebGL2RenderingContextBase.ONE_MINUS_SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ONE_MINUS_SRC_COLOR = 0x0301;

  @DomName('WebGL2RenderingContextBase.OUT_OF_MEMORY')
  @DocsEditable()
  @Experimental() // untriaged
  static const int OUT_OF_MEMORY = 0x0505;

  @DomName('WebGL2RenderingContextBase.PACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int PACK_ALIGNMENT = 0x0D05;

  @DomName('WebGL2RenderingContextBase.POINTS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POINTS = 0x0000;

  @DomName('WebGL2RenderingContextBase.POLYGON_OFFSET_FACTOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FACTOR = 0x8038;

  @DomName('WebGL2RenderingContextBase.POLYGON_OFFSET_FILL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_FILL = 0x8037;

  @DomName('WebGL2RenderingContextBase.POLYGON_OFFSET_UNITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int POLYGON_OFFSET_UNITS = 0x2A00;

  @DomName('WebGL2RenderingContextBase.RED_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RED_BITS = 0x0D52;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER = 0x8D41;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_ALPHA_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BINDING = 0x8CA7;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_BLUE_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_DEPTH_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_GREEN_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_HEIGHT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_HEIGHT = 0x8D43;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_INTERNAL_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_RED_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_RED_SIZE = 0x8D50;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_STENCIL_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  @DomName('WebGL2RenderingContextBase.RENDERBUFFER_WIDTH')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERBUFFER_WIDTH = 0x8D42;

  @DomName('WebGL2RenderingContextBase.RENDERER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RENDERER = 0x1F01;

  @DomName('WebGL2RenderingContextBase.REPEAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPEAT = 0x2901;

  @DomName('WebGL2RenderingContextBase.REPLACE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int REPLACE = 0x1E01;

  @DomName('WebGL2RenderingContextBase.RGB')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB = 0x1907;

  @DomName('WebGL2RenderingContextBase.RGB565')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB565 = 0x8D62;

  @DomName('WebGL2RenderingContextBase.RGB5_A1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGB5_A1 = 0x8057;

  @DomName('WebGL2RenderingContextBase.RGBA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA = 0x1908;

  @DomName('WebGL2RenderingContextBase.RGBA4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int RGBA4 = 0x8056;

  @DomName('WebGL2RenderingContextBase.SAMPLER_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_2D = 0x8B5E;

  @DomName('WebGL2RenderingContextBase.SAMPLER_CUBE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLER_CUBE = 0x8B60;

  @DomName('WebGL2RenderingContextBase.SAMPLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLES = 0x80A9;

  @DomName('WebGL2RenderingContextBase.SAMPLE_ALPHA_TO_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  @DomName('WebGL2RenderingContextBase.SAMPLE_BUFFERS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_BUFFERS = 0x80A8;

  @DomName('WebGL2RenderingContextBase.SAMPLE_COVERAGE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE = 0x80A0;

  @DomName('WebGL2RenderingContextBase.SAMPLE_COVERAGE_INVERT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_INVERT = 0x80AB;

  @DomName('WebGL2RenderingContextBase.SAMPLE_COVERAGE_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SAMPLE_COVERAGE_VALUE = 0x80AA;

  @DomName('WebGL2RenderingContextBase.SCISSOR_BOX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_BOX = 0x0C10;

  @DomName('WebGL2RenderingContextBase.SCISSOR_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SCISSOR_TEST = 0x0C11;

  @DomName('WebGL2RenderingContextBase.SHADER_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADER_TYPE = 0x8B4F;

  @DomName('WebGL2RenderingContextBase.SHADING_LANGUAGE_VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHADING_LANGUAGE_VERSION = 0x8B8C;

  @DomName('WebGL2RenderingContextBase.SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SHORT = 0x1402;

  @DomName('WebGL2RenderingContextBase.SRC_ALPHA')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA = 0x0302;

  @DomName('WebGL2RenderingContextBase.SRC_ALPHA_SATURATE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_ALPHA_SATURATE = 0x0308;

  @DomName('WebGL2RenderingContextBase.SRC_COLOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRC_COLOR = 0x0300;

  @DomName('WebGL2RenderingContextBase.STATIC_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STATIC_DRAW = 0x88E4;

  @DomName('WebGL2RenderingContextBase.STENCIL_ATTACHMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_ATTACHMENT = 0x8D20;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FAIL = 0x8801;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_FUNC = 0x8800;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_REF = 0x8CA3;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  @DomName('WebGL2RenderingContextBase.STENCIL_BACK_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BACK_WRITEMASK = 0x8CA5;

  @DomName('WebGL2RenderingContextBase.STENCIL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BITS = 0x0D57;

  @DomName('WebGL2RenderingContextBase.STENCIL_BUFFER_BIT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_BUFFER_BIT = 0x00000400;

  @DomName('WebGL2RenderingContextBase.STENCIL_CLEAR_VALUE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_CLEAR_VALUE = 0x0B91;

  @DomName('WebGL2RenderingContextBase.STENCIL_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FAIL = 0x0B94;

  @DomName('WebGL2RenderingContextBase.STENCIL_FUNC')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_FUNC = 0x0B92;

  @DomName('WebGL2RenderingContextBase.STENCIL_INDEX')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX = 0x1901;

  @DomName('WebGL2RenderingContextBase.STENCIL_INDEX8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_INDEX8 = 0x8D48;

  @DomName('WebGL2RenderingContextBase.STENCIL_PASS_DEPTH_FAIL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  @DomName('WebGL2RenderingContextBase.STENCIL_PASS_DEPTH_PASS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  @DomName('WebGL2RenderingContextBase.STENCIL_REF')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_REF = 0x0B97;

  @DomName('WebGL2RenderingContextBase.STENCIL_TEST')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_TEST = 0x0B90;

  @DomName('WebGL2RenderingContextBase.STENCIL_VALUE_MASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_VALUE_MASK = 0x0B93;

  @DomName('WebGL2RenderingContextBase.STENCIL_WRITEMASK')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STENCIL_WRITEMASK = 0x0B98;

  @DomName('WebGL2RenderingContextBase.STREAM_DRAW')
  @DocsEditable()
  @Experimental() // untriaged
  static const int STREAM_DRAW = 0x88E0;

  @DomName('WebGL2RenderingContextBase.SUBPIXEL_BITS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SUBPIXEL_BITS = 0x0D50;

  @DomName('WebGL2RenderingContextBase.TEXTURE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE = 0x1702;

  @DomName('WebGL2RenderingContextBase.TEXTURE0')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE0 = 0x84C0;

  @DomName('WebGL2RenderingContextBase.TEXTURE1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE1 = 0x84C1;

  @DomName('WebGL2RenderingContextBase.TEXTURE10')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE10 = 0x84CA;

  @DomName('WebGL2RenderingContextBase.TEXTURE11')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE11 = 0x84CB;

  @DomName('WebGL2RenderingContextBase.TEXTURE12')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE12 = 0x84CC;

  @DomName('WebGL2RenderingContextBase.TEXTURE13')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE13 = 0x84CD;

  @DomName('WebGL2RenderingContextBase.TEXTURE14')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE14 = 0x84CE;

  @DomName('WebGL2RenderingContextBase.TEXTURE15')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE15 = 0x84CF;

  @DomName('WebGL2RenderingContextBase.TEXTURE16')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE16 = 0x84D0;

  @DomName('WebGL2RenderingContextBase.TEXTURE17')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE17 = 0x84D1;

  @DomName('WebGL2RenderingContextBase.TEXTURE18')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE18 = 0x84D2;

  @DomName('WebGL2RenderingContextBase.TEXTURE19')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE19 = 0x84D3;

  @DomName('WebGL2RenderingContextBase.TEXTURE2')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE2 = 0x84C2;

  @DomName('WebGL2RenderingContextBase.TEXTURE20')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE20 = 0x84D4;

  @DomName('WebGL2RenderingContextBase.TEXTURE21')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE21 = 0x84D5;

  @DomName('WebGL2RenderingContextBase.TEXTURE22')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE22 = 0x84D6;

  @DomName('WebGL2RenderingContextBase.TEXTURE23')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE23 = 0x84D7;

  @DomName('WebGL2RenderingContextBase.TEXTURE24')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE24 = 0x84D8;

  @DomName('WebGL2RenderingContextBase.TEXTURE25')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE25 = 0x84D9;

  @DomName('WebGL2RenderingContextBase.TEXTURE26')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE26 = 0x84DA;

  @DomName('WebGL2RenderingContextBase.TEXTURE27')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE27 = 0x84DB;

  @DomName('WebGL2RenderingContextBase.TEXTURE28')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE28 = 0x84DC;

  @DomName('WebGL2RenderingContextBase.TEXTURE29')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE29 = 0x84DD;

  @DomName('WebGL2RenderingContextBase.TEXTURE3')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE3 = 0x84C3;

  @DomName('WebGL2RenderingContextBase.TEXTURE30')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE30 = 0x84DE;

  @DomName('WebGL2RenderingContextBase.TEXTURE31')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE31 = 0x84DF;

  @DomName('WebGL2RenderingContextBase.TEXTURE4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE4 = 0x84C4;

  @DomName('WebGL2RenderingContextBase.TEXTURE5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE5 = 0x84C5;

  @DomName('WebGL2RenderingContextBase.TEXTURE6')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE6 = 0x84C6;

  @DomName('WebGL2RenderingContextBase.TEXTURE7')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE7 = 0x84C7;

  @DomName('WebGL2RenderingContextBase.TEXTURE8')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE8 = 0x84C8;

  @DomName('WebGL2RenderingContextBase.TEXTURE9')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE9 = 0x84C9;

  @DomName('WebGL2RenderingContextBase.TEXTURE_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_2D = 0x0DE1;

  @DomName('WebGL2RenderingContextBase.TEXTURE_BINDING_2D')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_2D = 0x8069;

  @DomName('WebGL2RenderingContextBase.TEXTURE_BINDING_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP = 0x8513;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_NEGATIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_NEGATIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_NEGATIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_POSITIVE_X')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_POSITIVE_Y')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  @DomName('WebGL2RenderingContextBase.TEXTURE_CUBE_MAP_POSITIVE_Z')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  @DomName('WebGL2RenderingContextBase.TEXTURE_MAG_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MAG_FILTER = 0x2800;

  @DomName('WebGL2RenderingContextBase.TEXTURE_MIN_FILTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_MIN_FILTER = 0x2801;

  @DomName('WebGL2RenderingContextBase.TEXTURE_WRAP_S')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_S = 0x2802;

  @DomName('WebGL2RenderingContextBase.TEXTURE_WRAP_T')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TEXTURE_WRAP_T = 0x2803;

  @DomName('WebGL2RenderingContextBase.TRIANGLES')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLES = 0x0004;

  @DomName('WebGL2RenderingContextBase.TRIANGLE_FAN')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_FAN = 0x0006;

  @DomName('WebGL2RenderingContextBase.TRIANGLE_STRIP')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TRIANGLE_STRIP = 0x0005;

  @DomName('WebGL2RenderingContextBase.UNPACK_ALIGNMENT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_ALIGNMENT = 0x0CF5;

  @DomName('WebGL2RenderingContextBase.UNPACK_COLORSPACE_CONVERSION_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  @DomName('WebGL2RenderingContextBase.UNPACK_FLIP_Y_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_FLIP_Y_WEBGL = 0x9240;

  @DomName('WebGL2RenderingContextBase.UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_BYTE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_BYTE = 0x1401;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_INT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_INT = 0x1405;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_SHORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT = 0x1403;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_SHORT_4_4_4_4')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_SHORT_5_5_5_1')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  @DomName('WebGL2RenderingContextBase.UNSIGNED_SHORT_5_6_5')
  @DocsEditable()
  @Experimental() // untriaged
  static const int UNSIGNED_SHORT_5_6_5 = 0x8363;

  @DomName('WebGL2RenderingContextBase.VALIDATE_STATUS')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VALIDATE_STATUS = 0x8B83;

  @DomName('WebGL2RenderingContextBase.VENDOR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VENDOR = 0x1F00;

  @DomName('WebGL2RenderingContextBase.VERSION')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERSION = 0x1F02;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_ENABLED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_NORMALIZED')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_POINTER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_SIZE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_STRIDE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  @DomName('WebGL2RenderingContextBase.VERTEX_ATTRIB_ARRAY_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  @DomName('WebGL2RenderingContextBase.VERTEX_SHADER')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_SHADER = 0x8B31;

  @DomName('WebGL2RenderingContextBase.VIEWPORT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VIEWPORT = 0x0BA2;

  @DomName('WebGL2RenderingContextBase.ZERO')
  @DocsEditable()
  @Experimental() // untriaged
  static const int ZERO = 0;

  // From WebGLRenderingContextBase

  @DomName('WebGL2RenderingContextBase.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  final CanvasElement canvas;

  @DomName('WebGL2RenderingContextBase.activeTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void activeTexture(int texture) native;

  @DomName('WebGL2RenderingContextBase.attachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void attachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContextBase.bindBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindBuffer(int target, Buffer buffer) native;

  @DomName('WebGL2RenderingContextBase.bindFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindFramebuffer(int target, Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContextBase.bindRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContextBase.bindTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void bindTexture(int target, Texture texture) native;

  @DomName('WebGL2RenderingContextBase.blendEquation')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquation(int mode) native;

  @DomName('WebGL2RenderingContextBase.blendEquationSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  @DomName('WebGL2RenderingContextBase.blendFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFunc(int sfactor, int dfactor) native;

  @DomName('WebGL2RenderingContextBase.blendFuncSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  @DomName('WebGL2RenderingContextBase.bufferData')
  @DocsEditable()
  @Experimental() // untriaged
  void bufferData(int target, data, int usage) native;

  @DomName('WebGL2RenderingContextBase.checkFramebufferStatus')
  @DocsEditable()
  @Experimental() // untriaged
  int checkFramebufferStatus(int target) native;

  @DomName('WebGL2RenderingContextBase.compileShader')
  @DocsEditable()
  @Experimental() // untriaged
  void compileShader(Shader shader) native;

  @DomName('WebGL2RenderingContextBase.createBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Buffer createBuffer() native;

  @DomName('WebGL2RenderingContextBase.createFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Framebuffer createFramebuffer() native;

  @DomName('WebGL2RenderingContextBase.createProgram')
  @DocsEditable()
  @Experimental() // untriaged
  Program createProgram() native;

  @DomName('WebGL2RenderingContextBase.createRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  Renderbuffer createRenderbuffer() native;

  @DomName('WebGL2RenderingContextBase.createShader')
  @DocsEditable()
  @Experimental() // untriaged
  Shader createShader(int type) native;

  @DomName('WebGL2RenderingContextBase.createTexture')
  @DocsEditable()
  @Experimental() // untriaged
  Texture createTexture() native;

  @DomName('WebGL2RenderingContextBase.cullFace')
  @DocsEditable()
  @Experimental() // untriaged
  void cullFace(int mode) native;

  @DomName('WebGL2RenderingContextBase.deleteBuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteBuffer(Buffer buffer) native;

  @DomName('WebGL2RenderingContextBase.deleteFramebuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteFramebuffer(Framebuffer framebuffer) native;

  @DomName('WebGL2RenderingContextBase.deleteProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteProgram(Program program) native;

  @DomName('WebGL2RenderingContextBase.deleteRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteRenderbuffer(Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContextBase.deleteShader')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteShader(Shader shader) native;

  @DomName('WebGL2RenderingContextBase.deleteTexture')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteTexture(Texture texture) native;

  @DomName('WebGL2RenderingContextBase.depthFunc')
  @DocsEditable()
  @Experimental() // untriaged
  void depthFunc(int func) native;

  @DomName('WebGL2RenderingContextBase.detachShader')
  @DocsEditable()
  @Experimental() // untriaged
  void detachShader(Program program, Shader shader) native;

  @DomName('WebGL2RenderingContextBase.disable')
  @DocsEditable()
  @Experimental() // untriaged
  void disable(int cap) native;

  @DomName('WebGL2RenderingContextBase.enable')
  @DocsEditable()
  @Experimental() // untriaged
  void enable(int cap) native;

  @DomName('WebGL2RenderingContextBase.finish')
  @DocsEditable()
  @Experimental() // untriaged
  void finish() native;

  @DomName('WebGL2RenderingContextBase.flush')
  @DocsEditable()
  @Experimental() // untriaged
  void flush() native;

  @DomName('WebGL2RenderingContextBase.framebufferRenderbuffer')
  @DocsEditable()
  @Experimental() // untriaged
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) native;

  @DomName('WebGL2RenderingContextBase.frontFace')
  @DocsEditable()
  @Experimental() // untriaged
  void frontFace(int mode) native;

  @DomName('WebGL2RenderingContextBase.generateMipmap')
  @DocsEditable()
  @Experimental() // untriaged
  void generateMipmap(int target) native;

  @DomName('WebGL2RenderingContextBase.getAttachedShaders')
  @DocsEditable()
  @Experimental() // untriaged
  List<Shader> getAttachedShaders(Program program) native;

  @DomName('WebGL2RenderingContextBase.getBufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getBufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContextBase.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  Map getContextAttributes() {
    return convertNativeToDart_Dictionary(_getContextAttributes_1());
  }
  @JSName('getContextAttributes')
  @DomName('WebGL2RenderingContextBase.getContextAttributes')
  @DocsEditable()
  @Experimental() // untriaged
  _getContextAttributes_1() native;

  @DomName('WebGL2RenderingContextBase.getError')
  @DocsEditable()
  @Experimental() // untriaged
  int getError() native;

  @DomName('WebGL2RenderingContextBase.getExtension')
  @DocsEditable()
  @Experimental() // untriaged
  Object getExtension(String name) native;

  @DomName('WebGL2RenderingContextBase.getFramebufferAttachmentParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  @DomName('WebGL2RenderingContextBase.getParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getParameter(int pname) native;

  @DomName('WebGL2RenderingContextBase.getProgramInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getProgramInfoLog(Program program) native;

  @DomName('WebGL2RenderingContextBase.getProgramParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getProgramParameter(Program program, int pname) native;

  @DomName('WebGL2RenderingContextBase.getRenderbufferParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getRenderbufferParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContextBase.getShaderInfoLog')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderInfoLog(Shader shader) native;

  @DomName('WebGL2RenderingContextBase.getShaderParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getShaderParameter(Shader shader, int pname) native;

  @DomName('WebGL2RenderingContextBase.getShaderPrecisionFormat')
  @DocsEditable()
  @Experimental() // untriaged
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) native;

  @DomName('WebGL2RenderingContextBase.getShaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  String getShaderSource(Shader shader) native;

  @DomName('WebGL2RenderingContextBase.getSupportedExtensions')
  @DocsEditable()
  @Experimental() // untriaged
  List<String> getSupportedExtensions() native;

  @DomName('WebGL2RenderingContextBase.getTexParameter')
  @DocsEditable()
  @Experimental() // untriaged
  Object getTexParameter(int target, int pname) native;

  @DomName('WebGL2RenderingContextBase.getUniform')
  @DocsEditable()
  @Experimental() // untriaged
  Object getUniform(Program program, UniformLocation location) native;

  @DomName('WebGL2RenderingContextBase.getUniformLocation')
  @DocsEditable()
  @Experimental() // untriaged
  UniformLocation getUniformLocation(Program program, String name) native;

  @DomName('WebGL2RenderingContextBase.hint')
  @DocsEditable()
  @Experimental() // untriaged
  void hint(int target, int mode) native;

  @DomName('WebGL2RenderingContextBase.linkProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void linkProgram(Program program) native;

  @DomName('WebGL2RenderingContextBase.shaderSource')
  @DocsEditable()
  @Experimental() // untriaged
  void shaderSource(Shader shader, String string) native;

  @DomName('WebGL2RenderingContextBase.stencilOp')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOp(int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContextBase.stencilOpSeparate')
  @DocsEditable()
  @Experimental() // untriaged
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  @DomName('WebGL2RenderingContextBase.uniform1fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform1iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform1iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform2fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform2iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform2iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform3fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform3iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform3iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform4fv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4fv(UniformLocation location, Float32List v) native;

  @DomName('WebGL2RenderingContextBase.uniform4iv')
  @DocsEditable()
  @Experimental() // untriaged
  void uniform4iv(UniformLocation location, Int32List v) native;

  @DomName('WebGL2RenderingContextBase.useProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void useProgram(Program program) native;

  @DomName('WebGL2RenderingContextBase.validateProgram')
  @DocsEditable()
  @Experimental() // untriaged
  void validateProgram(Program program) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLActiveInfo')
@Unstable()
@Native("WebGLActiveInfo")
class ActiveInfo extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ActiveInfo._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLActiveInfo.name')
  @DocsEditable()
  final String name;

  @DomName('WebGLActiveInfo.size')
  @DocsEditable()
  final int size;

  @DomName('WebGLActiveInfo.type')
  @DocsEditable()
  final int type;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('ANGLEInstancedArrays')
@Experimental() // untriaged
@Native("ANGLEInstancedArrays")
class AngleInstancedArrays extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory AngleInstancedArrays._() { throw new UnsupportedError("Not supported"); }

  @DomName('ANGLEInstancedArrays.VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 0x88FE;

  @JSName('drawArraysInstancedANGLE')
  @DomName('ANGLEInstancedArrays.drawArraysInstancedANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void drawArraysInstancedAngle(int mode, int first, int count, int primcount) native;

  @JSName('drawElementsInstancedANGLE')
  @DomName('ANGLEInstancedArrays.drawElementsInstancedANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void drawElementsInstancedAngle(int mode, int count, int type, int offset, int primcount) native;

  @JSName('vertexAttribDivisorANGLE')
  @DomName('ANGLEInstancedArrays.vertexAttribDivisorANGLE')
  @DocsEditable()
  @Experimental() // untriaged
  void vertexAttribDivisorAngle(int index, int divisor) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLBuffer')
@Unstable()
@Native("WebGLBuffer")
class Buffer extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Buffer._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLCompressedTextureASTC')
@Experimental() // untriaged
@Native("WebGLCompressedTextureASTC")
class CompressedTextureAstc extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureAstc._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_10x10_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_10x10_KHR = 0x93BB;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_10x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_10x5_KHR = 0x93B8;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_10x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_10x6_KHR = 0x93B9;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_10x8_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_10x8_KHR = 0x93BA;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_12x10_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_12x10_KHR = 0x93BC;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_12x12_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_12x12_KHR = 0x93BD;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_4x4_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_4x4_KHR = 0x93B0;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_5x4_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_5x4_KHR = 0x93B1;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_5x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_5x5_KHR = 0x93B2;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_6x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_6x5_KHR = 0x93B3;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_6x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_6x6_KHR = 0x93B4;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_8x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_8x5_KHR = 0x93B5;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_8x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_8x6_KHR = 0x93B6;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_RGBA_ASTC_8x8_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGBA_ASTC_8x8_KHR = 0x93B7;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR = 0x93DB;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR = 0x93D8;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR = 0x93D9;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR = 0x93DA;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR = 0x93DC;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR = 0x93DD;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR = 0x93D0;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR = 0x93D1;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR = 0x93D2;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR = 0x93D3;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR = 0x93D4;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR = 0x93D5;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR = 0x93D6;

  @DomName('WebGLCompressedTextureASTC.COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR = 0x93D7;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLCompressedTextureATC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_atc/
@Experimental()
@Native("WebGLCompressedTextureATC")
class CompressedTextureAtc extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureAtc._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 0x8C93;

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 0x87EE;

  @DomName('WebGLCompressedTextureATC.COMPRESSED_RGB_ATC_WEBGL')
  @DocsEditable()
  static const int COMPRESSED_RGB_ATC_WEBGL = 0x8C92;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLCompressedTextureETC1')
@Experimental() // untriaged
@Native("WebGLCompressedTextureETC1")
class CompressedTextureETC1 extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureETC1._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLCompressedTextureETC1.COMPRESSED_RGB_ETC1_WEBGL')
  @DocsEditable()
  @Experimental() // untriaged
  static const int COMPRESSED_RGB_ETC1_WEBGL = 0x8D64;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLCompressedTexturePVRTC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_pvrtc/
@Experimental() // experimental
@Native("WebGLCompressedTexturePVRTC")
class CompressedTexturePvrtc extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory CompressedTexturePvrtc._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGBA_PVRTC_2BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 0x8C03;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGBA_PVRTC_4BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 0x8C02;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGB_PVRTC_2BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 0x8C01;

  @DomName('WebGLCompressedTexturePVRTC.COMPRESSED_RGB_PVRTC_4BPPV1_IMG')
  @DocsEditable()
  static const int COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 0x8C00;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLCompressedTextureS3TC')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_compressed_texture_s3tc/
@Experimental() // experimental
@Native("WebGLCompressedTextureS3TC")
class CompressedTextureS3TC extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory CompressedTextureS3TC._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT1_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT1_EXT = 0x83F1;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT3_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT3_EXT = 0x83F2;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGBA_S3TC_DXT5_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGBA_S3TC_DXT5_EXT = 0x83F3;

  @DomName('WebGLCompressedTextureS3TC.COMPRESSED_RGB_S3TC_DXT1_EXT')
  @DocsEditable()
  static const int COMPRESSED_RGB_S3TC_DXT1_EXT = 0x83F0;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLContextEvent')
@Unstable()
@Native("WebGLContextEvent")
class ContextEvent extends Event {
  // To suppress missing implicit constructor warnings.
  factory ContextEvent._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLContextEvent.WebGLContextEvent')
  @DocsEditable()
  factory ContextEvent(String type, [Map eventInit]) {
    if (eventInit != null) {
      var eventInit_1 = convertDartToNative_Dictionary(eventInit);
      return ContextEvent._create_1(type, eventInit_1);
    }
    return ContextEvent._create_2(type);
  }
  static ContextEvent _create_1(type, eventInit) => JS('ContextEvent', 'new WebGLContextEvent(#,#)', type, eventInit);
  static ContextEvent _create_2(type) => JS('ContextEvent', 'new WebGLContextEvent(#)', type);

  @DomName('WebGLContextEvent.statusMessage')
  @DocsEditable()
  final String statusMessage;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLDebugRendererInfo')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_debug_renderer_info/
@Experimental() // experimental
@Native("WebGLDebugRendererInfo")
class DebugRendererInfo extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory DebugRendererInfo._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLDebugRendererInfo.UNMASKED_RENDERER_WEBGL')
  @DocsEditable()
  static const int UNMASKED_RENDERER_WEBGL = 0x9246;

  @DomName('WebGLDebugRendererInfo.UNMASKED_VENDOR_WEBGL')
  @DocsEditable()
  static const int UNMASKED_VENDOR_WEBGL = 0x9245;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLDebugShaders')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_debug_shaders/
@Experimental() // experimental
@Native("WebGLDebugShaders")
class DebugShaders extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory DebugShaders._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLDebugShaders.getTranslatedShaderSource')
  @DocsEditable()
  String getTranslatedShaderSource(Shader shader) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLDepthTexture')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_depth_texture/
@Experimental() // experimental
@Native("WebGLDepthTexture")
class DepthTexture extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory DepthTexture._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLDepthTexture.UNSIGNED_INT_24_8_WEBGL')
  @DocsEditable()
  static const int UNSIGNED_INT_24_8_WEBGL = 0x84FA;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLDrawBuffers')
// http://www.khronos.org/registry/webgl/specs/latest/
@Experimental() // stable
@Native("WebGLDrawBuffers")
class DrawBuffers extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory DrawBuffers._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT0_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT0_WEBGL = 0x8CE0;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT10_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT10_WEBGL = 0x8CEA;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT11_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT11_WEBGL = 0x8CEB;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT12_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT12_WEBGL = 0x8CEC;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT13_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT13_WEBGL = 0x8CED;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT14_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT14_WEBGL = 0x8CEE;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT15_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT15_WEBGL = 0x8CEF;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT1_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT1_WEBGL = 0x8CE1;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT2_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT2_WEBGL = 0x8CE2;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT3_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT3_WEBGL = 0x8CE3;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT4_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT4_WEBGL = 0x8CE4;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT5_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT5_WEBGL = 0x8CE5;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT6_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT6_WEBGL = 0x8CE6;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT7_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT7_WEBGL = 0x8CE7;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT8_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT8_WEBGL = 0x8CE8;

  @DomName('WebGLDrawBuffers.COLOR_ATTACHMENT9_WEBGL')
  @DocsEditable()
  static const int COLOR_ATTACHMENT9_WEBGL = 0x8CE9;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER0_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER0_WEBGL = 0x8825;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER10_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER10_WEBGL = 0x882F;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER11_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER11_WEBGL = 0x8830;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER12_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER12_WEBGL = 0x8831;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER13_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER13_WEBGL = 0x8832;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER14_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER14_WEBGL = 0x8833;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER15_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER15_WEBGL = 0x8834;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER1_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER1_WEBGL = 0x8826;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER2_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER2_WEBGL = 0x8827;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER3_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER3_WEBGL = 0x8828;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER4_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER4_WEBGL = 0x8829;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER5_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER5_WEBGL = 0x882A;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER6_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER6_WEBGL = 0x882B;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER7_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER7_WEBGL = 0x882C;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER8_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER8_WEBGL = 0x882D;

  @DomName('WebGLDrawBuffers.DRAW_BUFFER9_WEBGL')
  @DocsEditable()
  static const int DRAW_BUFFER9_WEBGL = 0x882E;

  @DomName('WebGLDrawBuffers.MAX_COLOR_ATTACHMENTS_WEBGL')
  @DocsEditable()
  static const int MAX_COLOR_ATTACHMENTS_WEBGL = 0x8CDF;

  @DomName('WebGLDrawBuffers.MAX_DRAW_BUFFERS_WEBGL')
  @DocsEditable()
  static const int MAX_DRAW_BUFFERS_WEBGL = 0x8824;

  @JSName('drawBuffersWEBGL')
  @DomName('WebGLDrawBuffers.drawBuffersWEBGL')
  @DocsEditable()
  void drawBuffersWebgl(List<int> buffers) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTsRGB')
@Experimental() // untriaged
@Native("EXTsRGB")
class EXTsRgb extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory EXTsRgb._() { throw new UnsupportedError("Not supported"); }

  @DomName('EXTsRGB.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 0x8210;

  @DomName('EXTsRGB.SRGB8_ALPHA8_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB8_ALPHA8_EXT = 0x8C43;

  @DomName('EXTsRGB.SRGB_ALPHA_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB_ALPHA_EXT = 0x8C42;

  @DomName('EXTsRGB.SRGB_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int SRGB_EXT = 0x8C40;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTBlendMinMax')
@Experimental() // untriaged
@Native("EXTBlendMinMax")
class ExtBlendMinMax extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ExtBlendMinMax._() { throw new UnsupportedError("Not supported"); }

  @DomName('EXTBlendMinMax.MAX_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MAX_EXT = 0x8008;

  @DomName('EXTBlendMinMax.MIN_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int MIN_EXT = 0x8007;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTDisjointTimerQuery')
@Experimental() // untriaged
@Native("EXTDisjointTimerQuery")
class ExtDisjointTimerQuery extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ExtDisjointTimerQuery._() { throw new UnsupportedError("Not supported"); }

  @DomName('EXTDisjointTimerQuery.CURRENT_QUERY_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int CURRENT_QUERY_EXT = 0x8865;

  @DomName('EXTDisjointTimerQuery.GPU_DISJOINT_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int GPU_DISJOINT_EXT = 0x8FBB;

  @DomName('EXTDisjointTimerQuery.QUERY_COUNTER_BITS_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int QUERY_COUNTER_BITS_EXT = 0x8864;

  @DomName('EXTDisjointTimerQuery.QUERY_RESULT_AVAILABLE_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int QUERY_RESULT_AVAILABLE_EXT = 0x8867;

  @DomName('EXTDisjointTimerQuery.QUERY_RESULT_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int QUERY_RESULT_EXT = 0x8866;

  @DomName('EXTDisjointTimerQuery.TIMESTAMP_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TIMESTAMP_EXT = 0x8E28;

  @DomName('EXTDisjointTimerQuery.TIME_ELAPSED_EXT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int TIME_ELAPSED_EXT = 0x88BF;

  @JSName('beginQueryEXT')
  @DomName('EXTDisjointTimerQuery.beginQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  void beginQueryExt(int target, TimerQueryExt query) native;

  @JSName('createQueryEXT')
  @DomName('EXTDisjointTimerQuery.createQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  TimerQueryExt createQueryExt() native;

  @JSName('deleteQueryEXT')
  @DomName('EXTDisjointTimerQuery.deleteQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  void deleteQueryExt(TimerQueryExt query) native;

  @JSName('endQueryEXT')
  @DomName('EXTDisjointTimerQuery.endQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  void endQueryExt(int target) native;

  @JSName('getQueryEXT')
  @DomName('EXTDisjointTimerQuery.getQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  Object getQueryExt(int target, int pname) native;

  @JSName('getQueryObjectEXT')
  @DomName('EXTDisjointTimerQuery.getQueryObjectEXT')
  @DocsEditable()
  @Experimental() // untriaged
  Object getQueryObjectExt(TimerQueryExt query, int pname) native;

  @JSName('isQueryEXT')
  @DomName('EXTDisjointTimerQuery.isQueryEXT')
  @DocsEditable()
  @Experimental() // untriaged
  bool isQueryExt(TimerQueryExt query) native;

  @JSName('queryCounterEXT')
  @DomName('EXTDisjointTimerQuery.queryCounterEXT')
  @DocsEditable()
  @Experimental() // untriaged
  void queryCounterExt(TimerQueryExt query, int target) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTFragDepth')
// http://www.khronos.org/registry/webgl/extensions/EXT_frag_depth/
@Experimental()
@Native("EXTFragDepth")
class ExtFragDepth extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ExtFragDepth._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTShaderTextureLOD')
@Experimental() // untriaged
@Native("EXTShaderTextureLOD")
class ExtShaderTextureLod extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ExtShaderTextureLod._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('EXTTextureFilterAnisotropic')
// http://www.khronos.org/registry/webgl/extensions/EXT_texture_filter_anisotropic/
@Experimental()
@Native("EXTTextureFilterAnisotropic")
class ExtTextureFilterAnisotropic extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ExtTextureFilterAnisotropic._() { throw new UnsupportedError("Not supported"); }

  @DomName('EXTTextureFilterAnisotropic.MAX_TEXTURE_MAX_ANISOTROPY_EXT')
  @DocsEditable()
  static const int MAX_TEXTURE_MAX_ANISOTROPY_EXT = 0x84FF;

  @DomName('EXTTextureFilterAnisotropic.TEXTURE_MAX_ANISOTROPY_EXT')
  @DocsEditable()
  static const int TEXTURE_MAX_ANISOTROPY_EXT = 0x84FE;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLFramebuffer')
@Unstable()
@Native("WebGLFramebuffer")
class Framebuffer extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Framebuffer._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLLoseContext')
// http://www.khronos.org/registry/webgl/extensions/WEBGL_lose_context/
@Experimental()
@Native("WebGLLoseContext,WebGLExtensionLoseContext")
class LoseContext extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory LoseContext._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLLoseContext.loseContext')
  @DocsEditable()
  void loseContext() native;

  @DomName('WebGLLoseContext.restoreContext')
  @DocsEditable()
  void restoreContext() native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESElementIndexUint')
// http://www.khronos.org/registry/webgl/extensions/OES_element_index_uint/
@Experimental() // experimental
@Native("OESElementIndexUint")
class OesElementIndexUint extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesElementIndexUint._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESStandardDerivatives')
// http://www.khronos.org/registry/webgl/extensions/OES_standard_derivatives/
@Experimental() // experimental
@Native("OESStandardDerivatives")
class OesStandardDerivatives extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesStandardDerivatives._() { throw new UnsupportedError("Not supported"); }

  @DomName('OESStandardDerivatives.FRAGMENT_SHADER_DERIVATIVE_HINT_OES')
  @DocsEditable()
  static const int FRAGMENT_SHADER_DERIVATIVE_HINT_OES = 0x8B8B;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESTextureFloat')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_float/
@Experimental() // experimental
@Native("OESTextureFloat")
class OesTextureFloat extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesTextureFloat._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESTextureFloatLinear')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_float_linear/
@Experimental()
@Native("OESTextureFloatLinear")
class OesTextureFloatLinear extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesTextureFloatLinear._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESTextureHalfFloat')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_half_float/
@Experimental() // experimental
@Native("OESTextureHalfFloat")
class OesTextureHalfFloat extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesTextureHalfFloat._() { throw new UnsupportedError("Not supported"); }

  @DomName('OESTextureHalfFloat.HALF_FLOAT_OES')
  @DocsEditable()
  static const int HALF_FLOAT_OES = 0x8D61;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESTextureHalfFloatLinear')
// http://www.khronos.org/registry/webgl/extensions/OES_texture_half_float_linear/
@Experimental()
@Native("OESTextureHalfFloatLinear")
class OesTextureHalfFloatLinear extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesTextureHalfFloatLinear._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('OESVertexArrayObject')
// http://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/
@Experimental() // experimental
@Native("OESVertexArrayObject")
class OesVertexArrayObject extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory OesVertexArrayObject._() { throw new UnsupportedError("Not supported"); }

  @DomName('OESVertexArrayObject.VERTEX_ARRAY_BINDING_OES')
  @DocsEditable()
  static const int VERTEX_ARRAY_BINDING_OES = 0x85B5;

  @JSName('bindVertexArrayOES')
  @DomName('OESVertexArrayObject.bindVertexArrayOES')
  @DocsEditable()
  void bindVertexArray(VertexArrayObject arrayObject) native;

  @JSName('createVertexArrayOES')
  @DomName('OESVertexArrayObject.createVertexArrayOES')
  @DocsEditable()
  VertexArrayObject createVertexArray() native;

  @JSName('deleteVertexArrayOES')
  @DomName('OESVertexArrayObject.deleteVertexArrayOES')
  @DocsEditable()
  void deleteVertexArray(VertexArrayObject arrayObject) native;

  @JSName('isVertexArrayOES')
  @DomName('OESVertexArrayObject.isVertexArrayOES')
  @DocsEditable()
  bool isVertexArray(VertexArrayObject arrayObject) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLProgram')
@Unstable()
@Native("WebGLProgram")
class Program extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Program._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLQuery')
@Experimental() // untriaged
@Native("WebGLQuery")
class Query extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Query._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLRenderbuffer')
@Unstable()
@Native("WebGLRenderbuffer")
class Renderbuffer extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Renderbuffer._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DomName('WebGLRenderingContext')
@SupportedBrowser(SupportedBrowser.CHROME)
@SupportedBrowser(SupportedBrowser.FIREFOX)
@Experimental()
@Unstable()
@Native("WebGLRenderingContext")
class RenderingContext extends Interceptor implements CanvasRenderingContext {
  // To suppress missing implicit constructor warnings.
  factory RenderingContext._() { throw new UnsupportedError("Not supported"); }

  /// Checks if this type is supported on the current platform.
  static bool get supported => JS('bool', '!!(window.WebGLRenderingContext)');

  @DomName('WebGLRenderingContext.getBufferParameter')
  @DocsEditable()
  @Creates('int|Null')
  @Returns('int|Null')
  Object getBufferParameter(int target, int pname) native;

  @DomName('WebGLRenderingContext.getExtension')
  @DocsEditable()
  Object getExtension(String name) native;

  @DomName('WebGLRenderingContext.getFramebufferAttachmentParameter')
  @DocsEditable()
  @Creates('int|Renderbuffer|Texture|Null')
  @Returns('int|Renderbuffer|Texture|Null')
  Object getFramebufferAttachmentParameter(int target, int attachment, int pname) native;

  @DomName('WebGLRenderingContext.getParameter')
  @DocsEditable()
  @Creates('Null|num|String|bool|JSExtendableArray|NativeFloat32List|NativeInt32List|NativeUint32List|Framebuffer|Renderbuffer|Texture')
  @Returns('Null|num|String|bool|JSExtendableArray|NativeFloat32List|NativeInt32List|NativeUint32List|Framebuffer|Renderbuffer|Texture')
  Object getParameter(int pname) native;

  @DomName('WebGLRenderingContext.getProgramParameter')
  @DocsEditable()
  @Creates('int|bool|Null')
  @Returns('int|bool|Null')
  Object getProgramParameter(Program program, int pname) native;

  @DomName('WebGLRenderingContext.getRenderbufferParameter')
  @DocsEditable()
  @Creates('int|Null')
  @Returns('int|Null')
  Object getRenderbufferParameter(int target, int pname) native;

  @DomName('WebGLRenderingContext.getShaderParameter')
  @DocsEditable()
  @Creates('int|bool|Null')
  @Returns('int|bool|Null')
  Object getShaderParameter(Shader shader, int pname) native;

  @DomName('WebGLRenderingContext.getTexParameter')
  @DocsEditable()
  @Creates('int|Null')
  @Returns('int|Null')
  Object getTexParameter(int target, int pname) native;

  @DomName('WebGLRenderingContext.getVertexAttrib')
  @DocsEditable()
  @Creates('Null|num|bool|NativeFloat32List|Buffer')
  @Returns('Null|num|bool|NativeFloat32List|Buffer')
  Object getVertexAttrib(int index, int pname) native;

  @DomName('WebGLRenderingContext.ACTIVE_ATTRIBUTES')
  @DocsEditable()
  static const int ACTIVE_ATTRIBUTES = 0x8B89;

  @DomName('WebGLRenderingContext.ACTIVE_TEXTURE')
  @DocsEditable()
  static const int ACTIVE_TEXTURE = 0x84E0;

  @DomName('WebGLRenderingContext.ACTIVE_UNIFORMS')
  @DocsEditable()
  static const int ACTIVE_UNIFORMS = 0x8B86;

  @DomName('WebGLRenderingContext.ALIASED_LINE_WIDTH_RANGE')
  @DocsEditable()
  static const int ALIASED_LINE_WIDTH_RANGE = 0x846E;

  @DomName('WebGLRenderingContext.ALIASED_POINT_SIZE_RANGE')
  @DocsEditable()
  static const int ALIASED_POINT_SIZE_RANGE = 0x846D;

  @DomName('WebGLRenderingContext.ALPHA')
  @DocsEditable()
  static const int ALPHA = 0x1906;

  @DomName('WebGLRenderingContext.ALPHA_BITS')
  @DocsEditable()
  static const int ALPHA_BITS = 0x0D55;

  @DomName('WebGLRenderingContext.ALWAYS')
  @DocsEditable()
  static const int ALWAYS = 0x0207;

  @DomName('WebGLRenderingContext.ARRAY_BUFFER')
  @DocsEditable()
  static const int ARRAY_BUFFER = 0x8892;

  @DomName('WebGLRenderingContext.ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int ARRAY_BUFFER_BINDING = 0x8894;

  @DomName('WebGLRenderingContext.ATTACHED_SHADERS')
  @DocsEditable()
  static const int ATTACHED_SHADERS = 0x8B85;

  @DomName('WebGLRenderingContext.BACK')
  @DocsEditable()
  static const int BACK = 0x0405;

  @DomName('WebGLRenderingContext.BLEND')
  @DocsEditable()
  static const int BLEND = 0x0BE2;

  @DomName('WebGLRenderingContext.BLEND_COLOR')
  @DocsEditable()
  static const int BLEND_COLOR = 0x8005;

  @DomName('WebGLRenderingContext.BLEND_DST_ALPHA')
  @DocsEditable()
  static const int BLEND_DST_ALPHA = 0x80CA;

  @DomName('WebGLRenderingContext.BLEND_DST_RGB')
  @DocsEditable()
  static const int BLEND_DST_RGB = 0x80C8;

  @DomName('WebGLRenderingContext.BLEND_EQUATION')
  @DocsEditable()
  static const int BLEND_EQUATION = 0x8009;

  @DomName('WebGLRenderingContext.BLEND_EQUATION_ALPHA')
  @DocsEditable()
  static const int BLEND_EQUATION_ALPHA = 0x883D;

  @DomName('WebGLRenderingContext.BLEND_EQUATION_RGB')
  @DocsEditable()
  static const int BLEND_EQUATION_RGB = 0x8009;

  @DomName('WebGLRenderingContext.BLEND_SRC_ALPHA')
  @DocsEditable()
  static const int BLEND_SRC_ALPHA = 0x80CB;

  @DomName('WebGLRenderingContext.BLEND_SRC_RGB')
  @DocsEditable()
  static const int BLEND_SRC_RGB = 0x80C9;

  @DomName('WebGLRenderingContext.BLUE_BITS')
  @DocsEditable()
  static const int BLUE_BITS = 0x0D54;

  @DomName('WebGLRenderingContext.BOOL')
  @DocsEditable()
  static const int BOOL = 0x8B56;

  @DomName('WebGLRenderingContext.BOOL_VEC2')
  @DocsEditable()
  static const int BOOL_VEC2 = 0x8B57;

  @DomName('WebGLRenderingContext.BOOL_VEC3')
  @DocsEditable()
  static const int BOOL_VEC3 = 0x8B58;

  @DomName('WebGLRenderingContext.BOOL_VEC4')
  @DocsEditable()
  static const int BOOL_VEC4 = 0x8B59;

  @DomName('WebGLRenderingContext.BROWSER_DEFAULT_WEBGL')
  @DocsEditable()
  static const int BROWSER_DEFAULT_WEBGL = 0x9244;

  @DomName('WebGLRenderingContext.BUFFER_SIZE')
  @DocsEditable()
  static const int BUFFER_SIZE = 0x8764;

  @DomName('WebGLRenderingContext.BUFFER_USAGE')
  @DocsEditable()
  static const int BUFFER_USAGE = 0x8765;

  @DomName('WebGLRenderingContext.BYTE')
  @DocsEditable()
  static const int BYTE = 0x1400;

  @DomName('WebGLRenderingContext.CCW')
  @DocsEditable()
  static const int CCW = 0x0901;

  @DomName('WebGLRenderingContext.CLAMP_TO_EDGE')
  @DocsEditable()
  static const int CLAMP_TO_EDGE = 0x812F;

  @DomName('WebGLRenderingContext.COLOR_ATTACHMENT0')
  @DocsEditable()
  static const int COLOR_ATTACHMENT0 = 0x8CE0;

  @DomName('WebGLRenderingContext.COLOR_BUFFER_BIT')
  @DocsEditable()
  static const int COLOR_BUFFER_BIT = 0x00004000;

  @DomName('WebGLRenderingContext.COLOR_CLEAR_VALUE')
  @DocsEditable()
  static const int COLOR_CLEAR_VALUE = 0x0C22;

  @DomName('WebGLRenderingContext.COLOR_WRITEMASK')
  @DocsEditable()
  static const int COLOR_WRITEMASK = 0x0C23;

  @DomName('WebGLRenderingContext.COMPILE_STATUS')
  @DocsEditable()
  static const int COMPILE_STATUS = 0x8B81;

  @DomName('WebGLRenderingContext.COMPRESSED_TEXTURE_FORMATS')
  @DocsEditable()
  static const int COMPRESSED_TEXTURE_FORMATS = 0x86A3;

  @DomName('WebGLRenderingContext.CONSTANT_ALPHA')
  @DocsEditable()
  static const int CONSTANT_ALPHA = 0x8003;

  @DomName('WebGLRenderingContext.CONSTANT_COLOR')
  @DocsEditable()
  static const int CONSTANT_COLOR = 0x8001;

  @DomName('WebGLRenderingContext.CONTEXT_LOST_WEBGL')
  @DocsEditable()
  static const int CONTEXT_LOST_WEBGL = 0x9242;

  @DomName('WebGLRenderingContext.CULL_FACE')
  @DocsEditable()
  static const int CULL_FACE = 0x0B44;

  @DomName('WebGLRenderingContext.CULL_FACE_MODE')
  @DocsEditable()
  static const int CULL_FACE_MODE = 0x0B45;

  @DomName('WebGLRenderingContext.CURRENT_PROGRAM')
  @DocsEditable()
  static const int CURRENT_PROGRAM = 0x8B8D;

  @DomName('WebGLRenderingContext.CURRENT_VERTEX_ATTRIB')
  @DocsEditable()
  static const int CURRENT_VERTEX_ATTRIB = 0x8626;

  @DomName('WebGLRenderingContext.CW')
  @DocsEditable()
  static const int CW = 0x0900;

  @DomName('WebGLRenderingContext.DECR')
  @DocsEditable()
  static const int DECR = 0x1E03;

  @DomName('WebGLRenderingContext.DECR_WRAP')
  @DocsEditable()
  static const int DECR_WRAP = 0x8508;

  @DomName('WebGLRenderingContext.DELETE_STATUS')
  @DocsEditable()
  static const int DELETE_STATUS = 0x8B80;

  @DomName('WebGLRenderingContext.DEPTH_ATTACHMENT')
  @DocsEditable()
  static const int DEPTH_ATTACHMENT = 0x8D00;

  @DomName('WebGLRenderingContext.DEPTH_BITS')
  @DocsEditable()
  static const int DEPTH_BITS = 0x0D56;

  @DomName('WebGLRenderingContext.DEPTH_BUFFER_BIT')
  @DocsEditable()
  static const int DEPTH_BUFFER_BIT = 0x00000100;

  @DomName('WebGLRenderingContext.DEPTH_CLEAR_VALUE')
  @DocsEditable()
  static const int DEPTH_CLEAR_VALUE = 0x0B73;

  @DomName('WebGLRenderingContext.DEPTH_COMPONENT')
  @DocsEditable()
  static const int DEPTH_COMPONENT = 0x1902;

  @DomName('WebGLRenderingContext.DEPTH_COMPONENT16')
  @DocsEditable()
  static const int DEPTH_COMPONENT16 = 0x81A5;

  @DomName('WebGLRenderingContext.DEPTH_FUNC')
  @DocsEditable()
  static const int DEPTH_FUNC = 0x0B74;

  @DomName('WebGLRenderingContext.DEPTH_RANGE')
  @DocsEditable()
  static const int DEPTH_RANGE = 0x0B70;

  @DomName('WebGLRenderingContext.DEPTH_STENCIL')
  @DocsEditable()
  static const int DEPTH_STENCIL = 0x84F9;

  @DomName('WebGLRenderingContext.DEPTH_STENCIL_ATTACHMENT')
  @DocsEditable()
  static const int DEPTH_STENCIL_ATTACHMENT = 0x821A;

  @DomName('WebGLRenderingContext.DEPTH_TEST')
  @DocsEditable()
  static const int DEPTH_TEST = 0x0B71;

  @DomName('WebGLRenderingContext.DEPTH_WRITEMASK')
  @DocsEditable()
  static const int DEPTH_WRITEMASK = 0x0B72;

  @DomName('WebGLRenderingContext.DITHER')
  @DocsEditable()
  static const int DITHER = 0x0BD0;

  @DomName('WebGLRenderingContext.DONT_CARE')
  @DocsEditable()
  static const int DONT_CARE = 0x1100;

  @DomName('WebGLRenderingContext.DST_ALPHA')
  @DocsEditable()
  static const int DST_ALPHA = 0x0304;

  @DomName('WebGLRenderingContext.DST_COLOR')
  @DocsEditable()
  static const int DST_COLOR = 0x0306;

  @DomName('WebGLRenderingContext.DYNAMIC_DRAW')
  @DocsEditable()
  static const int DYNAMIC_DRAW = 0x88E8;

  @DomName('WebGLRenderingContext.ELEMENT_ARRAY_BUFFER')
  @DocsEditable()
  static const int ELEMENT_ARRAY_BUFFER = 0x8893;

  @DomName('WebGLRenderingContext.ELEMENT_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int ELEMENT_ARRAY_BUFFER_BINDING = 0x8895;

  @DomName('WebGLRenderingContext.EQUAL')
  @DocsEditable()
  static const int EQUAL = 0x0202;

  @DomName('WebGLRenderingContext.FASTEST')
  @DocsEditable()
  static const int FASTEST = 0x1101;

  @DomName('WebGLRenderingContext.FLOAT')
  @DocsEditable()
  static const int FLOAT = 0x1406;

  @DomName('WebGLRenderingContext.FLOAT_MAT2')
  @DocsEditable()
  static const int FLOAT_MAT2 = 0x8B5A;

  @DomName('WebGLRenderingContext.FLOAT_MAT3')
  @DocsEditable()
  static const int FLOAT_MAT3 = 0x8B5B;

  @DomName('WebGLRenderingContext.FLOAT_MAT4')
  @DocsEditable()
  static const int FLOAT_MAT4 = 0x8B5C;

  @DomName('WebGLRenderingContext.FLOAT_VEC2')
  @DocsEditable()
  static const int FLOAT_VEC2 = 0x8B50;

  @DomName('WebGLRenderingContext.FLOAT_VEC3')
  @DocsEditable()
  static const int FLOAT_VEC3 = 0x8B51;

  @DomName('WebGLRenderingContext.FLOAT_VEC4')
  @DocsEditable()
  static const int FLOAT_VEC4 = 0x8B52;

  @DomName('WebGLRenderingContext.FRAGMENT_SHADER')
  @DocsEditable()
  static const int FRAGMENT_SHADER = 0x8B30;

  @DomName('WebGLRenderingContext.FRAMEBUFFER')
  @DocsEditable()
  static const int FRAMEBUFFER = 0x8D40;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 0x8CD1;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 0x8CD0;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 0x8CD3;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
  @DocsEditable()
  static const int FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 0x8CD2;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_BINDING')
  @DocsEditable()
  static const int FRAMEBUFFER_BINDING = 0x8CA6;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_COMPLETE')
  @DocsEditable()
  static const int FRAMEBUFFER_COMPLETE = 0x8CD5;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 0x8CD6;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 0x8CD9;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
  @DocsEditable()
  static const int FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 0x8CD7;

  @DomName('WebGLRenderingContext.FRAMEBUFFER_UNSUPPORTED')
  @DocsEditable()
  static const int FRAMEBUFFER_UNSUPPORTED = 0x8CDD;

  @DomName('WebGLRenderingContext.FRONT')
  @DocsEditable()
  static const int FRONT = 0x0404;

  @DomName('WebGLRenderingContext.FRONT_AND_BACK')
  @DocsEditable()
  static const int FRONT_AND_BACK = 0x0408;

  @DomName('WebGLRenderingContext.FRONT_FACE')
  @DocsEditable()
  static const int FRONT_FACE = 0x0B46;

  @DomName('WebGLRenderingContext.FUNC_ADD')
  @DocsEditable()
  static const int FUNC_ADD = 0x8006;

  @DomName('WebGLRenderingContext.FUNC_REVERSE_SUBTRACT')
  @DocsEditable()
  static const int FUNC_REVERSE_SUBTRACT = 0x800B;

  @DomName('WebGLRenderingContext.FUNC_SUBTRACT')
  @DocsEditable()
  static const int FUNC_SUBTRACT = 0x800A;

  @DomName('WebGLRenderingContext.GENERATE_MIPMAP_HINT')
  @DocsEditable()
  static const int GENERATE_MIPMAP_HINT = 0x8192;

  @DomName('WebGLRenderingContext.GEQUAL')
  @DocsEditable()
  static const int GEQUAL = 0x0206;

  @DomName('WebGLRenderingContext.GREATER')
  @DocsEditable()
  static const int GREATER = 0x0204;

  @DomName('WebGLRenderingContext.GREEN_BITS')
  @DocsEditable()
  static const int GREEN_BITS = 0x0D53;

  @DomName('WebGLRenderingContext.HIGH_FLOAT')
  @DocsEditable()
  static const int HIGH_FLOAT = 0x8DF2;

  @DomName('WebGLRenderingContext.HIGH_INT')
  @DocsEditable()
  static const int HIGH_INT = 0x8DF5;

  @DomName('WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_FORMAT')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_FORMAT = 0x8B9B;

  @DomName('WebGLRenderingContext.IMPLEMENTATION_COLOR_READ_TYPE')
  @DocsEditable()
  @Experimental() // untriaged
  static const int IMPLEMENTATION_COLOR_READ_TYPE = 0x8B9A;

  @DomName('WebGLRenderingContext.INCR')
  @DocsEditable()
  static const int INCR = 0x1E02;

  @DomName('WebGLRenderingContext.INCR_WRAP')
  @DocsEditable()
  static const int INCR_WRAP = 0x8507;

  @DomName('WebGLRenderingContext.INT')
  @DocsEditable()
  static const int INT = 0x1404;

  @DomName('WebGLRenderingContext.INT_VEC2')
  @DocsEditable()
  static const int INT_VEC2 = 0x8B53;

  @DomName('WebGLRenderingContext.INT_VEC3')
  @DocsEditable()
  static const int INT_VEC3 = 0x8B54;

  @DomName('WebGLRenderingContext.INT_VEC4')
  @DocsEditable()
  static const int INT_VEC4 = 0x8B55;

  @DomName('WebGLRenderingContext.INVALID_ENUM')
  @DocsEditable()
  static const int INVALID_ENUM = 0x0500;

  @DomName('WebGLRenderingContext.INVALID_FRAMEBUFFER_OPERATION')
  @DocsEditable()
  static const int INVALID_FRAMEBUFFER_OPERATION = 0x0506;

  @DomName('WebGLRenderingContext.INVALID_OPERATION')
  @DocsEditable()
  static const int INVALID_OPERATION = 0x0502;

  @DomName('WebGLRenderingContext.INVALID_VALUE')
  @DocsEditable()
  static const int INVALID_VALUE = 0x0501;

  @DomName('WebGLRenderingContext.INVERT')
  @DocsEditable()
  static const int INVERT = 0x150A;

  @DomName('WebGLRenderingContext.KEEP')
  @DocsEditable()
  static const int KEEP = 0x1E00;

  @DomName('WebGLRenderingContext.LEQUAL')
  @DocsEditable()
  static const int LEQUAL = 0x0203;

  @DomName('WebGLRenderingContext.LESS')
  @DocsEditable()
  static const int LESS = 0x0201;

  @DomName('WebGLRenderingContext.LINEAR')
  @DocsEditable()
  static const int LINEAR = 0x2601;

  @DomName('WebGLRenderingContext.LINEAR_MIPMAP_LINEAR')
  @DocsEditable()
  static const int LINEAR_MIPMAP_LINEAR = 0x2703;

  @DomName('WebGLRenderingContext.LINEAR_MIPMAP_NEAREST')
  @DocsEditable()
  static const int LINEAR_MIPMAP_NEAREST = 0x2701;

  @DomName('WebGLRenderingContext.LINES')
  @DocsEditable()
  static const int LINES = 0x0001;

  @DomName('WebGLRenderingContext.LINE_LOOP')
  @DocsEditable()
  static const int LINE_LOOP = 0x0002;

  @DomName('WebGLRenderingContext.LINE_STRIP')
  @DocsEditable()
  static const int LINE_STRIP = 0x0003;

  @DomName('WebGLRenderingContext.LINE_WIDTH')
  @DocsEditable()
  static const int LINE_WIDTH = 0x0B21;

  @DomName('WebGLRenderingContext.LINK_STATUS')
  @DocsEditable()
  static const int LINK_STATUS = 0x8B82;

  @DomName('WebGLRenderingContext.LOW_FLOAT')
  @DocsEditable()
  static const int LOW_FLOAT = 0x8DF0;

  @DomName('WebGLRenderingContext.LOW_INT')
  @DocsEditable()
  static const int LOW_INT = 0x8DF3;

  @DomName('WebGLRenderingContext.LUMINANCE')
  @DocsEditable()
  static const int LUMINANCE = 0x1909;

  @DomName('WebGLRenderingContext.LUMINANCE_ALPHA')
  @DocsEditable()
  static const int LUMINANCE_ALPHA = 0x190A;

  @DomName('WebGLRenderingContext.MAX_COMBINED_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_COMBINED_TEXTURE_IMAGE_UNITS = 0x8B4D;

  @DomName('WebGLRenderingContext.MAX_CUBE_MAP_TEXTURE_SIZE')
  @DocsEditable()
  static const int MAX_CUBE_MAP_TEXTURE_SIZE = 0x851C;

  @DomName('WebGLRenderingContext.MAX_FRAGMENT_UNIFORM_VECTORS')
  @DocsEditable()
  static const int MAX_FRAGMENT_UNIFORM_VECTORS = 0x8DFD;

  @DomName('WebGLRenderingContext.MAX_RENDERBUFFER_SIZE')
  @DocsEditable()
  static const int MAX_RENDERBUFFER_SIZE = 0x84E8;

  @DomName('WebGLRenderingContext.MAX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_TEXTURE_IMAGE_UNITS = 0x8872;

  @DomName('WebGLRenderingContext.MAX_TEXTURE_SIZE')
  @DocsEditable()
  static const int MAX_TEXTURE_SIZE = 0x0D33;

  @DomName('WebGLRenderingContext.MAX_VARYING_VECTORS')
  @DocsEditable()
  static const int MAX_VARYING_VECTORS = 0x8DFC;

  @DomName('WebGLRenderingContext.MAX_VERTEX_ATTRIBS')
  @DocsEditable()
  static const int MAX_VERTEX_ATTRIBS = 0x8869;

  @DomName('WebGLRenderingContext.MAX_VERTEX_TEXTURE_IMAGE_UNITS')
  @DocsEditable()
  static const int MAX_VERTEX_TEXTURE_IMAGE_UNITS = 0x8B4C;

  @DomName('WebGLRenderingContext.MAX_VERTEX_UNIFORM_VECTORS')
  @DocsEditable()
  static const int MAX_VERTEX_UNIFORM_VECTORS = 0x8DFB;

  @DomName('WebGLRenderingContext.MAX_VIEWPORT_DIMS')
  @DocsEditable()
  static const int MAX_VIEWPORT_DIMS = 0x0D3A;

  @DomName('WebGLRenderingContext.MEDIUM_FLOAT')
  @DocsEditable()
  static const int MEDIUM_FLOAT = 0x8DF1;

  @DomName('WebGLRenderingContext.MEDIUM_INT')
  @DocsEditable()
  static const int MEDIUM_INT = 0x8DF4;

  @DomName('WebGLRenderingContext.MIRRORED_REPEAT')
  @DocsEditable()
  static const int MIRRORED_REPEAT = 0x8370;

  @DomName('WebGLRenderingContext.NEAREST')
  @DocsEditable()
  static const int NEAREST = 0x2600;

  @DomName('WebGLRenderingContext.NEAREST_MIPMAP_LINEAR')
  @DocsEditable()
  static const int NEAREST_MIPMAP_LINEAR = 0x2702;

  @DomName('WebGLRenderingContext.NEAREST_MIPMAP_NEAREST')
  @DocsEditable()
  static const int NEAREST_MIPMAP_NEAREST = 0x2700;

  @DomName('WebGLRenderingContext.NEVER')
  @DocsEditable()
  static const int NEVER = 0x0200;

  @DomName('WebGLRenderingContext.NICEST')
  @DocsEditable()
  static const int NICEST = 0x1102;

  @DomName('WebGLRenderingContext.NONE')
  @DocsEditable()
  static const int NONE = 0;

  @DomName('WebGLRenderingContext.NOTEQUAL')
  @DocsEditable()
  static const int NOTEQUAL = 0x0205;

  @DomName('WebGLRenderingContext.NO_ERROR')
  @DocsEditable()
  static const int NO_ERROR = 0;

  @DomName('WebGLRenderingContext.ONE')
  @DocsEditable()
  static const int ONE = 1;

  @DomName('WebGLRenderingContext.ONE_MINUS_CONSTANT_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_CONSTANT_ALPHA = 0x8004;

  @DomName('WebGLRenderingContext.ONE_MINUS_CONSTANT_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_CONSTANT_COLOR = 0x8002;

  @DomName('WebGLRenderingContext.ONE_MINUS_DST_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_DST_ALPHA = 0x0305;

  @DomName('WebGLRenderingContext.ONE_MINUS_DST_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_DST_COLOR = 0x0307;

  @DomName('WebGLRenderingContext.ONE_MINUS_SRC_ALPHA')
  @DocsEditable()
  static const int ONE_MINUS_SRC_ALPHA = 0x0303;

  @DomName('WebGLRenderingContext.ONE_MINUS_SRC_COLOR')
  @DocsEditable()
  static const int ONE_MINUS_SRC_COLOR = 0x0301;

  @DomName('WebGLRenderingContext.OUT_OF_MEMORY')
  @DocsEditable()
  static const int OUT_OF_MEMORY = 0x0505;

  @DomName('WebGLRenderingContext.PACK_ALIGNMENT')
  @DocsEditable()
  static const int PACK_ALIGNMENT = 0x0D05;

  @DomName('WebGLRenderingContext.POINTS')
  @DocsEditable()
  static const int POINTS = 0x0000;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_FACTOR')
  @DocsEditable()
  static const int POLYGON_OFFSET_FACTOR = 0x8038;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_FILL')
  @DocsEditable()
  static const int POLYGON_OFFSET_FILL = 0x8037;

  @DomName('WebGLRenderingContext.POLYGON_OFFSET_UNITS')
  @DocsEditable()
  static const int POLYGON_OFFSET_UNITS = 0x2A00;

  @DomName('WebGLRenderingContext.RED_BITS')
  @DocsEditable()
  static const int RED_BITS = 0x0D52;

  @DomName('WebGLRenderingContext.RENDERBUFFER')
  @DocsEditable()
  static const int RENDERBUFFER = 0x8D41;

  @DomName('WebGLRenderingContext.RENDERBUFFER_ALPHA_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_ALPHA_SIZE = 0x8D53;

  @DomName('WebGLRenderingContext.RENDERBUFFER_BINDING')
  @DocsEditable()
  static const int RENDERBUFFER_BINDING = 0x8CA7;

  @DomName('WebGLRenderingContext.RENDERBUFFER_BLUE_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_BLUE_SIZE = 0x8D52;

  @DomName('WebGLRenderingContext.RENDERBUFFER_DEPTH_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_DEPTH_SIZE = 0x8D54;

  @DomName('WebGLRenderingContext.RENDERBUFFER_GREEN_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_GREEN_SIZE = 0x8D51;

  @DomName('WebGLRenderingContext.RENDERBUFFER_HEIGHT')
  @DocsEditable()
  static const int RENDERBUFFER_HEIGHT = 0x8D43;

  @DomName('WebGLRenderingContext.RENDERBUFFER_INTERNAL_FORMAT')
  @DocsEditable()
  static const int RENDERBUFFER_INTERNAL_FORMAT = 0x8D44;

  @DomName('WebGLRenderingContext.RENDERBUFFER_RED_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_RED_SIZE = 0x8D50;

  @DomName('WebGLRenderingContext.RENDERBUFFER_STENCIL_SIZE')
  @DocsEditable()
  static const int RENDERBUFFER_STENCIL_SIZE = 0x8D55;

  @DomName('WebGLRenderingContext.RENDERBUFFER_WIDTH')
  @DocsEditable()
  static const int RENDERBUFFER_WIDTH = 0x8D42;

  @DomName('WebGLRenderingContext.RENDERER')
  @DocsEditable()
  static const int RENDERER = 0x1F01;

  @DomName('WebGLRenderingContext.REPEAT')
  @DocsEditable()
  static const int REPEAT = 0x2901;

  @DomName('WebGLRenderingContext.REPLACE')
  @DocsEditable()
  static const int REPLACE = 0x1E01;

  @DomName('WebGLRenderingContext.RGB')
  @DocsEditable()
  static const int RGB = 0x1907;

  @DomName('WebGLRenderingContext.RGB565')
  @DocsEditable()
  static const int RGB565 = 0x8D62;

  @DomName('WebGLRenderingContext.RGB5_A1')
  @DocsEditable()
  static const int RGB5_A1 = 0x8057;

  @DomName('WebGLRenderingContext.RGBA')
  @DocsEditable()
  static const int RGBA = 0x1908;

  @DomName('WebGLRenderingContext.RGBA4')
  @DocsEditable()
  static const int RGBA4 = 0x8056;

  @DomName('WebGLRenderingContext.SAMPLER_2D')
  @DocsEditable()
  static const int SAMPLER_2D = 0x8B5E;

  @DomName('WebGLRenderingContext.SAMPLER_CUBE')
  @DocsEditable()
  static const int SAMPLER_CUBE = 0x8B60;

  @DomName('WebGLRenderingContext.SAMPLES')
  @DocsEditable()
  static const int SAMPLES = 0x80A9;

  @DomName('WebGLRenderingContext.SAMPLE_ALPHA_TO_COVERAGE')
  @DocsEditable()
  static const int SAMPLE_ALPHA_TO_COVERAGE = 0x809E;

  @DomName('WebGLRenderingContext.SAMPLE_BUFFERS')
  @DocsEditable()
  static const int SAMPLE_BUFFERS = 0x80A8;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE')
  @DocsEditable()
  static const int SAMPLE_COVERAGE = 0x80A0;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE_INVERT')
  @DocsEditable()
  static const int SAMPLE_COVERAGE_INVERT = 0x80AB;

  @DomName('WebGLRenderingContext.SAMPLE_COVERAGE_VALUE')
  @DocsEditable()
  static const int SAMPLE_COVERAGE_VALUE = 0x80AA;

  @DomName('WebGLRenderingContext.SCISSOR_BOX')
  @DocsEditable()
  static const int SCISSOR_BOX = 0x0C10;

  @DomName('WebGLRenderingContext.SCISSOR_TEST')
  @DocsEditable()
  static const int SCISSOR_TEST = 0x0C11;

  @DomName('WebGLRenderingContext.SHADER_TYPE')
  @DocsEditable()
  static const int SHADER_TYPE = 0x8B4F;

  @DomName('WebGLRenderingContext.SHADING_LANGUAGE_VERSION')
  @DocsEditable()
  static const int SHADING_LANGUAGE_VERSION = 0x8B8C;

  @DomName('WebGLRenderingContext.SHORT')
  @DocsEditable()
  static const int SHORT = 0x1402;

  @DomName('WebGLRenderingContext.SRC_ALPHA')
  @DocsEditable()
  static const int SRC_ALPHA = 0x0302;

  @DomName('WebGLRenderingContext.SRC_ALPHA_SATURATE')
  @DocsEditable()
  static const int SRC_ALPHA_SATURATE = 0x0308;

  @DomName('WebGLRenderingContext.SRC_COLOR')
  @DocsEditable()
  static const int SRC_COLOR = 0x0300;

  @DomName('WebGLRenderingContext.STATIC_DRAW')
  @DocsEditable()
  static const int STATIC_DRAW = 0x88E4;

  @DomName('WebGLRenderingContext.STENCIL_ATTACHMENT')
  @DocsEditable()
  static const int STENCIL_ATTACHMENT = 0x8D20;

  @DomName('WebGLRenderingContext.STENCIL_BACK_FAIL')
  @DocsEditable()
  static const int STENCIL_BACK_FAIL = 0x8801;

  @DomName('WebGLRenderingContext.STENCIL_BACK_FUNC')
  @DocsEditable()
  static const int STENCIL_BACK_FUNC = 0x8800;

  @DomName('WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_FAIL')
  @DocsEditable()
  static const int STENCIL_BACK_PASS_DEPTH_FAIL = 0x8802;

  @DomName('WebGLRenderingContext.STENCIL_BACK_PASS_DEPTH_PASS')
  @DocsEditable()
  static const int STENCIL_BACK_PASS_DEPTH_PASS = 0x8803;

  @DomName('WebGLRenderingContext.STENCIL_BACK_REF')
  @DocsEditable()
  static const int STENCIL_BACK_REF = 0x8CA3;

  @DomName('WebGLRenderingContext.STENCIL_BACK_VALUE_MASK')
  @DocsEditable()
  static const int STENCIL_BACK_VALUE_MASK = 0x8CA4;

  @DomName('WebGLRenderingContext.STENCIL_BACK_WRITEMASK')
  @DocsEditable()
  static const int STENCIL_BACK_WRITEMASK = 0x8CA5;

  @DomName('WebGLRenderingContext.STENCIL_BITS')
  @DocsEditable()
  static const int STENCIL_BITS = 0x0D57;

  @DomName('WebGLRenderingContext.STENCIL_BUFFER_BIT')
  @DocsEditable()
  static const int STENCIL_BUFFER_BIT = 0x00000400;

  @DomName('WebGLRenderingContext.STENCIL_CLEAR_VALUE')
  @DocsEditable()
  static const int STENCIL_CLEAR_VALUE = 0x0B91;

  @DomName('WebGLRenderingContext.STENCIL_FAIL')
  @DocsEditable()
  static const int STENCIL_FAIL = 0x0B94;

  @DomName('WebGLRenderingContext.STENCIL_FUNC')
  @DocsEditable()
  static const int STENCIL_FUNC = 0x0B92;

  @DomName('WebGLRenderingContext.STENCIL_INDEX')
  @DocsEditable()
  static const int STENCIL_INDEX = 0x1901;

  @DomName('WebGLRenderingContext.STENCIL_INDEX8')
  @DocsEditable()
  static const int STENCIL_INDEX8 = 0x8D48;

  @DomName('WebGLRenderingContext.STENCIL_PASS_DEPTH_FAIL')
  @DocsEditable()
  static const int STENCIL_PASS_DEPTH_FAIL = 0x0B95;

  @DomName('WebGLRenderingContext.STENCIL_PASS_DEPTH_PASS')
  @DocsEditable()
  static const int STENCIL_PASS_DEPTH_PASS = 0x0B96;

  @DomName('WebGLRenderingContext.STENCIL_REF')
  @DocsEditable()
  static const int STENCIL_REF = 0x0B97;

  @DomName('WebGLRenderingContext.STENCIL_TEST')
  @DocsEditable()
  static const int STENCIL_TEST = 0x0B90;

  @DomName('WebGLRenderingContext.STENCIL_VALUE_MASK')
  @DocsEditable()
  static const int STENCIL_VALUE_MASK = 0x0B93;

  @DomName('WebGLRenderingContext.STENCIL_WRITEMASK')
  @DocsEditable()
  static const int STENCIL_WRITEMASK = 0x0B98;

  @DomName('WebGLRenderingContext.STREAM_DRAW')
  @DocsEditable()
  static const int STREAM_DRAW = 0x88E0;

  @DomName('WebGLRenderingContext.SUBPIXEL_BITS')
  @DocsEditable()
  static const int SUBPIXEL_BITS = 0x0D50;

  @DomName('WebGLRenderingContext.TEXTURE')
  @DocsEditable()
  static const int TEXTURE = 0x1702;

  @DomName('WebGLRenderingContext.TEXTURE0')
  @DocsEditable()
  static const int TEXTURE0 = 0x84C0;

  @DomName('WebGLRenderingContext.TEXTURE1')
  @DocsEditable()
  static const int TEXTURE1 = 0x84C1;

  @DomName('WebGLRenderingContext.TEXTURE10')
  @DocsEditable()
  static const int TEXTURE10 = 0x84CA;

  @DomName('WebGLRenderingContext.TEXTURE11')
  @DocsEditable()
  static const int TEXTURE11 = 0x84CB;

  @DomName('WebGLRenderingContext.TEXTURE12')
  @DocsEditable()
  static const int TEXTURE12 = 0x84CC;

  @DomName('WebGLRenderingContext.TEXTURE13')
  @DocsEditable()
  static const int TEXTURE13 = 0x84CD;

  @DomName('WebGLRenderingContext.TEXTURE14')
  @DocsEditable()
  static const int TEXTURE14 = 0x84CE;

  @DomName('WebGLRenderingContext.TEXTURE15')
  @DocsEditable()
  static const int TEXTURE15 = 0x84CF;

  @DomName('WebGLRenderingContext.TEXTURE16')
  @DocsEditable()
  static const int TEXTURE16 = 0x84D0;

  @DomName('WebGLRenderingContext.TEXTURE17')
  @DocsEditable()
  static const int TEXTURE17 = 0x84D1;

  @DomName('WebGLRenderingContext.TEXTURE18')
  @DocsEditable()
  static const int TEXTURE18 = 0x84D2;

  @DomName('WebGLRenderingContext.TEXTURE19')
  @DocsEditable()
  static const int TEXTURE19 = 0x84D3;

  @DomName('WebGLRenderingContext.TEXTURE2')
  @DocsEditable()
  static const int TEXTURE2 = 0x84C2;

  @DomName('WebGLRenderingContext.TEXTURE20')
  @DocsEditable()
  static const int TEXTURE20 = 0x84D4;

  @DomName('WebGLRenderingContext.TEXTURE21')
  @DocsEditable()
  static const int TEXTURE21 = 0x84D5;

  @DomName('WebGLRenderingContext.TEXTURE22')
  @DocsEditable()
  static const int TEXTURE22 = 0x84D6;

  @DomName('WebGLRenderingContext.TEXTURE23')
  @DocsEditable()
  static const int TEXTURE23 = 0x84D7;

  @DomName('WebGLRenderingContext.TEXTURE24')
  @DocsEditable()
  static const int TEXTURE24 = 0x84D8;

  @DomName('WebGLRenderingContext.TEXTURE25')
  @DocsEditable()
  static const int TEXTURE25 = 0x84D9;

  @DomName('WebGLRenderingContext.TEXTURE26')
  @DocsEditable()
  static const int TEXTURE26 = 0x84DA;

  @DomName('WebGLRenderingContext.TEXTURE27')
  @DocsEditable()
  static const int TEXTURE27 = 0x84DB;

  @DomName('WebGLRenderingContext.TEXTURE28')
  @DocsEditable()
  static const int TEXTURE28 = 0x84DC;

  @DomName('WebGLRenderingContext.TEXTURE29')
  @DocsEditable()
  static const int TEXTURE29 = 0x84DD;

  @DomName('WebGLRenderingContext.TEXTURE3')
  @DocsEditable()
  static const int TEXTURE3 = 0x84C3;

  @DomName('WebGLRenderingContext.TEXTURE30')
  @DocsEditable()
  static const int TEXTURE30 = 0x84DE;

  @DomName('WebGLRenderingContext.TEXTURE31')
  @DocsEditable()
  static const int TEXTURE31 = 0x84DF;

  @DomName('WebGLRenderingContext.TEXTURE4')
  @DocsEditable()
  static const int TEXTURE4 = 0x84C4;

  @DomName('WebGLRenderingContext.TEXTURE5')
  @DocsEditable()
  static const int TEXTURE5 = 0x84C5;

  @DomName('WebGLRenderingContext.TEXTURE6')
  @DocsEditable()
  static const int TEXTURE6 = 0x84C6;

  @DomName('WebGLRenderingContext.TEXTURE7')
  @DocsEditable()
  static const int TEXTURE7 = 0x84C7;

  @DomName('WebGLRenderingContext.TEXTURE8')
  @DocsEditable()
  static const int TEXTURE8 = 0x84C8;

  @DomName('WebGLRenderingContext.TEXTURE9')
  @DocsEditable()
  static const int TEXTURE9 = 0x84C9;

  @DomName('WebGLRenderingContext.TEXTURE_2D')
  @DocsEditable()
  static const int TEXTURE_2D = 0x0DE1;

  @DomName('WebGLRenderingContext.TEXTURE_BINDING_2D')
  @DocsEditable()
  static const int TEXTURE_BINDING_2D = 0x8069;

  @DomName('WebGLRenderingContext.TEXTURE_BINDING_CUBE_MAP')
  @DocsEditable()
  static const int TEXTURE_BINDING_CUBE_MAP = 0x8514;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP = 0x8513;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_X')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_X = 0x8516;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Y')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Y = 0x8518;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_NEGATIVE_Z')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_NEGATIVE_Z = 0x851A;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_X')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_X = 0x8515;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Y')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_Y = 0x8517;

  @DomName('WebGLRenderingContext.TEXTURE_CUBE_MAP_POSITIVE_Z')
  @DocsEditable()
  static const int TEXTURE_CUBE_MAP_POSITIVE_Z = 0x8519;

  @DomName('WebGLRenderingContext.TEXTURE_MAG_FILTER')
  @DocsEditable()
  static const int TEXTURE_MAG_FILTER = 0x2800;

  @DomName('WebGLRenderingContext.TEXTURE_MIN_FILTER')
  @DocsEditable()
  static const int TEXTURE_MIN_FILTER = 0x2801;

  @DomName('WebGLRenderingContext.TEXTURE_WRAP_S')
  @DocsEditable()
  static const int TEXTURE_WRAP_S = 0x2802;

  @DomName('WebGLRenderingContext.TEXTURE_WRAP_T')
  @DocsEditable()
  static const int TEXTURE_WRAP_T = 0x2803;

  @DomName('WebGLRenderingContext.TRIANGLES')
  @DocsEditable()
  static const int TRIANGLES = 0x0004;

  @DomName('WebGLRenderingContext.TRIANGLE_FAN')
  @DocsEditable()
  static const int TRIANGLE_FAN = 0x0006;

  @DomName('WebGLRenderingContext.TRIANGLE_STRIP')
  @DocsEditable()
  static const int TRIANGLE_STRIP = 0x0005;

  @DomName('WebGLRenderingContext.UNPACK_ALIGNMENT')
  @DocsEditable()
  static const int UNPACK_ALIGNMENT = 0x0CF5;

  @DomName('WebGLRenderingContext.UNPACK_COLORSPACE_CONVERSION_WEBGL')
  @DocsEditable()
  static const int UNPACK_COLORSPACE_CONVERSION_WEBGL = 0x9243;

  @DomName('WebGLRenderingContext.UNPACK_FLIP_Y_WEBGL')
  @DocsEditable()
  static const int UNPACK_FLIP_Y_WEBGL = 0x9240;

  @DomName('WebGLRenderingContext.UNPACK_PREMULTIPLY_ALPHA_WEBGL')
  @DocsEditable()
  static const int UNPACK_PREMULTIPLY_ALPHA_WEBGL = 0x9241;

  @DomName('WebGLRenderingContext.UNSIGNED_BYTE')
  @DocsEditable()
  static const int UNSIGNED_BYTE = 0x1401;

  @DomName('WebGLRenderingContext.UNSIGNED_INT')
  @DocsEditable()
  static const int UNSIGNED_INT = 0x1405;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT')
  @DocsEditable()
  static const int UNSIGNED_SHORT = 0x1403;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_4_4_4_4')
  @DocsEditable()
  static const int UNSIGNED_SHORT_4_4_4_4 = 0x8033;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_5_5_5_1')
  @DocsEditable()
  static const int UNSIGNED_SHORT_5_5_5_1 = 0x8034;

  @DomName('WebGLRenderingContext.UNSIGNED_SHORT_5_6_5')
  @DocsEditable()
  static const int UNSIGNED_SHORT_5_6_5 = 0x8363;

  @DomName('WebGLRenderingContext.VALIDATE_STATUS')
  @DocsEditable()
  static const int VALIDATE_STATUS = 0x8B83;

  @DomName('WebGLRenderingContext.VENDOR')
  @DocsEditable()
  static const int VENDOR = 0x1F00;

  @DomName('WebGLRenderingContext.VERSION')
  @DocsEditable()
  static const int VERSION = 0x1F02;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 0x889F;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_ENABLED')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_ENABLED = 0x8622;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_NORMALIZED')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_NORMALIZED = 0x886A;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_POINTER')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_POINTER = 0x8645;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_SIZE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_SIZE = 0x8623;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_STRIDE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_STRIDE = 0x8624;

  @DomName('WebGLRenderingContext.VERTEX_ATTRIB_ARRAY_TYPE')
  @DocsEditable()
  static const int VERTEX_ATTRIB_ARRAY_TYPE = 0x8625;

  @DomName('WebGLRenderingContext.VERTEX_SHADER')
  @DocsEditable()
  static const int VERTEX_SHADER = 0x8B31;

  @DomName('WebGLRenderingContext.VIEWPORT')
  @DocsEditable()
  static const int VIEWPORT = 0x0BA2;

  @DomName('WebGLRenderingContext.ZERO')
  @DocsEditable()
  static const int ZERO = 0;

  // From WebGLRenderingContextBase

  @DomName('WebGLRenderingContext.canvas')
  @DocsEditable()
  @Experimental() // untriaged
  final CanvasElement canvas;

  @DomName('WebGLRenderingContext.activeTexture')
  @DocsEditable()
  void activeTexture(int texture) native;

  @DomName('WebGLRenderingContext.attachShader')
  @DocsEditable()
  void attachShader(Program program, Shader shader) native;

  @DomName('WebGLRenderingContext.bindBuffer')
  @DocsEditable()
  void bindBuffer(int target, Buffer buffer) native;

  @DomName('WebGLRenderingContext.bindFramebuffer')
  @DocsEditable()
  void bindFramebuffer(int target, Framebuffer framebuffer) native;

  @DomName('WebGLRenderingContext.bindRenderbuffer')
  @DocsEditable()
  void bindRenderbuffer(int target, Renderbuffer renderbuffer) native;

  @DomName('WebGLRenderingContext.bindTexture')
  @DocsEditable()
  void bindTexture(int target, Texture texture) native;

  @DomName('WebGLRenderingContext.blendEquation')
  @DocsEditable()
  void blendEquation(int mode) native;

  @DomName('WebGLRenderingContext.blendEquationSeparate')
  @DocsEditable()
  void blendEquationSeparate(int modeRGB, int modeAlpha) native;

  @DomName('WebGLRenderingContext.blendFunc')
  @DocsEditable()
  void blendFunc(int sfactor, int dfactor) native;

  @DomName('WebGLRenderingContext.blendFuncSeparate')
  @DocsEditable()
  void blendFuncSeparate(int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) native;

  /**
   * Buffers the specified data.
   *
   * The [bufferData] method is provided for WebGL API compatibility reasons, but
   * it is highly recommended that you use [bufferDataTyped] or [bufferByteData]
   * depending on your purposes.
   */
  @DomName('WebGLRenderingContext.bufferData')
  @DocsEditable()
  void bufferData(int target, data, int usage) native;

  @DomName('WebGLRenderingContext.checkFramebufferStatus')
  @DocsEditable()
  int checkFramebufferStatus(int target) native;

  @DomName('WebGLRenderingContext.compileShader')
  @DocsEditable()
  void compileShader(Shader shader) native;

  @DomName('WebGLRenderingContext.createBuffer')
  @DocsEditable()
  Buffer createBuffer() native;

  @DomName('WebGLRenderingContext.createFramebuffer')
  @DocsEditable()
  Framebuffer createFramebuffer() native;

  @DomName('WebGLRenderingContext.createProgram')
  @DocsEditable()
  Program createProgram() native;

  @DomName('WebGLRenderingContext.createRenderbuffer')
  @DocsEditable()
  Renderbuffer createRenderbuffer() native;

  @DomName('WebGLRenderingContext.createShader')
  @DocsEditable()
  Shader createShader(int type) native;

  @DomName('WebGLRenderingContext.createTexture')
  @DocsEditable()
  Texture createTexture() native;

  @DomName('WebGLRenderingContext.cullFace')
  @DocsEditable()
  void cullFace(int mode) native;

  @DomName('WebGLRenderingContext.deleteBuffer')
  @DocsEditable()
  void deleteBuffer(Buffer buffer) native;

  @DomName('WebGLRenderingContext.deleteFramebuffer')
  @DocsEditable()
  void deleteFramebuffer(Framebuffer framebuffer) native;

  @DomName('WebGLRenderingContext.deleteProgram')
  @DocsEditable()
  void deleteProgram(Program program) native;

  @DomName('WebGLRenderingContext.deleteRenderbuffer')
  @DocsEditable()
  void deleteRenderbuffer(Renderbuffer renderbuffer) native;

  @DomName('WebGLRenderingContext.deleteShader')
  @DocsEditable()
  void deleteShader(Shader shader) native;

  @DomName('WebGLRenderingContext.deleteTexture')
  @DocsEditable()
  void deleteTexture(Texture texture) native;

  @DomName('WebGLRenderingContext.depthFunc')
  @DocsEditable()
  void depthFunc(int func) native;

  @DomName('WebGLRenderingContext.detachShader')
  @DocsEditable()
  void detachShader(Program program, Shader shader) native;

  @DomName('WebGLRenderingContext.disable')
  @DocsEditable()
  void disable(int cap) native;

  @DomName('WebGLRenderingContext.enable')
  @DocsEditable()
  void enable(int cap) native;

  @DomName('WebGLRenderingContext.finish')
  @DocsEditable()
  void finish() native;

  @DomName('WebGLRenderingContext.flush')
  @DocsEditable()
  void flush() native;

  @DomName('WebGLRenderingContext.framebufferRenderbuffer')
  @DocsEditable()
  void framebufferRenderbuffer(int target, int attachment, int renderbuffertarget, Renderbuffer renderbuffer) native;

  @DomName('WebGLRenderingContext.frontFace')
  @DocsEditable()
  void frontFace(int mode) native;

  @DomName('WebGLRenderingContext.generateMipmap')
  @DocsEditable()
  void generateMipmap(int target) native;

  @DomName('WebGLRenderingContext.getAttachedShaders')
  @DocsEditable()
  List<Shader> getAttachedShaders(Program program) native;

  @DomName('WebGLRenderingContext.getContextAttributes')
  @DocsEditable()
  @Creates('ContextAttributes|=Object')
  Map getContextAttributes() {
    return convertNativeToDart_Dictionary(_getContextAttributes_1());
  }
  @JSName('getContextAttributes')
  @DomName('WebGLRenderingContext.getContextAttributes')
  @DocsEditable()
  @Creates('ContextAttributes|=Object')
  _getContextAttributes_1() native;

  @DomName('WebGLRenderingContext.getError')
  @DocsEditable()
  int getError() native;

  @DomName('WebGLRenderingContext.getProgramInfoLog')
  @DocsEditable()
  String getProgramInfoLog(Program program) native;

  @DomName('WebGLRenderingContext.getShaderInfoLog')
  @DocsEditable()
  String getShaderInfoLog(Shader shader) native;

  @DomName('WebGLRenderingContext.getShaderPrecisionFormat')
  @DocsEditable()
  ShaderPrecisionFormat getShaderPrecisionFormat(int shadertype, int precisiontype) native;

  @DomName('WebGLRenderingContext.getShaderSource')
  @DocsEditable()
  String getShaderSource(Shader shader) native;

  @DomName('WebGLRenderingContext.getSupportedExtensions')
  @DocsEditable()
  List<String> getSupportedExtensions() native;

  @DomName('WebGLRenderingContext.getUniform')
  @DocsEditable()
  @Creates('Null|num|String|bool|JSExtendableArray|NativeFloat32List|NativeInt32List|NativeUint32List')
  @Returns('Null|num|String|bool|JSExtendableArray|NativeFloat32List|NativeInt32List|NativeUint32List')
  Object getUniform(Program program, UniformLocation location) native;

  @DomName('WebGLRenderingContext.getUniformLocation')
  @DocsEditable()
  UniformLocation getUniformLocation(Program program, String name) native;

  @DomName('WebGLRenderingContext.hint')
  @DocsEditable()
  void hint(int target, int mode) native;

  @DomName('WebGLRenderingContext.linkProgram')
  @DocsEditable()
  void linkProgram(Program program) native;

  @DomName('WebGLRenderingContext.shaderSource')
  @DocsEditable()
  void shaderSource(Shader shader, String string) native;

  @DomName('WebGLRenderingContext.stencilOp')
  @DocsEditable()
  void stencilOp(int fail, int zfail, int zpass) native;

  @DomName('WebGLRenderingContext.stencilOpSeparate')
  @DocsEditable()
  void stencilOpSeparate(int face, int fail, int zfail, int zpass) native;

  @DomName('WebGLRenderingContext.uniform1fv')
  @DocsEditable()
  void uniform1fv(UniformLocation location, Float32List v) native;

  @DomName('WebGLRenderingContext.uniform1iv')
  @DocsEditable()
  void uniform1iv(UniformLocation location, Int32List v) native;

  @DomName('WebGLRenderingContext.uniform2fv')
  @DocsEditable()
  void uniform2fv(UniformLocation location, Float32List v) native;

  @DomName('WebGLRenderingContext.uniform2iv')
  @DocsEditable()
  void uniform2iv(UniformLocation location, Int32List v) native;

  @DomName('WebGLRenderingContext.uniform3fv')
  @DocsEditable()
  void uniform3fv(UniformLocation location, Float32List v) native;

  @DomName('WebGLRenderingContext.uniform3iv')
  @DocsEditable()
  void uniform3iv(UniformLocation location, Int32List v) native;

  @DomName('WebGLRenderingContext.uniform4fv')
  @DocsEditable()
  void uniform4fv(UniformLocation location, Float32List v) native;

  @DomName('WebGLRenderingContext.uniform4iv')
  @DocsEditable()
  void uniform4iv(UniformLocation location, Int32List v) native;

  @DomName('WebGLRenderingContext.useProgram')
  @DocsEditable()
  void useProgram(Program program) native;

  @DomName('WebGLRenderingContext.validateProgram')
  @DocsEditable()
  void validateProgram(Program program) native;


  /**
   * Sets the currently bound texture to [data].
   *
   * [data] can be either an [ImageElement], a
   * [CanvasElement], a [VideoElement], or an [ImageData] object.
   *
   * To use [texImage2d] with a TypedData object, use [texImage2dTyped].
   *
   */
  @JSName('texImage2D')
  void texImage2DUntyped(int targetTexture, int levelOfDetail, 
      int internalFormat, int format, int type, data) native;

  /**
   * Sets the currently bound texture to [data].
   */
  @JSName('texImage2D')
  void texImage2DTyped(int targetTexture, int levelOfDetail,
      int internalFormat, int width, int height, int border, int format,
      int type, TypedData data) native;

  /**
   * Updates a sub-rectangle of the currently bound texture to [data].
   *
   * [data] can be either an [ImageElement], a
   * [CanvasElement], a [VideoElement], or an [ImageData] object.
   *
   * To use [texSubImage2d] with a TypedData object, use [texSubImage2dTyped].
   *
   */
  @JSName('texSubImage2D')
  void texSubImage2DUntyped(int targetTexture, int levelOfDetail,
      int xOffset, int yOffset, int format, int type, data) native;

  /**
   * Updates a sub-rectangle of the currently bound texture to [data].
   */
  @JSName('texSubImage2D')
  void texSubImage2DTyped(int targetTexture, int levelOfDetail,
      int xOffset, int yOffset, int width, int height, int border, int format,
      int type, TypedData data) native;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLSampler')
@Experimental() // untriaged
@Native("WebGLSampler")
class Sampler extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Sampler._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLShader')
@Native("WebGLShader")
class Shader extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Shader._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLShaderPrecisionFormat')
@Native("WebGLShaderPrecisionFormat")
class ShaderPrecisionFormat extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory ShaderPrecisionFormat._() { throw new UnsupportedError("Not supported"); }

  @DomName('WebGLShaderPrecisionFormat.precision')
  @DocsEditable()
  final int precision;

  @DomName('WebGLShaderPrecisionFormat.rangeMax')
  @DocsEditable()
  final int rangeMax;

  @DomName('WebGLShaderPrecisionFormat.rangeMin')
  @DocsEditable()
  final int rangeMin;
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLSync')
@Experimental() // untriaged
@Native("WebGLSync")
class Sync extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Sync._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLTexture')
@Native("WebGLTexture")
class Texture extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory Texture._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLTimerQueryEXT')
@Experimental() // untriaged
@Native("WebGLTimerQueryEXT")
class TimerQueryExt extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory TimerQueryExt._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLTransformFeedback')
@Experimental() // untriaged
@Native("WebGLTransformFeedback")
class TransformFeedback extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory TransformFeedback._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLUniformLocation')
@Native("WebGLUniformLocation")
class UniformLocation extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory UniformLocation._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLVertexArrayObject')
@Experimental() // untriaged
@Native("WebGLVertexArrayObject")
class VertexArrayObject extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory VertexArrayObject._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLVertexArrayObjectOES')
// http://www.khronos.org/registry/webgl/extensions/OES_vertex_array_object/
@Experimental() // experimental
@Native("WebGLVertexArrayObjectOES")
class VertexArrayObject extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory VertexArrayObject._() { throw new UnsupportedError("Not supported"); }
}
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


@DocsEditable()
@DomName('WebGLRenderingContextBase')
@Experimental() // untriaged
abstract class _WebGLRenderingContextBase extends Interceptor {
  // To suppress missing implicit constructor warnings.
  factory _WebGLRenderingContextBase._() { throw new UnsupportedError("Not supported"); }
}
