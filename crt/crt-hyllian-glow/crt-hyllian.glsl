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
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord1;
};
vec4 _oPosition1;
out_vertex _ret_0;
vec4 _r0008;
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
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0008;
    _ret_0._texCoord1 = TexCoord.xy;
    gl_Position = _r0008;
    TEX0.xy = TexCoord.xy;
    return;
    TEX0.xy = _ret_0._texCoord1;
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
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
};
vec4 _ret_0;
vec3 _TMP9;
vec3 _TMP10;
vec3 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0025;
vec2 _c0029;
vec2 _c0031;
vec4 _r0033;
vec4 _v0033;
vec3 _r0043;
vec4 _r0045;
vec4 _v0045;
vec3 _r0055;
vec4 _r0057;
vec4 _v0057;
vec3 _r0067;
float _a0073;
vec3 _TMP76;
vec3 _TMP78;
vec3 _TMP86;
vec3 _x0087;
vec3 _x0093;
vec3 _TMP96;
vec3 _TMP102;
vec3 _x0103;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _TextureSize;
    vec2 _dx;
    vec2 _pix_coord;
    vec2 _tc;
    vec2 _fp;
    vec3 _color;
    float _dz;
    vec2 _fpf;
    vec2 _fpd;
    float _pos;
    vec3 _lum;
    vec3 _d;
    _TextureSize = vec2(TextureSize.x, TextureSize.y);
    _dx = vec2(1.00000000E+00/_TextureSize.x, 0.00000000E+00);
    _pix_coord = TEX0.xy*_TextureSize - vec2( 5.00000000E-01, 0.00000000E+00);
    _TMP0 = floor(_pix_coord);
    _tc = (_TMP0 + vec2( 5.00000000E-01, 5.00000000E-01))/_TextureSize;
    _fp = fract(_pix_coord);
    _c0025 = _tc - _dx;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0025);
    _TMP2 = COMPAT_TEXTURE(Texture, _tc);
    _c0029 = _tc + _dx;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0029);
    _c0031 = _tc + 2.00000000E+00*_dx;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0031);
    _v0033 = vec4(_fp.x*_fp.x*_fp.x, _fp.x*_fp.x, _fp.x, 1.00000000E+00);
    _r0033.x = dot(vec4( -5.00000000E-01, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00), _v0033);
    _r0033.y = dot(vec4( 1.50000000E+00, -2.50000000E+00, 0.00000000E+00, 1.00000000E+00), _v0033);
    _r0033.z = dot(vec4( -1.50000000E+00, 2.00000000E+00, 5.00000000E-01, 0.00000000E+00), _v0033);
    _r0033.w = dot(vec4( 5.00000000E-01, -5.00000000E-01, 0.00000000E+00, 0.00000000E+00), _v0033);
    _r0043 = _r0033.x*_TMP1.xyz;
    _r0043 = _r0043 + _r0033.y*_TMP2.xyz;
    _r0043 = _r0043 + _r0033.z*_TMP3.xyz;
    _r0043 = _r0043 + _r0033.w*_TMP4.xyz;
    _dz = (8.99999976E-01*InputSize.x)/OutputSize.x;
    _fpf = vec2(_fp.x + _dz, _fp.y);
    _fpd = vec2(_fp.x - _dz, _fp.y);
    _v0045 = vec4(_fpf.x*_fpf.x*_fpf.x, _fpf.x*_fpf.x, _fpf.x, 1.00000000E+00);
    _r0045.x = dot(vec4( -5.00000000E-01, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00), _v0045);
    _r0045.y = dot(vec4( 1.50000000E+00, -2.50000000E+00, 0.00000000E+00, 1.00000000E+00), _v0045);
    _r0045.z = dot(vec4( -1.50000000E+00, 2.00000000E+00, 5.00000000E-01, 0.00000000E+00), _v0045);
    _r0045.w = dot(vec4( 5.00000000E-01, -5.00000000E-01, 0.00000000E+00, 0.00000000E+00), _v0045);
    _r0055 = _r0045.x*_TMP1.xyz;
    _r0055 = _r0055 + _r0045.y*_TMP2.xyz;
    _r0055 = _r0055 + _r0045.z*_TMP3.xyz;
    _r0055 = _r0055 + _r0045.w*_TMP4.xyz;
    _v0057 = vec4(_fpd.x*_fpd.x*_fpd.x, _fpd.x*_fpd.x, _fpd.x, 1.00000000E+00);
    _r0057.x = dot(vec4( -5.00000000E-01, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00), _v0057);
    _r0057.y = dot(vec4( 1.50000000E+00, -2.50000000E+00, 0.00000000E+00, 1.00000000E+00), _v0057);
    _r0057.z = dot(vec4( -1.50000000E+00, 2.00000000E+00, 5.00000000E-01, 0.00000000E+00), _v0057);
    _r0057.w = dot(vec4( 5.00000000E-01, -5.00000000E-01, 0.00000000E+00, 0.00000000E+00), _v0057);
    _r0067 = _r0057.x*_TMP1.xyz;
    _r0067 = _r0067 + _r0057.y*_TMP2.xyz;
    _r0067 = _r0067 + _r0057.z*_TMP3.xyz;
    _r0067 = _r0067 + _r0057.w*_TMP4.xyz;
    _TMP5 = max(_r0055, _r0067);
    _color = max(_r0043, _TMP5);
    _a0073 = _fp.y - 5.00000000E-01;
    _pos = abs(_a0073);
    _lum = vec3( 1.00000001E-01, 1.00000001E-01, 1.00000001E-01) + _color*vec3( 3.00000012E-01, 3.00000012E-01, 3.00000012E-01);
    _TMP78 = vec3(inversesqrt(_lum.x), inversesqrt(_lum.y), inversesqrt(_lum.z));
    _TMP76 = 1.00000000E+00/_TMP78;
    _x0087 = _pos/_TMP76;
    _TMP9 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0087);
    _TMP86 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP9);
    _x0093 = 1.00000000E+00 - _TMP86;
    _TMP10 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0093);
    _TMP96 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP10);
    _d = _TMP96*_TMP96*(vec3( 3.00000000E+00, 3.00000000E+00, 3.00000000E+00) - 2.00000000E+00*_TMP96);
    _d = 8.99999976E-01*(_d - 1.00000000E+00) + 1.00000000E+00;
    _color.z = _color.z*1.04999995E+00;
    _x0103 = _color*_d;
    _TMP9 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0103);
    _TMP102 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP9);
    _color = _TMP102*1.20000005E+00;
    _ret_0 = vec4(_color.x, _color.y, _color.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
