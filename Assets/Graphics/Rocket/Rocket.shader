// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33251,y:32728,varname:node_3138,prsc:2|emission-3147-RGB,alpha-8542-OUT;n:type:ShaderForge.SFN_TexCoord,id:357,x:32267,y:32836,varname:node_357,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6064,x:32480,y:32836,varname:node_6064,prsc:2,spu:-1,spv:0|UVIN-357-UVOUT,DIST-8153-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8219,x:32123,y:33119,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_8219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:6716,x:32123,y:32964,varname:node_6716,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8153,x:32299,y:32984,varname:node_8153,prsc:2|A-6716-T,B-8219-OUT;n:type:ShaderForge.SFN_Tex2d,id:3147,x:32685,y:32883,ptovrint:False,ptlb:node_3147,ptin:_node_3147,varname:node_3147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fd6e57c829de5fd48bb1cfe0f325f449,ntxv:0,isnm:False|UVIN-6064-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4396,x:32685,y:33067,varname:node_4396,prsc:2,v1:3;n:type:ShaderForge.SFN_Power,id:8542,x:32904,y:33004,varname:node_8542,prsc:2|VAL-3147-B,EXP-4396-OUT;proporder:8219-3147;pass:END;sub:END;*/

Shader "Shader Forge/rocketShader" {
    Properties {
        _Speed ("Speed", Float ) = 1
        _node_3147 ("node_3147", 2D) = "white" {}
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
            uniform float _Speed;
            uniform sampler2D _node_3147; uniform float4 _node_3147_ST;
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
                float4 node_6716 = _Time;
                float2 node_6064 = (i.uv0+(node_6716.g*_Speed)*float2(-1,0));
                float4 _node_3147_var = tex2D(_node_3147,TRANSFORM_TEX(node_6064, _node_3147));
                float3 emissive = _node_3147_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,pow(_node_3147_var.b,3.0));
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
