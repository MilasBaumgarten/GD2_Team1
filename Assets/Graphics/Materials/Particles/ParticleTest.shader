// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33891,y:32654,varname:node_3138,prsc:2|emission-230-OUT,alpha-3960-OUT;n:type:ShaderForge.SFN_Tex2d,id:5520,x:32907,y:32804,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_5520,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:273ba810d359b024fa2120ecc0af5e3d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Power,id:2354,x:33232,y:32883,varname:node_2354,prsc:2|VAL-5520-B,EXP-8904-OUT;n:type:ShaderForge.SFN_Vector1,id:8904,x:32778,y:32984,varname:node_8904,prsc:2,v1:1.3;n:type:ShaderForge.SFN_Color,id:5977,x:32907,y:32605,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1294118,c2:0.3176471,c3:0.9294118,c4:0;n:type:ShaderForge.SFN_Add,id:230,x:33129,y:32671,varname:node_230,prsc:2|A-5977-RGB,B-5520-B;n:type:ShaderForge.SFN_Time,id:3258,x:32474,y:33022,varname:node_3258,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5834,x:32673,y:33057,varname:node_5834,prsc:2|A-3258-T,B-1734-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1734,x:32474,y:33174,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Sin,id:537,x:32871,y:33057,varname:node_537,prsc:2|IN-5834-OUT;n:type:ShaderForge.SFN_Add,id:1389,x:33444,y:32965,varname:node_1389,prsc:2|A-2354-OUT,B-436-OUT;n:type:ShaderForge.SFN_Abs,id:1716,x:33051,y:33057,varname:node_1716,prsc:2|IN-537-OUT;n:type:ShaderForge.SFN_Negate,id:436,x:33232,y:33057,varname:node_436,prsc:2|IN-1716-OUT;n:type:ShaderForge.SFN_Clamp01,id:3960,x:33662,y:32965,varname:node_3960,prsc:2|IN-1389-OUT;proporder:5520-5977-1734;pass:END;sub:END;*/

Shader "Shader Forge/ParticleTest" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Color ("Color", Color) = (0.1294118,0.3176471,0.9294118,0)
        _Speed ("Speed", Float ) = 0.5
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color;
            uniform float _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 emissive = (_Color.rgb+_Texture_var.b);
                float3 finalColor = emissive;
                float node_2354 = pow(_Texture_var.b,1.3);
                float4 node_3258 = _Time;
                float node_5834 = (node_3258.g*_Speed);
                float node_537 = sin(node_5834);
                float node_1389 = (node_2354+(-1*abs(node_537)));
                return fixed4(finalColor,saturate(node_1389));
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
