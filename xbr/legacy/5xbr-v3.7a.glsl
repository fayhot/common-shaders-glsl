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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
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
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
float _TMP47;
float _TMP46;
float _TMP45;
vec3 _TMP37;
vec3 _TMP39;
vec3 _TMP41;
vec3 _TMP43;
vec3 _TMP44;
vec3 _TMP42;
vec3 _TMP40;
vec3 _TMP38;
vec3 _TMP29;
vec3 _TMP31;
vec3 _TMP33;
vec3 _TMP35;
vec3 _TMP36;
vec3 _TMP34;
vec3 _TMP32;
vec3 _TMP30;
vec4 _TMP22;
vec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
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
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0066;
vec4 _r0110;
vec4 _r0120;
vec4 _r0130;
vec4 _r0140;
vec4 _r0150;
vec4 _r0160;
vec4 _TMP171;
vec4 _a0174;
vec4 _TMP175;
vec4 _a0178;
vec4 _TMP179;
vec4 _a0182;
vec4 _TMP183;
vec4 _a0186;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP201;
vec4 _a0204;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP225;
vec4 _a0228;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP233;
vec4 _a0236;
vec3 _df0238;
vec3 _a0240;
vec3 _df0242;
vec3 _a0244;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
    vec2 _fp;
    vec3 _res;
    _x0066 = TEX0.xy*TextureSize;
    _fp = fract(_x0066);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0110.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0110.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0110.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0110.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0120.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0130.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0140.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0150.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0160.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).x > 1.50000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).y > 5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x).w > 5.00000000E-01);
    _fx_left = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).x > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).y > 1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).z > -5.00000000E-01, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x).w > 0.00000000E+00);
    _fx_up = bvec4((vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).x > 2.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).y > 0.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).z > -1.00000000E+00, (vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x).w > 5.00000000E-01);
    _interp_restriction_lv1 = bvec4(_r0130.x != _r0110.w && _r0130.x != _r0110.z, _r0130.y != _r0110.x && _r0130.y != _r0110.w, _r0130.z != _r0110.y && _r0130.z != _r0110.x, _r0130.w != _r0110.z && _r0130.w != _r0110.y);
    _interp_restriction_lv2_left = bvec4(_r0130.x != _r0120.z && _r0110.y != _r0120.z, _r0130.y != _r0120.w && _r0110.z != _r0120.w, _r0130.z != _r0120.x && _r0110.w != _r0120.x, _r0130.w != _r0120.y && _r0110.x != _r0120.y);
    _interp_restriction_lv2_up = bvec4(_r0130.x != _r0120.x && _r0110.x != _r0120.x, _r0130.y != _r0120.y && _r0110.y != _r0120.y, _r0130.z != _r0120.z && _r0110.z != _r0120.z, _r0130.w != _r0120.w && _r0110.w != _r0120.w);
    _a0174 = _r0130 - _r0120;
    _TMP171 = abs(_a0174);
    _a0178 = _r0130 - _r0120.zwxy;
    _TMP175 = abs(_a0178);
    _a0182 = _r0120.wxyz - _r0160;
    _TMP179 = abs(_a0182);
    _a0186 = _r0120.wxyz - _r0160.yzwx;
    _TMP183 = abs(_a0186);
    _a0190 = _r0110.zwxy - _r0110.wxyz;
    _TMP187 = abs(_a0190);
    _TMP21 = _TMP171 + _TMP175 + _TMP179 + _TMP183 + 4.00000000E+00*_TMP187;
    _a0196 = _r0110.zwxy - _r0110.yzwx;
    _TMP193 = abs(_a0196);
    _a0200 = _r0110.zwxy - _r0150;
    _TMP197 = abs(_a0200);
    _a0204 = _r0110.wxyz - _r0140;
    _TMP201 = abs(_a0204);
    _a0208 = _r0110.wxyz - _r0110;
    _TMP205 = abs(_a0208);
    _a0212 = _r0130 - _r0120.wxyz;
    _TMP209 = abs(_a0212);
    _TMP22 = _TMP193 + _TMP197 + _TMP201 + _TMP205 + 4.00000000E+00*_TMP209;
    _edr = bvec4(_TMP21.x < _TMP22.x && _interp_restriction_lv1.x, _TMP21.y < _TMP22.y && _interp_restriction_lv1.y, _TMP21.z < _TMP22.z && _interp_restriction_lv1.z, _TMP21.w < _TMP22.w && _interp_restriction_lv1.w);
    _a0216 = _r0110.wxyz - _r0120.zwxy;
    _TMP213 = abs(_a0216);
    _a0220 = _r0110.zwxy - _r0120;
    _TMP217 = abs(_a0220);
    _edr_left = bvec4((2.00000000E+00*_TMP213).x <= _TMP217.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP213).y <= _TMP217.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP213).z <= _TMP217.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP213).w <= _TMP217.w && _interp_restriction_lv2_left.w);
    _a0224 = _r0110.wxyz - _r0120.zwxy;
    _TMP221 = abs(_a0224);
    _a0228 = _r0110.zwxy - _r0120;
    _TMP225 = abs(_a0228);
    _edr_up = bvec4(_TMP221.x >= (2.00000000E+00*_TMP225).x && _interp_restriction_lv2_up.x, _TMP221.y >= (2.00000000E+00*_TMP225).y && _interp_restriction_lv2_up.y, _TMP221.z >= (2.00000000E+00*_TMP225).z && _interp_restriction_lv2_up.z, _TMP221.w >= (2.00000000E+00*_TMP225).w && _interp_restriction_lv2_up.w);
    _nc = bvec4(_edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x), _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y), _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z), _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w));
    _a0232 = _r0130 - _r0110.wxyz;
    _TMP229 = abs(_a0232);
    _a0236 = _r0130 - _r0110.zwxy;
    _TMP233 = abs(_a0236);
    _px = bvec4(_TMP229.x <= _TMP233.x, _TMP229.y <= _TMP233.y, _TMP229.z <= _TMP233.z, _TMP229.w <= _TMP233.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP30 = _TMP8.xyz;
        } else {
            _TMP30 = _TMP10.xyz;
        } 
        _TMP29 = _TMP30;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP32 = _TMP4.xyz;
            } else {
                _TMP32 = _TMP8.xyz;
            } 
            _TMP31 = _TMP32;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP34 = _TMP6.xyz;
                } else {
                    _TMP34 = _TMP4.xyz;
                } 
                _TMP33 = _TMP34;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP36 = _TMP10.xyz;
                    } else {
                        _TMP36 = _TMP6.xyz;
                    } 
                    _TMP35 = _TMP36;
                } else {
                    _TMP35 = _TMP7.xyz;
                } 
                _TMP33 = _TMP35;
            } 
            _TMP31 = _TMP33;
        } 
        _TMP29 = _TMP31;
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP38 = _TMP10.xyz;
        } else {
            _TMP38 = _TMP6.xyz;
        } 
        _TMP37 = _TMP38;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP40 = _TMP6.xyz;
            } else {
                _TMP40 = _TMP4.xyz;
            } 
            _TMP39 = _TMP40;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP42 = _TMP4.xyz;
                } else {
                    _TMP42 = _TMP8.xyz;
                } 
                _TMP41 = _TMP42;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP44 = _TMP8.xyz;
                    } else {
                        _TMP44 = _TMP10.xyz;
                    } 
                    _TMP43 = _TMP44;
                } else {
                    _TMP43 = _TMP7.xyz;
                } 
                _TMP41 = _TMP43;
            } 
            _TMP39 = _TMP41;
        } 
        _TMP37 = _TMP39;
    } 
    _a0240 = _TMP7.xyz - _TMP29;
    _df0238 = abs(_a0240);
    _TMP45 = _df0238.x + _df0238.y + _df0238.z;
    _a0244 = _TMP7.xyz - _TMP37;
    _df0242 = abs(_a0244);
    _TMP46 = _df0242.x + _df0242.y + _df0242.z;
    _TMP47 = float((_TMP46 >= _TMP45));
    _res = _TMP29 + _TMP47*(_TMP37 - _TMP29);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
