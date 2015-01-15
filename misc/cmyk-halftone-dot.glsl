// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _col;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _texCoord_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texCoord_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
    float _texture_size;
};
struct output_dummy {
    vec4 _col;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _col;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _texCoord_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texCoord_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
    float _texture_size;
};
struct output_dummy {
    vec4 _col;
};
float _TMP23;
float _TMP20;
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP16;
float _TMP22;
float _TMP14;
float _TMP13;
float _TMP10;
float _TMP9;
float _TMP6;
float _TMP5;
float _TMP2;
vec4 _TMP1;
input_dummy _IN1;
uniform sampler2D Texture;
vec2 _r0066;
vec2 _TMP71;
float _x0082;
vec2 _r0084;
vec2 _TMP89;
float _x0100;
vec2 _r0102;
vec2 _TMP107;
float _x0118;
vec2 _TMP119;
float _x0130;
vec3 _TMP131;
float _a0132;
vec2 _a0136;
vec2 _a0138;
float _x0144;
float _TMP145;
vec3 _TMP151;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _cmyk;
    vec2 _Kst;
    vec2 _Kuv;
    float _k;
    vec2 _Cst;
    vec2 _Cuv;
    float _c;
    vec2 _Mst;
    vec2 _Muv;
    float _m;
    vec2 _Yst;
    vec2 _Yuv;
    float _y;
    vec3 _rgbscreen;
    float _afwidth;
    float _blend;
    vec4 _color;
    _TMP1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _cmyk.xyz = 1.00000000E+00 - _TMP1.xyz;
    _TMP2 = min(_cmyk.y, _cmyk.z);
    _cmyk.w = min(_cmyk.x, _TMP2);
    _cmyk.xyz = _cmyk.xyz - _cmyk.w;
    _r0066.x = dot(vec2( 7.07000017E-01, 7.07000017E-01), TEX0.xy);
    _r0066.y = dot(vec2( -7.07000017E-01, 7.07000017E-01), TEX0.xy);
    _Kst = (4.00000000E+02*4.79999989E-01*(TextureSize/InputSize))*_r0066;
    _TMP71 = fract(_Kst);
    _Kuv = 2.00000000E+00*_TMP71 - 1.00000000E+00;
    _TMP22 = inversesqrt(_cmyk.w);
    _TMP5 = 1.00000000E+00/_TMP22;
    _TMP6 = length(_Kuv);
    _x0082 = _TMP5 - _TMP6;
    _k = float((_x0082 >= 0.00000000E+00));
    _r0084.x = dot(vec2( 9.66000021E-01, 2.59000003E-01), TEX0.xy);
    _r0084.y = dot(vec2( -2.59000003E-01, 9.66000021E-01), TEX0.xy);
    _Cst = (4.00000000E+02*4.79999989E-01*(TextureSize/InputSize))*_r0084;
    _TMP89 = fract(_Cst);
    _Cuv = 2.00000000E+00*_TMP89 - 1.00000000E+00;
    _TMP22 = inversesqrt(_cmyk.x);
    _TMP9 = 1.00000000E+00/_TMP22;
    _TMP10 = length(_Cuv);
    _x0100 = _TMP9 - _TMP10;
    _c = float((_x0100 >= 0.00000000E+00));
    _r0102.x = dot(vec2( 9.66000021E-01, -2.59000003E-01), TEX0.xy);
    _r0102.y = dot(vec2( 2.59000003E-01, 9.66000021E-01), TEX0.xy);
    _Mst = (4.00000000E+02*4.79999989E-01*(TextureSize/InputSize))*_r0102;
    _TMP107 = fract(_Mst);
    _Muv = 2.00000000E+00*_TMP107 - 1.00000000E+00;
    _TMP22 = inversesqrt(_cmyk.y);
    _TMP13 = 1.00000000E+00/_TMP22;
    _TMP14 = length(_Muv);
    _x0118 = _TMP13 - _TMP14;
    _m = float((_x0118 >= 0.00000000E+00));
    _Yst = (4.00000000E+02*4.79999989E-01*(TextureSize/InputSize))*TEX0.xy;
    _TMP119 = fract(_Yst);
    _Yuv = 2.00000000E+00*_TMP119 - 1.00000000E+00;
    _TMP22 = inversesqrt(_cmyk.z);
    _TMP16 = 1.00000000E+00/_TMP22;
    _TMP17 = length(_Yuv);
    _x0130 = _TMP16 - _TMP17;
    _y = float((_x0130 >= 0.00000000E+00));
    _rgbscreen = 1.00000000E+00 - 8.99999976E-01*vec3(_c, _m, _y);
    _a0132 = 8.50000024E-01*_k;
    _TMP131 = _rgbscreen + _a0132*(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00) - _rgbscreen);
    _a0136 = InputSize/(OutputSize*TextureSize);
    _TMP18 = length(_a0136);
    _a0138 = InputSize/(OutputSize*TextureSize);
    _TMP19 = length(_a0138);
    _TMP20 = max(_TMP18, _TMP19);
    _afwidth = 8.00000000E+02*_TMP20;
    _x0144 = (_afwidth - 6.99999988E-01)/6.99999988E-01;
    _TMP23 = min(1.00000000E+00, _x0144);
    _TMP145 = max(0.00000000E+00, _TMP23);
    _blend = _TMP145*_TMP145*(3.00000000E+00 - 2.00000000E+00*_TMP145);
    _TMP151 = _TMP131 + _blend*(_TMP1.xyz - _TMP131);
    _color = vec4(_TMP151.x, _TMP151.y, _TMP151.z, 1.00000000E+00);
    FragColor = _color;
    return;
} 
#endif
