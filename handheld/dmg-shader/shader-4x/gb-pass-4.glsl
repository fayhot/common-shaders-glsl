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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder28;
};
struct pass_2 {
float _placeholder32;
};
vec4 _oPosition1;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTexCoord;
    vec2 _oTexel;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oTexCoord = TexCoord.xy;
    _oTexel = 1.00000000E+00/TextureSize;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _oTexel;
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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder30;
};
struct pass_2 {
float _placeholder34;
};
vec4 _ret_0;
float _TMP9;
vec4 _TMP8;
float _TMP7;
vec4 _TMP6;
float _TMP5;
vec4 _TMP4;
vec3 _TMP10;
vec3 _TMP12;
vec3 _TMP11;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
input_dummy _IN1;
pass_2 _PASS21;
uniform sampler2D COLOR_PALETTE;
uniform sampler2D BACKGROUND;
vec2 _c0022;
vec3 _x0038;
vec3 _TMP39;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform sampler2D Texture;
uniform sampler2D Pass2Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _foreground;
    vec4 _background;
    vec4 _shadows;
    vec4 _out_color;
    _TMP0 = COMPAT_TEXTURE(Pass2Texture, TEX0.xy);
    _foreground = vec4(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z), float(_TMP0.w));
    _TMP1 = COMPAT_TEXTURE(BACKGROUND, TEX0.xy);
    _background = vec4(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z), float(_TMP1.w));
    _c0022 = TEX0.xy - vec2(-1.50000000E+00*TEX1.x, 1.50000000E+00*TEX1.y);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0022);
    _shadows = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
    _TMP4 = COMPAT_TEXTURE(COLOR_PALETTE, vec2( 2.50000000E-01, 5.00000000E-01));
    _TMP5 = -1.00000000E+00 + _background.x*1.99902344E+00;
    _TMP6 = COMPAT_TEXTURE(COLOR_PALETTE, vec2( 2.50000000E-01, 5.00000000E-01));
    _TMP7 = -1.00000000E+00 + _background.y*1.99902344E+00;
    _TMP8 = COMPAT_TEXTURE(COLOR_PALETTE, vec2( 2.50000000E-01, 5.00000000E-01));
    _TMP9 = -1.00000000E+00 + _background.z*1.99902344E+00;
    _x0038 = vec3(float((_TMP4.x + float(_TMP5))), float((_TMP6.y + float(_TMP7))), float((_TMP8.z + float(_TMP9))));
    _TMP11 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_x0038.x), float(_x0038.y), float(_x0038.z)));
    _TMP10 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z)));
    _TMP39 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _background.xyz = _TMP39;
    _out_color = _shadows*_shadows.w*5.59570312E-01 + _background*(1.00000000E+00 - _shadows.w*5.59570312E-01);
    _out_color = _foreground*_foreground.w*(1.00000000E+00 - _foreground.w*_foreground.w*7.00195312E-01) + _out_color*(8.49609375E-01 - _foreground.w*7.00195312E-01*7.99804688E-01);
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    FragColor = _ret_0;
    return;
} 
#endif
