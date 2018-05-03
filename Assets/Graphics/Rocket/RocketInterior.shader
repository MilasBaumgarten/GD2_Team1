// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33559,y:32682,varname:node_3138,prsc:2|emission-7688-OUT,alpha-8963-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32448,y:32609,ptovrint:False,ptlb:Color_1,ptin:_Color_1,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1294118,c2:0.3176471,c3:0.9294118,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2024,x:32231,y:32867,ptovrint:False,ptlb:Panning Noise,ptin:_PanningNoise,varname:node_2024,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-142-UVOUT;n:type:ShaderForge.SFN_Time,id:2699,x:31707,y:32896,varname:node_2699,prsc:2;n:type:ShaderForge.SFN_Panner,id:142,x:32075,y:32867,varname:node_142,prsc:2,spu:1,spv:0|UVIN-4105-UVOUT,DIST-6539-OUT;n:type:ShaderForge.SFN_TexCoord,id:4105,x:31895,y:32808,varname:node_4105,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6539,x:31895,y:32950,varname:node_6539,prsc:2|A-2699-T,B-1698-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1698,x:31707,y:33043,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_UVTile,id:9070,x:31922,y:33268,varname:node_9070,prsc:2|UVIN-5223-UVOUT,WDT-6888-R,HGT-6888-R,TILE-9166-OUT;n:type:ShaderForge.SFN_Panner,id:6,x:32100,y:33268,varname:node_6,prsc:2,spu:1,spv:1|UVIN-9070-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6888,x:31713,y:33268,ptovrint:False,ptlb:UV Noise,ptin:_UVNoise,varname:_Noise_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:9166,x:31713,y:33443,varname:node_9166,prsc:2,v1:0.5;n:type:ShaderForge.SFN_TexCoord,id:5223,x:31713,y:33116,varname:node_5223,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:1619,x:32315,y:33268,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Noise_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6-UVOUT;n:type:ShaderForge.SFN_Add,id:8963,x:32501,y:33103,varname:node_8963,prsc:2|A-2024-R,B-1619-R;n:type:ShaderForge.SFN_Lerp,id:7688,x:33307,y:32779,varname:node_7688,prsc:2|A-7241-RGB,B-9413-RGB,T-961-OUT;n:type:ShaderForge.SFN_Color,id:9413,x:32448,y:32786,ptovrint:False,ptlb:Color_2,ptin:_Color_2,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8455882,c2:0.3046604,c3:0.4949178,c4:1;n:type:ShaderForge.SFN_Vector1,id:1521,x:32501,y:33275,varname:node_1521,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5129,x:32691,y:33130,varname:node_5129,prsc:2|A-8963-OUT,B-1521-OUT;n:type:ShaderForge.SFN_Power,id:19,x:32877,y:33130,varname:node_19,prsc:2|VAL-5129-OUT,EXP-1168-OUT;n:type:ShaderForge.SFN_Vector1,id:1168,x:32691,y:33275,varname:node_1168,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:961,x:33062,y:33130,varname:node_961,prsc:2|A-19-OUT,B-1168-OUT;proporder:7241-9413-6888-2024-1698-1619;pass:END;sub:END;*/

Shader "Shader Forge/rocketInterior" {
    Properties {
        _Color_1 ("Color_1", Color) = (0.1294118,0.3176471,0.9294118,1)
        _Color_2 ("Color_2", Color) = (0.8455882,0.3046604,0.4949178,1)
        _UVNoise ("UV Noise", 2D) = "white" {}
        _PanningNoise ("Panning Noise", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.2
        _Texture ("Texture", 2D) = "white" {}
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color_1;
            uniform sampler2D _PanningNoise; uniform float4 _PanningNoise_ST;
            uniform float _Speed;
            uniform sampler2D _UVNoise; uniform float4 _UVNoise_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color_2;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2699 = _Time;
                float2 node_142 = (i.uv0+(node_2699.g*_Speed)*float2(1,0));
                float4 _PanningNoise_var = tex2D(_PanningNoise,TRANSFORM_TEX(node_142, _PanningNoise));
                float4 node_8199 = _Time;
                float4 _UVNoise_var = tex2D(_UVNoise,TRANSFORM_TEX(i.uv0, _UVNoise));
                float node_9166 = 0.5;
                float2 node_9070_tc_rcp = float2(1.0,1.0)/float2( _UVNoise_var.r, _UVNoise_var.r );
                float node_9070_ty = floor(node_9166 * node_9070_tc_rcp.x);
                float node_9070_tx = node_9166 - _UVNoise_var.r * node_9070_ty;
                float2 node_9070 = (i.uv0 + float2(node_9070_tx, node_9070_ty)) * node_9070_tc_rcp;
                float2 node_6 = (node_9070+node_8199.g*float2(1,1));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_6, _Texture));
                float node_8963 = (_PanningNoise_var.r+_Texture_var.r);
                float node_1168 = 2.0;
                float3 emissive = lerp(_Color_1.rgb,_Color_2.rgb,(pow((node_8963*0.5),node_1168)*node_1168));
                float3 finalColor = emissive;
                return fixed4(finalColor,node_8963);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
