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
COMPAT_VARYING     vec2 VARprev6;
COMPAT_VARYING     vec2 VARprev5;
COMPAT_VARYING     vec2 VARprev4;
COMPAT_VARYING     vec2 VARprev3;
COMPAT_VARYING     vec2 VARprev2;
COMPAT_VARYING     vec2 VARprev1;
COMPAT_VARYING     vec2 VARprev;
COMPAT_VARYING     vec2 VARtex;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct previous {
float _placeholder59;
    vec2 _tex_coord;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct tex_coords {
    vec2 VARtex;
    vec2 VARprev;
    vec2 VARprev1;
    vec2 VARprev2;
    vec2 VARprev3;
    vec2 VARprev4;
    vec2 VARprev5;
    vec2 VARprev6;
};
vec4 _oPosition1;
tex_coords _coords1;
previous _PREV7;
previous _PREV11;
previous _PREV21;
previous _PREV31;
previous _PREV41;
previous _PREV51;
previous _PREV61;
vec4 _r0013;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
COMPAT_ATTRIBUTE vec2 Prev6TexCoord;
COMPAT_ATTRIBUTE vec2 Prev5TexCoord;
COMPAT_ATTRIBUTE vec2 Prev4TexCoord;
COMPAT_ATTRIBUTE vec2 Prev3TexCoord;
COMPAT_ATTRIBUTE vec2 Prev2TexCoord;
COMPAT_ATTRIBUTE vec2 Prev1TexCoord;
COMPAT_ATTRIBUTE vec2 PrevTexCoord;
void main()
{
    _r0013 = VertexCoord.x*MVPMatrix[0];
    _r0013 = _r0013 + VertexCoord.y*MVPMatrix[1];
    _r0013 = _r0013 + VertexCoord.z*MVPMatrix[2];
    _r0013 = _r0013 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0013;
    VARtex = TexCoord.xy;
    VARprev = PrevTexCoord;
    VARprev1 = Prev1TexCoord;
    VARprev2 = Prev2TexCoord;
    VARprev3 = Prev3TexCoord;
    VARprev4 = Prev4TexCoord;
    VARprev5 = Prev5TexCoord;
    VARprev6 = Prev6TexCoord;
    gl_Position = _r0013;
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
COMPAT_VARYING     vec2 VARprev6;
COMPAT_VARYING     vec2 VARprev5;
COMPAT_VARYING     vec2 VARprev4;
COMPAT_VARYING     vec2 VARprev3;
COMPAT_VARYING     vec2 VARprev2;
COMPAT_VARYING     vec2 VARprev1;
COMPAT_VARYING     vec2 VARprev;
COMPAT_VARYING     vec2 VARtex;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 VARtex_coord;
struct previous {
float _placeholder58;
    vec2 VARtex_coord;
};
struct input_dummy {
    vec2 _video_size;
    vec2 VARtexture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct tex_coords {
    vec2 VARtex;
    vec2 VARprev;
    vec2 VARprev1;
    vec2 VARprev2;
    vec2 VARprev3;
    vec2 VARprev4;
    vec2 VARprev5;
    vec2 VARprev6;
};
vec4 _TMP7;
vec4 _TMP11;
vec4 _TMP8;
float _TMP10;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
tex_coords _coords1;
previous _PREV7;
previous _PREV11;
previous _PREV21;
previous _PREV31;
previous _PREV41;
previous _PREV51;
previous _PREV61;
float _x0041;
float _TMP42;
vec4 _x0049;
vec4 _TMP50;
 
uniform sampler2D Prev6Texture;
uniform sampler2D Prev5Texture;
uniform sampler2D Prev4Texture;
uniform sampler2D Prev3Texture;
uniform sampler2D Prev2Texture;
uniform sampler2D Prev1Texture;
uniform sampler2D PrevTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _blue_result;
    _TMP0 = COMPAT_TEXTURE(PrevTexture, VARprev);
    _TMP1 = COMPAT_TEXTURE(Prev1Texture, VARprev1);
    _TMP2 = COMPAT_TEXTURE(Prev2Texture, VARprev2);
    _TMP3 = COMPAT_TEXTURE(Prev3Texture, VARprev3);
    _TMP4 = COMPAT_TEXTURE(Prev4Texture, VARprev4);
    _TMP5 = COMPAT_TEXTURE(Prev5Texture, VARprev5);
    _TMP6 = COMPAT_TEXTURE(Prev6Texture, VARprev6);
    _blue_result = _TMP0.z + _TMP1.z + _TMP2.z + _TMP3.z + _TMP4.z + _TMP5.z + _TMP6.z;
    _TMP7 = COMPAT_TEXTURE(Texture, VARtex);
    _TMP8 = COMPAT_TEXTURE(Texture, VARtex);
    _x0041 = _blue_result - 7.00000000E+00*_TMP8.z;
    _TMP10 = min(1.00000000E+00, _x0041);
    _TMP42 = max(0.00000000E+00, _TMP10);
    _x0049 = _TMP7 + 4.00000006E-01*vec4(0.00000000E+00, 0.00000000E+00, _TMP42, 1.00000000E+00);
    _TMP11 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0049);
    _TMP50 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP11);
    FragColor = _TMP50;
    return;
} 
#endif
