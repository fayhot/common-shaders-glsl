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
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xyxy + vec4(0.00000000E+00, -_ps.y, -_ps.x, 0.00000000E+00);
    _OUT._t2 = TexCoord.xyxy + vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0006;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
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
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
};
vec3 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
bool _TMP22;
bvec3 _a0025;
bool _TMP26;
bvec3 _a0029;
bool _TMP30;
bvec3 _a0033;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _a0025 = bvec3(_TMP0.x == _TMP1.x, _TMP0.y == _TMP1.y, _TMP0.z == _TMP1.z);
    _TMP22 = _a0025.x && _a0025.y && _a0025.z;
    _a0029 = bvec3(_TMP0.x == _TMP3.x, _TMP0.y == _TMP3.y, _TMP0.z == _TMP3.z);
    _TMP26 = _a0029.x && _a0029.y && _a0029.z;
    _a0033 = bvec3(_TMP0.x == _TMP4.x, _TMP0.y == _TMP4.y, _TMP0.z == _TMP4.z);
    _TMP30 = _a0033.x && _a0033.y && _a0033.z;
    if (_TMP22 && _TMP26 && _TMP30) { 
        _TMP5 = _TMP0.xyz;
    } else {
        _TMP5 = _TMP2.xyz;
    } 
    FragColor.xyz = _TMP5;
    return;
} 
#endif
