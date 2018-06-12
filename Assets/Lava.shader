// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7052,x:33281,y:32653,varname:node_7052,prsc:2|emission-4708-OUT;n:type:ShaderForge.SFN_Tex2d,id:9421,x:31386,y:32911,ptovrint:False,ptlb:node_9421,ptin:_node_9421,varname:node_9421,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4708,x:33069,y:32743,varname:node_4708,prsc:2|A-6551-RGB,B-4688-OUT,T-6992-OUT;n:type:ShaderForge.SFN_Color,id:6551,x:32666,y:32439,ptovrint:False,ptlb:node_6551,ptin:_node_6551,varname:node_6551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1544118,c2:0.1544118,c3:0.1544118,c4:1;n:type:ShaderForge.SFN_Color,id:4587,x:31770,y:32196,ptovrint:False,ptlb:node_4587,ptin:_node_4587,varname:node_4587,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5712,x:32462,y:32602,varname:node_5712,prsc:2|A-4587-RGB,B-5657-RGB,T-7732-OUT;n:type:ShaderForge.SFN_Color,id:5657,x:31770,y:32362,ptovrint:False,ptlb:node_5657,ptin:_node_5657,varname:node_5657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7337728,c3:0.4485294,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1392,x:31570,y:33171,ptovrint:False,ptlb:node_1392,ptin:_node_1392,varname:node_1392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44b66fc4e87522748b156ff997811058,ntxv:0,isnm:False|UVIN-8340-UVOUT;n:type:ShaderForge.SFN_Power,id:1636,x:31574,y:32928,varname:node_1636,prsc:2|VAL-9421-R,EXP-396-OUT;n:type:ShaderForge.SFN_Vector1,id:396,x:31386,y:33094,varname:node_396,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Divide,id:4931,x:31760,y:32928,varname:node_4931,prsc:2|A-1636-OUT,B-6000-OUT;n:type:ShaderForge.SFN_Vector1,id:6000,x:31574,y:33094,varname:node_6000,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Panner,id:8340,x:31394,y:33171,varname:node_8340,prsc:2,spu:0,spv:1|UVIN-2542-UVOUT,DIST-954-OUT;n:type:ShaderForge.SFN_TexCoord,id:2542,x:31168,y:33171,varname:node_2542,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:344,x:30932,y:33312,varname:node_344,prsc:2;n:type:ShaderForge.SFN_Vector1,id:2762,x:31570,y:33337,varname:node_2762,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:8760,x:31757,y:33285,varname:node_8760,prsc:2|A-1392-R,B-2762-OUT;n:type:ShaderForge.SFN_Subtract,id:6803,x:32169,y:33029,varname:node_6803,prsc:2|A-4931-OUT,B-8760-OUT;n:type:ShaderForge.SFN_Clamp01,id:6992,x:32512,y:33000,varname:node_6992,prsc:2|IN-6803-OUT;n:type:ShaderForge.SFN_Vector1,id:8487,x:30944,y:33443,varname:node_8487,prsc:2,v1:75;n:type:ShaderForge.SFN_Divide,id:954,x:31168,y:33343,varname:node_954,prsc:2|A-344-T,B-8487-OUT;n:type:ShaderForge.SFN_Tex2d,id:6321,x:31770,y:32537,ptovrint:False,ptlb:node_1392_copy,ptin:_node_1392_copy,varname:_node_1392_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44b66fc4e87522748b156ff997811058,ntxv:0,isnm:False|UVIN-1968-UVOUT;n:type:ShaderForge.SFN_Panner,id:1968,x:31598,y:32537,varname:node_1968,prsc:2,spu:0,spv:1|UVIN-2761-UVOUT,DIST-1765-OUT;n:type:ShaderForge.SFN_TexCoord,id:2761,x:31397,y:32537,varname:node_2761,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2616,x:31185,y:32547,varname:node_2616,prsc:2;n:type:ShaderForge.SFN_Vector1,id:3012,x:31185,y:32730,varname:node_3012,prsc:2,v1:20;n:type:ShaderForge.SFN_Divide,id:1765,x:31397,y:32696,varname:node_1765,prsc:2|A-2616-T,B-3012-OUT;n:type:ShaderForge.SFN_Vector1,id:7351,x:31800,y:32724,varname:node_7351,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Clamp01,id:7732,x:32209,y:32642,varname:node_7732,prsc:2|IN-4851-OUT;n:type:ShaderForge.SFN_Power,id:4851,x:31997,y:32642,varname:node_4851,prsc:2|VAL-6321-R,EXP-7351-OUT;n:type:ShaderForge.SFN_Power,id:4688,x:32666,y:32653,varname:node_4688,prsc:2|VAL-5712-OUT,EXP-9041-OUT;n:type:ShaderForge.SFN_Vector1,id:9041,x:32462,y:32755,varname:node_9041,prsc:2,v1:1.3;proporder:9421-6551-4587-5657-1392-6321;pass:END;sub:END;*/

Shader "Custom/Lava" {
    Properties {
        _node_9421 ("node_9421", 2D) = "white" {}
        _node_6551 ("node_6551", Color) = (0.1544118,0.1544118,0.1544118,1)
        _node_4587 ("node_4587", Color) = (1,0,0,1)
        _node_5657 ("node_5657", Color) = (1,0.7337728,0.4485294,1)
        _node_1392 ("node_1392", 2D) = "white" {}
        _node_1392_copy ("node_1392_copy", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_9421; uniform float4 _node_9421_ST;
            uniform float4 _node_6551;
            uniform float4 _node_4587;
            uniform float4 _node_5657;
            uniform sampler2D _node_1392; uniform float4 _node_1392_ST;
            uniform sampler2D _node_1392_copy; uniform float4 _node_1392_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2616 = _Time;
                float2 node_1968 = (i.uv0+(node_2616.g/20.0)*float2(0,1));
                float4 _node_1392_copy_var = tex2D(_node_1392_copy,TRANSFORM_TEX(node_1968, _node_1392_copy));
                float4 _node_9421_var = tex2D(_node_9421,TRANSFORM_TEX(i.uv0, _node_9421));
                float4 node_344 = _Time;
                float2 node_8340 = (i.uv0+(node_344.g/75.0)*float2(0,1));
                float4 _node_1392_var = tex2D(_node_1392,TRANSFORM_TEX(node_8340, _node_1392));
                float3 emissive = lerp(_node_6551.rgb,pow(lerp(_node_4587.rgb,_node_5657.rgb,saturate(pow(_node_1392_copy_var.r,0.4))),1.3),saturate(((pow(_node_9421_var.r,1.5)/0.75)-(_node_1392_var.r*0.1))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
