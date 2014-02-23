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
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
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
    vec2 _texCoord1;
    vec4 _t1;
};

out_vertex _ret_0;

input_dummy _IN1;
vec4 _r0010;
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
    vec2 _ps;

    _r0010 = VertexCoord.x*MVPMatrix[0];
    _r0010 = _r0010 + VertexCoord.y*MVPMatrix[1];
    _r0010 = _r0010 + VertexCoord.z*MVPMatrix[2];
    _r0010 = _r0010 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(float((1.00000000E+000/TextureSize.x)), float((1.00000000E+000/TextureSize.y)));
    _OUT._t1.xy = vec2(0.00000000E+000, -_ps.y);
    _OUT._t1.zw = vec2(-_ps.x, 0.00000000E+000);
    _ret_0._position1 = _r0010;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    gl_Position = vec4(float(_r0010.x), float(_r0010.y), float(_r0010.z), float(_r0010.w));
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
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
COMPAT_VARYING     vec4 _t1;
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
    vec4 _t1;
};

vec4 _ret_0;
vec3 _TMP18;
vec3 _TMP19;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP20;
float _TMP26;
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
vec2 _x0034;
vec2 _val0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
float _TMP113;
float _a0116;
float _TMP117;
float _a0120;
float _TMP121;
float _a0124;
float _TMP125;
float _a0128;
float _TMP129;
float _a0132;
float _TMP135;
float _a0138;
float _TMP139;
float _a0142;
float _TMP143;
float _a0146;
float _TMP147;
float _a0150;
float _TMP151;
float _a0154;
float _TMP155;
float _a0158;
float _TMP159;
float _a0162;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;

 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{

    bool _edr;
    bool _px;
    bool _interp_restriction_lv1;
    bool _nc;
    bool _fx;
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    vec3 _B1;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _F4;
    vec3 _I4;
    vec3 _H5;
    vec3 _I5;
    float _b1;
    float _c1;
    float _d1;
    float _e1;
    float _f1;
    float _g3;
    float _h1;
    float _i;
    float _i4;
    float _i5;
    float _h5;
    float _f4;

    _x0034 = TEX0.xy*TextureSize;
    _TMP0 = fract(_x0034);
    _pos = _TMP0 - vec2( 5.00000000E-001, 5.00000000E-001);
    _val0036 = vec2(float((_pos.x > 0.00000000E+000)), float((_pos.y > 0.00000000E+000)));
    _dir = _val0036 - vec2(float((_pos.x < 0.00000000E+000)), float((_pos.y < 0.00000000E+000)));
    _g1 = _dir*vec2(float(TEX1.x), float(TEX1.y));
    _g2 = _dir*vec2(float(TEX1.z), float(TEX1.w));
    _c0038 = TEX0.xy + _g1;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0038);
    _B1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0040 = (TEX0.xy + _g1) - _g2;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0040);
    _C = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0042 = TEX0.xy + _g2;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0042);
    _D = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _E = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0046 = TEX0.xy - _g2;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0046);
    _F = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0048 = (TEX0.xy - _g1) + _g2;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0048);
    _G = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0050 = TEX0.xy - _g1;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0050);
    _H = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0052 = (TEX0.xy - _g1) - _g2;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0052);
    _I = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0054 = TEX0.xy - 2.00000000E+000*_g2;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0054);
    _F4 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0056 = (TEX0.xy - _g1) - 2.00000000E+000*_g2;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0056);
    _I4 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0058 = TEX0.xy - 2.00000000E+000*_g1;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0058);
    _H5 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0060 = (TEX0.xy - 2.00000000E+000*_g1) - _g2;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0060);
    _I5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP26 = dot(vec3(float(_B1.x), float(_B1.y), float(_B1.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _b1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _c1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _d1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _e1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _f1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _g3 = float(_TMP20);
    _TMP26 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _h1 = float(_TMP20);
    _TMP26 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _i = float(_TMP20);
    _TMP26 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _i4 = float(_TMP20);
    _TMP26 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _i5 = float(_TMP20);
    _TMP26 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _h5 = float(_TMP20);
    _TMP26 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+001, 2.81718750E+001, 5.47265625E+000));
    _TMP20 = float(_TMP26);
    _f4 = float(_TMP20);
    _TMP13 = dot(_dir, _pos);
    _fx = _TMP13 > 7.50000000E-001;
    _interp_restriction_lv1 = _e1 != _f1 && _e1 != _h1;
    _a0116 = _e1 - _c1;
    _TMP113 = abs(_a0116);
    _a0120 = _e1 - _g3;
    _TMP117 = abs(_a0120);
    _a0124 = _i - _h5;
    _TMP121 = abs(_a0124);
    _a0128 = _i - _f4;
    _TMP125 = abs(_a0128);
    _a0132 = _h1 - _f1;
    _TMP129 = abs(_a0132);
    _TMP14 = _TMP113 + _TMP117 + _TMP121 + _TMP125 + 4.00000000E+000*_TMP129;
    _a0138 = _h1 - _d1;
    _TMP135 = abs(_a0138);
    _a0142 = _h1 - _i5;
    _TMP139 = abs(_a0142);
    _a0146 = _f1 - _i4;
    _TMP143 = abs(_a0146);
    _a0150 = _f1 - _b1;
    _TMP147 = abs(_a0150);
    _a0154 = _e1 - _i;
    _TMP151 = abs(_a0154);
    _TMP15 = _TMP135 + _TMP139 + _TMP143 + _TMP147 + 4.00000000E+000*_TMP151;
    _edr = _TMP14 < _TMP15 && _interp_restriction_lv1;
    _nc = _edr && _fx;
    _a0158 = _e1 - _f1;
    _TMP155 = abs(_a0158);
    _a0162 = _e1 - _h1;
    _TMP159 = abs(_a0162);
    _px = _TMP155 <= _TMP159;
    if (_nc) { 
        if (_px) { 
            _TMP19 = _F;
        } else {
            _TMP19 = _H;
        } 
        _TMP18 = _TMP19;
    } else {
        _TMP18 = _E;
    } 
    _ret_0 = vec4(_TMP18.x, _TMP18.y, _TMP18.z, 1.00000000E+000);
    FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
#endif