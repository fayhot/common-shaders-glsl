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
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
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
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
 
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
    _OUT._t1 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t2 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t3 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t4 = TexCoord.xyxy + vec4(0.00000000E+00, -2.00000000E+00*_ps.y, -2.00000000E+00*_ps.x, 0.00000000E+00);
    _OUT._t5 = TexCoord.xyxy + vec4(2.00000000E+00*_ps.x, 0.00000000E+00, 0.00000000E+00, 2.00000000E+00*_ps.y);
    _ret_0._position1 = _r0006;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
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
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
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
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
};
vec3 _TMP32;
vec3 _TMP35;
vec3 _TMP38;
vec3 _TMP39;
vec3 _TMP36;
vec3 _TMP37;
vec3 _TMP33;
vec3 _TMP34;
vec3 _TMP31;
vec3 _TMP30;
vec3 _TMP29;
vec3 _TMP28;
vec3 _TMP27;
vec3 _TMP26;
vec3 _TMP25;
vec3 _TMP24;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0044;
vec2 _x0046;
bool _TMP73;
bvec3 _a0076;
bool _TMP77;
bvec3 _a0080;
bool _TMP81;
bvec3 _a0084;
bool _TMP85;
bvec3 _a0088;
bool _TMP89;
bvec3 _a0092;
bool _TMP93;
bvec3 _a0096;
bool _TMP97;
bvec3 _a0100;
bool _TMP101;
bvec3 _a0104;
bool _TMP105;
bvec3 _a0108;
bool _TMP109;
bvec3 _a0112;
bool _TMP113;
bvec3 _a0116;
bool _TMP117;
bvec3 _a0120;
bool _TMP121;
bvec3 _a0124;
bool _TMP125;
bvec3 _a0128;
bool _TMP129;
bvec3 _a0132;
bool _TMP133;
bvec3 _a0136;
bool _TMP137;
bvec3 _a0140;
bool _TMP141;
bvec3 _a0144;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    bool _cndE;
    bool _cndD;
    bool _cndB;
    bool _cndF;
    bool _cndH;
    _x0044 = TEX0.xy*TextureSize;
    _TMP0 = fract(_x0044);
    _x0046 = 3.00000000E+00*_TMP0;
    _fp = floor(_x0046);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.xy);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xy);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _a0076 = bvec3(_TMP2.x == _TMP4.x, _TMP2.y == _TMP4.y, _TMP2.z == _TMP4.z);
    _TMP73 = _a0076.x && _a0076.y && _a0076.z;
    _a0080 = bvec3(_TMP2.x == _TMP6.x, _TMP2.y == _TMP6.y, _TMP2.z == _TMP6.z);
    _TMP77 = _a0080.x && _a0080.y && _a0080.z;
    _a0084 = bvec3(_TMP8.x == _TMP4.x, _TMP8.y == _TMP4.y, _TMP8.z == _TMP4.z);
    _TMP81 = _a0084.x && _a0084.y && _a0084.z;
    _a0088 = bvec3(_TMP8.x == _TMP6.x, _TMP8.y == _TMP6.y, _TMP8.z == _TMP6.z);
    _TMP85 = _a0088.x && _a0088.y && _a0088.z;
    _a0092 = bvec3(_TMP5.x == _TMP1.x, _TMP5.y == _TMP1.y, _TMP5.z == _TMP1.z);
    _TMP89 = _a0092.x && _a0092.y && _a0092.z;
    _a0096 = bvec3(_TMP5.x == _TMP3.x, _TMP5.y == _TMP3.y, _TMP5.z == _TMP3.z);
    _TMP93 = _a0096.x && _a0096.y && _a0096.z;
    _a0100 = bvec3(_TMP5.x == _TMP7.x, _TMP5.y == _TMP7.y, _TMP5.z == _TMP7.z);
    _TMP97 = _a0100.x && _a0100.y && _a0100.z;
    _a0104 = bvec3(_TMP5.x == _TMP9.x, _TMP5.y == _TMP9.y, _TMP5.z == _TMP9.z);
    _TMP101 = _a0104.x && _a0104.y && _a0104.z;
    _a0108 = bvec3(_TMP2.x != _TMP8.x, _TMP2.y != _TMP8.y, _TMP2.z != _TMP8.z);
    _TMP105 = _a0108.x || _a0108.y || _a0108.z;
    _a0112 = bvec3(_TMP4.x != _TMP6.x, _TMP4.y != _TMP6.y, _TMP4.z != _TMP6.z);
    _TMP109 = _a0112.x || _a0112.y || _a0112.z;
    _cndE = _TMP105 && _TMP109;
    _a0116 = bvec3(_TMP1.x != _TMP7.x, _TMP1.y != _TMP7.y, _TMP1.z != _TMP7.z);
    _TMP113 = _a0116.x || _a0116.y || _a0116.z;
    _a0120 = bvec3(_TMP5.x != _TMP11.x, _TMP5.y != _TMP11.y, _TMP5.z != _TMP11.z);
    _TMP117 = _a0120.x || _a0120.y || _a0120.z;
    _cndD = _TMP113 && _TMP117;
    _a0124 = bvec3(_TMP1.x != _TMP3.x, _TMP1.y != _TMP3.y, _TMP1.z != _TMP3.z);
    _TMP121 = _a0124.x || _a0124.y || _a0124.z;
    _a0128 = bvec3(_TMP5.x != _TMP10.x, _TMP5.y != _TMP10.y, _TMP5.z != _TMP10.z);
    _TMP125 = _a0128.x || _a0128.y || _a0128.z;
    _cndB = _TMP121 && _TMP125;
    _a0132 = bvec3(_TMP3.x != _TMP9.x, _TMP3.y != _TMP9.y, _TMP3.z != _TMP9.z);
    _TMP129 = _a0132.x || _a0132.y || _a0132.z;
    _a0136 = bvec3(_TMP5.x != _TMP12.x, _TMP5.y != _TMP12.y, _TMP5.z != _TMP12.z);
    _TMP133 = _a0136.x || _a0136.y || _a0136.z;
    _cndF = _TMP129 && _TMP133;
    _a0140 = bvec3(_TMP7.x != _TMP9.x, _TMP7.y != _TMP9.y, _TMP7.z != _TMP9.z);
    _TMP137 = _a0140.x || _a0140.y || _a0140.z;
    _a0144 = bvec3(_TMP5.x != _TMP13.x, _TMP5.y != _TMP13.y, _TMP5.z != _TMP13.z);
    _TMP141 = _a0144.x || _a0144.y || _a0144.z;
    _cndH = _TMP137 && _TMP141;
    if (_TMP73 && (_cndE || _cndD && _TMP97 || _cndB && _TMP93)) { 
        _TMP24 = _TMP4.xyz;
    } else {
        _TMP24 = _TMP5.xyz;
    } 
    if (_cndE && (_TMP73 && !_TMP93 || _TMP77 && !_TMP89)) { 
        _TMP25 = _TMP2.xyz;
    } else {
        _TMP25 = _TMP5.xyz;
    } 
    if (_TMP77 && (_cndE || _cndF && _TMP101 || _cndB && _TMP89)) { 
        _TMP26 = _TMP6.xyz;
    } else {
        _TMP26 = _TMP5.xyz;
    } 
    if (_cndE && (_TMP73 && !_TMP97 || _TMP81 && !_TMP89)) { 
        _TMP27 = _TMP4.xyz;
    } else {
        _TMP27 = _TMP5.xyz;
    } 
    if (_cndE && (_TMP77 && !_TMP101 || _TMP85 && !_TMP93)) { 
        _TMP28 = _TMP6.xyz;
    } else {
        _TMP28 = _TMP5.xyz;
    } 
    if (_TMP81 && (_cndE || _cndD && _TMP89 || _cndH && _TMP101)) { 
        _TMP29 = _TMP4.xyz;
    } else {
        _TMP29 = _TMP5.xyz;
    } 
    if (_cndE && (_TMP81 && !_TMP101 || _TMP85 && !_TMP97)) { 
        _TMP30 = _TMP8.xyz;
    } else {
        _TMP30 = _TMP5.xyz;
    } 
    if (_TMP85 && (_cndE || _cndF && _TMP93 || _cndH && _TMP97)) { 
        _TMP31 = _TMP6.xyz;
    } else {
        _TMP31 = _TMP5.xyz;
    } 
    if (_fp.y == 0.00000000E+00) { 
        if (_fp.x == 0.00000000E+00) { 
            _TMP33 = _TMP24;
        } else {
            if (_fp.x == 1.00000000E+00) { 
                _TMP34 = _TMP25;
            } else {
                _TMP34 = _TMP26;
            } 
            _TMP33 = _TMP34;
        } 
        _TMP32 = _TMP33;
    } else {
        if (_fp.y == 1.00000000E+00) { 
            if (_fp.x == 0.00000000E+00) { 
                _TMP36 = _TMP27;
            } else {
                if (_fp.x == 1.00000000E+00) { 
                    _TMP37 = _TMP5.xyz;
                } else {
                    _TMP37 = _TMP28;
                } 
                _TMP36 = _TMP37;
            } 
            _TMP35 = _TMP36;
        } else {
            if (_fp.x == 0.00000000E+00) { 
                _TMP38 = _TMP29;
            } else {
                if (_fp.x == 1.00000000E+00) { 
                    _TMP39 = _TMP30;
                } else {
                    _TMP39 = _TMP31;
                } 
                _TMP38 = _TMP39;
            } 
            _TMP35 = _TMP38;
        } 
        _TMP32 = _TMP35;
    } 
    FragColor.xyz = _TMP32;
    return;
} 
#endif
