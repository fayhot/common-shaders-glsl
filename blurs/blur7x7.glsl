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
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
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
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
out_vertex _ret_0;
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
    out_vertex _OUT;
    vec2 _dxdy_scale;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _dxdy_scale = InputSize/OutputSize;
    _OUT._blur_dxdy = _dxdy_scale/TextureSize;
    _ret_0._position1 = _r0006;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._blur_dxdy = _OUT._blur_dxdy;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._blur_dxdy;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._blur_dxdy;
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
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
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
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
vec4 _TMP25;
float _TMP8;
float _TMP7;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
vec3 _TMP30;
float _texel0to1ratio0033;
float _texel2to3ratio0033;
vec2 _sample1d_texel_offset0033;
vec2 _sample2d_texel_offset0033;
vec2 _sample3d_texel_offset0033;
vec2 _sample4d_texel_offset0033;
float _w10033;
float _w2_30033;
float _w40033;
float _weight_sum_inv0033;
vec2 _dxdy_mirror_x0033;
vec2 _dxdy_mirror_y0033;
vec2 _dxdy_mirror_xy0033;
vec3 _sample1a0033;
vec3 _sample2a0033;
vec3 _sample3a0033;
vec3 _sample4a0033;
vec3 _sample1b0033;
vec3 _sample2b0033;
vec3 _sample3b0033;
vec3 _sample4b0033;
vec3 _sample1c0033;
vec3 _sample2c0033;
vec3 _sample3c0033;
vec3 _sample4c0033;
vec3 _sample1d0033;
vec3 _sample2d0033;
vec3 _sample3d0033;
vec3 _sum0033;
float _TMP34;
float _TMP38;
float _TMP42;
float _TMP48;
float _x0049;
float _TMP54;
float _x0055;
float _TMP60;
float _x0061;
float _TMP66;
float _x0067;
float _TMP72;
float _x0073;
float _TMP78;
float _x0079;
float _TMP84;
float _x0085;
float _TMP90;
float _x0091;
float _TMP96;
float _x0097;
vec2 _tex_coords0101;
vec2 _tex_coords0107;
vec2 _tex_coords0113;
vec2 _tex_coords0119;
vec2 _tex_coords0125;
vec2 _tex_coords0131;
vec2 _tex_coords0137;
vec2 _tex_coords0143;
vec2 _tex_coords0149;
vec2 _tex_coords0155;
vec2 _tex_coords0161;
vec2 _tex_coords0167;
vec2 _tex_coords0173;
vec2 _tex_coords0179;
vec2 _tex_coords0185;
vec2 _tex_coords0191;
vec4 _color0197;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP34 = pow(2.71828198E+00, -2.69917697E-01);
    _TMP38 = pow(2.71828198E+00, -1.07967079E+00);
    _TMP42 = pow(2.71828198E+00, -2.42925930E+00);
    _texel0to1ratio0033 = _TMP34/(5.00000000E-01 + _TMP34);
    _texel2to3ratio0033 = _TMP42/(_TMP38 + _TMP42);
    _sample1d_texel_offset0033 = vec2(_texel0to1ratio0033, _texel0to1ratio0033);
    _sample2d_texel_offset0033 = vec2( 2.00000000E+00, 0.00000000E+00) + vec2(_texel2to3ratio0033, _texel0to1ratio0033);
    _sample3d_texel_offset0033 = vec2( 0.00000000E+00, 2.00000000E+00) + vec2(_texel0to1ratio0033, _texel2to3ratio0033);
    _sample4d_texel_offset0033 = vec2( 2.00000000E+00, 2.00000000E+00) + vec2(_texel2to3ratio0033, _texel2to3ratio0033);
    _TMP0 = dot(vec2( 1.00000000E+00, 0.00000000E+00), vec2( 1.00000000E+00, 0.00000000E+00));
    _x0049 = -_TMP0*2.69917697E-01;
    _TMP48 = pow(2.71828198E+00, _x0049);
    _TMP1 = dot(vec2( 2.00000000E+00, 0.00000000E+00), vec2( 2.00000000E+00, 0.00000000E+00));
    _x0055 = -_TMP1*2.69917697E-01;
    _TMP54 = pow(2.71828198E+00, _x0055);
    _TMP2 = dot(vec2( 3.00000000E+00, 0.00000000E+00), vec2( 3.00000000E+00, 0.00000000E+00));
    _x0061 = -_TMP2*2.69917697E-01;
    _TMP60 = pow(2.71828198E+00, _x0061);
    _TMP3 = dot(vec2( 1.00000000E+00, 1.00000000E+00), vec2( 1.00000000E+00, 1.00000000E+00));
    _x0067 = -_TMP3*2.69917697E-01;
    _TMP66 = pow(2.71828198E+00, _x0067);
    _TMP4 = dot(vec2( 2.00000000E+00, 1.00000000E+00), vec2( 2.00000000E+00, 1.00000000E+00));
    _x0073 = -_TMP4*2.69917697E-01;
    _TMP72 = pow(2.71828198E+00, _x0073);
    _TMP5 = dot(vec2( 3.00000000E+00, 1.00000000E+00), vec2( 3.00000000E+00, 1.00000000E+00));
    _x0079 = -_TMP5*2.69917697E-01;
    _TMP78 = pow(2.71828198E+00, _x0079);
    _TMP6 = dot(vec2( 2.00000000E+00, 2.00000000E+00), vec2( 2.00000000E+00, 2.00000000E+00));
    _x0085 = -_TMP6*2.69917697E-01;
    _TMP84 = pow(2.71828198E+00, _x0085);
    _TMP7 = dot(vec2( 3.00000000E+00, 2.00000000E+00), vec2( 3.00000000E+00, 2.00000000E+00));
    _x0091 = -_TMP7*2.69917697E-01;
    _TMP90 = pow(2.71828198E+00, _x0091);
    _TMP8 = dot(vec2( 3.00000000E+00, 3.00000000E+00), vec2( 3.00000000E+00, 3.00000000E+00));
    _x0097 = -_TMP8*2.69917697E-01;
    _TMP96 = pow(2.71828198E+00, _x0097);
    _w10033 = 2.50000000E-01 + _TMP48 + _TMP66;
    _w2_30033 = (_TMP54 + _TMP60)*5.00000000E-01 + _TMP72 + _TMP78;
    _w40033 = _TMP84 + 2.00000000E+00*_TMP90 + _TMP96;
    _weight_sum_inv0033 = 1.00000000E+00/(4.00000000E+00*(_w10033 + 2.00000000E+00*_w2_30033 + _w40033));
    _dxdy_mirror_x0033 = TEX1.xy*vec2( -1.00000000E+00, 1.00000000E+00);
    _dxdy_mirror_y0033 = TEX1.xy*vec2( 1.00000000E+00, -1.00000000E+00);
    _dxdy_mirror_xy0033 = -TEX1.xy;
    _tex_coords0101 = TEX0.xy + _dxdy_mirror_xy0033*_sample1d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0101);
    _sample1a0033 = _TMP25.xyz;
    _tex_coords0107 = TEX0.xy + _dxdy_mirror_xy0033*_sample2d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0107);
    _sample2a0033 = _TMP25.xyz;
    _tex_coords0113 = TEX0.xy + _dxdy_mirror_xy0033*_sample3d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0113);
    _sample3a0033 = _TMP25.xyz;
    _tex_coords0119 = TEX0.xy + _dxdy_mirror_xy0033*_sample4d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0119);
    _sample4a0033 = _TMP25.xyz;
    _tex_coords0125 = TEX0.xy + _dxdy_mirror_y0033*_sample1d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0125);
    _sample1b0033 = _TMP25.xyz;
    _tex_coords0131 = TEX0.xy + _dxdy_mirror_y0033*_sample2d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0131);
    _sample2b0033 = _TMP25.xyz;
    _tex_coords0137 = TEX0.xy + _dxdy_mirror_y0033*_sample3d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0137);
    _sample3b0033 = _TMP25.xyz;
    _tex_coords0143 = TEX0.xy + _dxdy_mirror_y0033*_sample4d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0143);
    _sample4b0033 = _TMP25.xyz;
    _tex_coords0149 = TEX0.xy + _dxdy_mirror_x0033*_sample1d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0149);
    _sample1c0033 = _TMP25.xyz;
    _tex_coords0155 = TEX0.xy + _dxdy_mirror_x0033*_sample2d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0155);
    _sample2c0033 = _TMP25.xyz;
    _tex_coords0161 = TEX0.xy + _dxdy_mirror_x0033*_sample3d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0161);
    _sample3c0033 = _TMP25.xyz;
    _tex_coords0167 = TEX0.xy + _dxdy_mirror_x0033*_sample4d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0167);
    _sample4c0033 = _TMP25.xyz;
    _tex_coords0173 = TEX0.xy + TEX1.xy*_sample1d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0173);
    _sample1d0033 = _TMP25.xyz;
    _tex_coords0179 = TEX0.xy + TEX1.xy*_sample2d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0179);
    _sample2d0033 = _TMP25.xyz;
    _tex_coords0185 = TEX0.xy + TEX1.xy*_sample3d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0185);
    _sample3d0033 = _TMP25.xyz;
    _tex_coords0191 = TEX0.xy + TEX1.xy*_sample4d_texel_offset0033;
    _TMP25 = COMPAT_TEXTURE(Texture, _tex_coords0191);
    _sum0033 = _w10033*(_sample1a0033 + _sample1b0033 + _sample1c0033 + _sample1d0033);
    _sum0033 = _sum0033 + _w2_30033*(_sample2a0033 + _sample2b0033 + _sample2c0033 + _sample2d0033);
    _sum0033 = _sum0033 + _w2_30033*(_sample3a0033 + _sample3b0033 + _sample3c0033 + _sample3d0033);
    _sum0033 = _sum0033 + _w40033*(_sample4a0033 + _sample4b0033 + _sample4c0033 + _TMP25.xyz);
    _TMP30 = _sum0033*_weight_sum_inv0033;
    _color0197 = vec4(_TMP30.x, _TMP30.y, _TMP30.z, 1.00000000E+00);
    FragColor = _color0197;
    return;
} 
#endif
