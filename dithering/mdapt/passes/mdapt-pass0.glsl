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
COMPAT_VARYING     vec2 VARt1;
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
    vec2 VARt1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
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
    out_vertex _OUT;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _OUT.VARt1 = 1.00000000E+00/TextureSize;
    _ret_0._position1 = _r0006;
    _ret_0._texCoord1 = TexCoord.xy;
    VARt1 = _OUT.VARt1;
    gl_Position = _r0006;
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
COMPAT_VARYING     vec2 VARt1;
COMPAT_VARYING     vec2 _texCoord;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec2 _texCoord;
    vec2 VARt1;
};
float _TMP22;
float _TMP19;
float _TMP16;
float _TMP13;
float _TMP30;
float _TMP29;
float _TMP28;
float _TMP27;
float _TMP26;
float _TMP25;
float _TMP31;
float _TMP32;
float _TMP20;
float _TMP17;
float _TMP14;
float _TMP11;
float _TMP10;
float _TMP8;
float _TMP7;
float _TMP5;
float _TMP24;
float _TMP23;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
vec2 _c0039;
vec2 _c0041;
vec2 _c0043;
vec2 _c0045;
vec3 _v0047;
vec3 _v0053;
vec3 _v0059;
vec3 _v0065;
float _TMP74;
vec3 _diff0081;
float _ravg0081;
float _a0083;
float _x0089;
float _TMP90;
float _TMP100;
vec3 _diff0107;
float _ravg0107;
float _a0109;
float _x0115;
float _TMP116;
float _TMP126;
vec3 _diff0133;
float _ravg0133;
float _a0135;
float _x0141;
float _TMP142;
float _TMP152;
vec3 _diff0159;
float _ravg0159;
float _a0161;
float _x0167;
float _TMP168;
float _TMP178;
vec3 _diff0185;
float _ravg0185;
float _a0187;
float _x0193;
float _TMP194;
float _TMP204;
vec3 _diff0211;
float _ravg0211;
float _a0213;
float _x0219;
float _TMP220;
float _TMP226;
float _e0227;
float _f0227;
float _d0227;
float _c0227;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _res;
    vec3 _dCL1;
    vec3 _dCR1;
    vec3 _dCD1;
    vec3 _dCU1;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0039 = TEX0.xy + vec2( -1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0039);
    _c0041 = TEX0.xy + vec2( 1.00000000E+00, 0.00000000E+00)*VARt1;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0041);
    _c0043 = TEX0.xy + vec2( 0.00000000E+00, -1.00000000E+00)*VARt1;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0043);
    _c0045 = TEX0.xy + vec2( 0.00000000E+00, 1.00000000E+00)*VARt1;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0045);
    _v0047 = _TMP0.xyz - _TMP1.xyz;
    _TMP23 = dot(_v0047, _v0047);
    _TMP24 = inversesqrt(_TMP23);
    _dCL1 = _TMP24*_v0047;
    _v0053 = _TMP0.xyz - _TMP2.xyz;
    _TMP23 = dot(_v0053, _v0053);
    _TMP24 = inversesqrt(_TMP23);
    _dCR1 = _TMP24*_v0053;
    _v0059 = _TMP0.xyz - _TMP4.xyz;
    _TMP23 = dot(_v0059, _v0059);
    _TMP24 = inversesqrt(_TMP23);
    _dCD1 = _TMP24*_v0059;
    _v0065 = _TMP0.xyz - _TMP3.xyz;
    _TMP23 = dot(_v0065, _v0065);
    _TMP24 = inversesqrt(_TMP23);
    _dCU1 = _TMP24*_v0065;
    _TMP5 = dot(_dCL1, _dCR1);
    _TMP31 = min(1.00000000E+00, _TMP5);
    _TMP74 = max(0.00000000E+00, _TMP31);
    _diff0081 = _TMP1.xyz - _TMP2.xyz;
    _ravg0081 = (_TMP1.x + _TMP2.x)*5.00000000E-01;
    _diff0081 = _diff0081*_diff0081*vec3(2.00000000E+00 + _ravg0081, 4.00000000E+00, 3.00000000E+00 - _ravg0081);
    _a0083 = _diff0081.x + _diff0081.y + _diff0081.z;
    _TMP32 = inversesqrt(_a0083);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0089 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0089);
    _TMP90 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP90*_TMP90*(3.00000000E+00 - 2.00000000E+00*_TMP90);
    _TMP7 = _TMP26*_TMP26;
    _res.x = _TMP74*_TMP7;
    _TMP8 = dot(_dCU1, _dCD1);
    _TMP31 = min(1.00000000E+00, _TMP8);
    _TMP100 = max(0.00000000E+00, _TMP31);
    _diff0107 = _TMP3.xyz - _TMP4.xyz;
    _ravg0107 = (_TMP3.x + _TMP4.x)*5.00000000E-01;
    _diff0107 = _diff0107*_diff0107*vec3(2.00000000E+00 + _ravg0107, 4.00000000E+00, 3.00000000E+00 - _ravg0107);
    _a0109 = _diff0107.x + _diff0107.y + _diff0107.z;
    _TMP32 = inversesqrt(_a0109);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0115 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0115);
    _TMP116 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP116*_TMP116*(3.00000000E+00 - 2.00000000E+00*_TMP116);
    _TMP10 = _TMP26*_TMP26;
    _res.y = _TMP100*_TMP10;
    _TMP11 = dot(_dCL1, _dCU1);
    _TMP31 = min(1.00000000E+00, _TMP11);
    _TMP126 = max(0.00000000E+00, _TMP31);
    _diff0133 = _TMP1.xyz - _TMP3.xyz;
    _ravg0133 = (_TMP1.x + _TMP3.x)*5.00000000E-01;
    _diff0133 = _diff0133*_diff0133*vec3(2.00000000E+00 + _ravg0133, 4.00000000E+00, 3.00000000E+00 - _ravg0133);
    _a0135 = _diff0133.x + _diff0133.y + _diff0133.z;
    _TMP32 = inversesqrt(_a0135);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0141 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0141);
    _TMP142 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP142*_TMP142*(3.00000000E+00 - 2.00000000E+00*_TMP142);
    _TMP13 = _TMP26*_TMP26;
    _TMP14 = dot(_dCL1, _dCD1);
    _TMP31 = min(1.00000000E+00, _TMP14);
    _TMP152 = max(0.00000000E+00, _TMP31);
    _diff0159 = _TMP1.xyz - _TMP4.xyz;
    _ravg0159 = (_TMP1.x + _TMP4.x)*5.00000000E-01;
    _diff0159 = _diff0159*_diff0159*vec3(2.00000000E+00 + _ravg0159, 4.00000000E+00, 3.00000000E+00 - _ravg0159);
    _a0161 = _diff0159.x + _diff0159.y + _diff0159.z;
    _TMP32 = inversesqrt(_a0161);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0167 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0167);
    _TMP168 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP168*_TMP168*(3.00000000E+00 - 2.00000000E+00*_TMP168);
    _TMP16 = _TMP26*_TMP26;
    _TMP17 = dot(_dCR1, _dCU1);
    _TMP31 = min(1.00000000E+00, _TMP17);
    _TMP178 = max(0.00000000E+00, _TMP31);
    _diff0185 = _TMP2.xyz - _TMP3.xyz;
    _ravg0185 = (_TMP2.x + _TMP3.x)*5.00000000E-01;
    _diff0185 = _diff0185*_diff0185*vec3(2.00000000E+00 + _ravg0185, 4.00000000E+00, 3.00000000E+00 - _ravg0185);
    _a0187 = _diff0185.x + _diff0185.y + _diff0185.z;
    _TMP32 = inversesqrt(_a0187);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0193 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0193);
    _TMP194 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP194*_TMP194*(3.00000000E+00 - 2.00000000E+00*_TMP194);
    _TMP19 = _TMP26*_TMP26;
    _TMP20 = dot(_dCR1, _dCD1);
    _TMP31 = min(1.00000000E+00, _TMP20);
    _TMP204 = max(0.00000000E+00, _TMP31);
    _diff0211 = _TMP2.xyz - _TMP4.xyz;
    _ravg0211 = (_TMP2.x + _TMP4.x)*5.00000000E-01;
    _diff0211 = _diff0211*_diff0211*vec3(2.00000000E+00 + _ravg0211, 4.00000000E+00, 3.00000000E+00 - _ravg0211);
    _a0213 = _diff0211.x + _diff0211.y + _diff0211.z;
    _TMP32 = inversesqrt(_a0213);
    _TMP25 = 1.00000000E+00/_TMP32;
    _x0219 = (_TMP25 - 3.00000000E+00)/-3.00000000E+00;
    _TMP31 = min(1.00000000E+00, _x0219);
    _TMP220 = max(0.00000000E+00, _TMP31);
    _TMP26 = _TMP220*_TMP220*(3.00000000E+00 - 2.00000000E+00*_TMP220);
    _TMP22 = _TMP26*_TMP26;
    _c0227 = _TMP126*_TMP13;
    _d0227 = _TMP152*_TMP16;
    _e0227 = _TMP178*_TMP19;
    _f0227 = _TMP204*_TMP22;
    _TMP27 = min(_e0227, _f0227);
    _TMP28 = min(_d0227, _TMP27);
    _TMP29 = min(_c0227, _TMP28);
    _TMP30 = min(_res.y, _TMP29);
    _TMP226 = min(_res.x, _TMP30);
    _res.z = _TMP226;
    FragColor.xyz = _res;
    return;
} 
#endif
