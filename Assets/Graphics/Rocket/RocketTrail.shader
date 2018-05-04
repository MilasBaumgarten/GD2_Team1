// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33403,y:33336,varname:node_1873,prsc:2|emission-1670-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32864,y:33363,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:603,x:33124,y:33258,cmnt:A,varname:node_603,prsc:2|A-7463-A,B-5376-A,C-2838-OUT;n:type:ShaderForge.SFN_Color,id:7463,x:32331,y:33302,ptovrint:False,ptlb:Color_1,ptin:_Color_1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1294118,c2:0.3176471,c3:0.9294118,c4:1;n:type:ShaderForge.SFN_Tex2d,id:759,x:31891,y:33381,ptovrint:False,ptlb:Panning Noise,ptin:_PanningNoise,varname:node_2024,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7659-UVOUT;n:type:ShaderForge.SFN_Time,id:6385,x:31367,y:33410,varname:node_6385,prsc:2;n:type:ShaderForge.SFN_Panner,id:7659,x:31735,y:33381,varname:node_7659,prsc:2,spu:-1,spv:0|UVIN-3066-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3066,x:31555,y:33322,varname:node_3066,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:434,x:31555,y:33464,varname:node_434,prsc:2|A-6385-T,B-2210-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2210,x:31367,y:33557,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_UVTile,id:2240,x:31582,y:33782,varname:node_2240,prsc:2|UVIN-9667-UVOUT,WDT-7887-R,HGT-7887-R,TILE-480-OUT;n:type:ShaderForge.SFN_Panner,id:3041,x:31760,y:33782,varname:node_3041,prsc:2,spu:1,spv:1|UVIN-2240-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7887,x:31373,y:33782,ptovrint:False,ptlb:UV Noise,ptin:_UVNoise,varname:_Noise_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:480,x:31373,y:33957,varname:node_480,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:9667,x:31373,y:33630,varname:node_9667,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6377,x:31975,y:33782,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Noise_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3041-UVOUT;n:type:ShaderForge.SFN_Add,id:2838,x:32161,y:33617,varname:node_2838,prsc:2|A-759-R,B-6377-R;n:type:ShaderForge.SFN_Lerp,id:1670,x:32959,y:33503,varname:node_1670,prsc:2|A-7463-RGB,B-6453-RGB,T-6667-OUT;n:type:ShaderForge.SFN_Color,id:6453,x:32351,y:33488,ptovrint:False,ptlb:Color_2,ptin:_Color_2,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8455882,c2:0.3046604,c3:0.4949178,c4:1;n:type:ShaderForge.SFN_Vector1,id:228,x:32161,y:33789,varname:node_228,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7858,x:32351,y:33644,varname:node_7858,prsc:2|A-2838-OUT,B-228-OUT;n:type:ShaderForge.SFN_Power,id:2400,x:32537,y:33644,varname:node_2400,prsc:2|VAL-7858-OUT,EXP-8350-OUT;n:type:ShaderForge.SFN_Vector1,id:8350,x:32351,y:33789,varname:node_8350,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:6667,x:32722,y:33644,varname:node_6667,prsc:2|A-2400-OUT,B-8350-OUT;proporder:7463-759-7887-6377-6453;pass:END;sub:END;*/

Shader "Shader Forge/sprite" {
    Properties {
        _Color_1 ("Color_1", Color) = (0.1294118,0.3176471,0.9294118,1)
        _PanningNoise ("Panning Noise", 2D) = "white" {}
        _UVNoise ("UV Noise", 2D) = "white" {}
        _Texture ("Texture", 2D) = "white" {}
        _Color_2 ("Color_2", Color) = (0.8455882,0.3046604,0.4949178,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
        _Stencil ("Stencil ID", Float) = 0
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilComp ("Stencil Comparison", Float) = 8
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilOpFail ("Stencil Fail Operation", Float) = 0
        _StencilOpZFail ("Stencil Z-Fail Operation", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            Stencil {
                Ref [_Stencil]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilOp]
                Fail [_StencilOpFail]
                ZFail [_StencilOpZFail]
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color_1;
            uniform sampler2D _PanningNoise; uniform float4 _PanningNoise_ST;
            uniform sampler2D _UVNoise; uniform float4 _UVNoise_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_4473 = _Time;
                float2 node_7659 = (i.uv0+node_4473.g*float2(-1,0));
                float4 _PanningNoise_var = tex2D(_PanningNoise,TRANSFORM_TEX(node_7659, _PanningNoise));
                float4 _UVNoise_var = tex2D(_UVNoise,TRANSFORM_TEX(i.uv0, _UVNoise));
                float node_480 = 0.5;
                float2 node_2240_tc_rcp = float2(1.0,1.0)/float2( _UVNoise_var.r, _UVNoise_var.r );
                float node_2240_ty = floor(node_480 * node_2240_tc_rcp.x);
                float node_2240_tx = node_480 - _UVNoise_var.r * node_2240_ty;
                float2 node_2240 = (i.uv0 + float2(node_2240_tx, node_2240_ty)) * node_2240_tc_rcp;
                float2 node_3041 = (node_2240+node_4473.g*float2(1,1));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_3041, _Texture));
                float node_2838 = (_PanningNoise_var.r+_Texture_var.r);
                float node_8350 = 2.0;
                float3 node_1670 = lerp(_Color_1.rgb,_Color_2.rgb,(pow((node_2838*0.5),node_8350)*node_8350));
                float3 emissive = node_1670;
                float3 finalColor = emissive;
                float node_603 = (_Color_1.a*i.vertexColor.a*node_2838); // A
                return fixed4(finalColor,node_603);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
