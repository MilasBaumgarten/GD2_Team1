// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7052,x:33281,y:32653,varname:node_7052,prsc:2|emission-4708-OUT;n:type:ShaderForge.SFN_Tex2d,id:9421,x:31762,y:33066,ptovrint:False,ptlb:HeightMap,ptin:_HeightMap,varname:node_9421,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4708,x:33069,y:32743,varname:node_4708,prsc:2|A-6551-RGB,B-4688-OUT,T-9098-OUT;n:type:ShaderForge.SFN_Color,id:6551,x:32666,y:32456,ptovrint:False,ptlb:StoneColor,ptin:_StoneColor,varname:node_6551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1544118,c2:0.1544118,c3:0.1544118,c4:1;n:type:ShaderForge.SFN_Color,id:4587,x:32081,y:32334,ptovrint:False,ptlb:LavaPrimaryColor,ptin:_LavaPrimaryColor,varname:node_4587,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:5712,x:32462,y:32602,varname:node_5712,prsc:2|A-4587-RGB,B-5657-RGB,T-4851-OUT;n:type:ShaderForge.SFN_Color,id:5657,x:32081,y:32500,ptovrint:False,ptlb:LavaSecondaryColor,ptin:_LavaSecondaryColor,varname:node_5657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7337728,c3:0.4485294,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1392,x:31570,y:33171,ptovrint:False,ptlb:HeightNoise,ptin:_HeightNoise,varname:node_1392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44b66fc4e87522748b156ff997811058,ntxv:0,isnm:False|UVIN-8340-UVOUT;n:type:ShaderForge.SFN_Panner,id:8340,x:31394,y:33171,varname:node_8340,prsc:2,spu:0,spv:1|UVIN-2542-UVOUT,DIST-4012-OUT;n:type:ShaderForge.SFN_TexCoord,id:2542,x:31168,y:33171,varname:node_2542,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:344,x:30932,y:33249,varname:node_344,prsc:2;n:type:ShaderForge.SFN_Vector1,id:2762,x:31570,y:33337,varname:node_2762,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:8760,x:31762,y:33246,varname:node_8760,prsc:2|A-1392-R,B-2762-OUT;n:type:ShaderForge.SFN_Subtract,id:6803,x:32169,y:33029,varname:node_6803,prsc:2|A-9421-R,B-8760-OUT;n:type:ShaderForge.SFN_Tex2d,id:6321,x:32081,y:32675,ptovrint:False,ptlb:LavaNoise,ptin:_LavaNoise,varname:_node_1392_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44b66fc4e87522748b156ff997811058,ntxv:0,isnm:False|UVIN-1968-UVOUT;n:type:ShaderForge.SFN_Panner,id:1968,x:31909,y:32675,varname:node_1968,prsc:2,spu:0,spv:1|UVIN-2761-UVOUT,DIST-9293-OUT;n:type:ShaderForge.SFN_TexCoord,id:2761,x:31708,y:32675,varname:node_2761,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2616,x:31496,y:32685,varname:node_2616,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7351,x:32081,y:32851,varname:node_7351,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Power,id:4851,x:32274,y:32692,varname:node_4851,prsc:2|VAL-6321-R,EXP-7351-OUT;n:type:ShaderForge.SFN_Power,id:4688,x:32666,y:32653,varname:node_4688,prsc:2|VAL-5712-OUT,EXP-9041-OUT;n:type:ShaderForge.SFN_Vector1,id:9041,x:32462,y:32755,varname:node_9041,prsc:2,v1:1.3;n:type:ShaderForge.SFN_Clamp,id:5399,x:32430,y:33024,varname:node_5399,prsc:2|IN-6803-OUT,MIN-9484-OUT,MAX-7884-OUT;n:type:ShaderForge.SFN_Vector1,id:9484,x:32169,y:33159,varname:node_9484,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:7884,x:32102,y:33249,ptovrint:False,ptlb:StoneDepthClamp,ptin:_StoneDepthClamp,varname:node_7884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.4490482,max:1;n:type:ShaderForge.SFN_Divide,id:9229,x:32631,y:33024,varname:node_9229,prsc:2|A-5399-OUT,B-7884-OUT;n:type:ShaderForge.SFN_Power,id:9098,x:32837,y:33024,varname:node_9098,prsc:2|VAL-9229-OUT,EXP-5296-OUT;n:type:ShaderForge.SFN_Vector1,id:5296,x:32619,y:33205,varname:node_5296,prsc:2,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:7836,x:30932,y:33421,ptovrint:False,ptlb:HeightNoiseScrollSpeed,ptin:_HeightNoiseScrollSpeed,varname:node_7836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.004;n:type:ShaderForge.SFN_Multiply,id:4012,x:31168,y:33336,varname:node_4012,prsc:2|A-344-T,B-7836-OUT;n:type:ShaderForge.SFN_Multiply,id:9293,x:31697,y:32846,varname:node_9293,prsc:2|A-2616-T,B-406-OUT;n:type:ShaderForge.SFN_ValueProperty,id:406,x:31476,y:32880,ptovrint:False,ptlb:LavaScrollSpeed,ptin:_LavaScrollSpeed,varname:node_406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;proporder:9421-6551-4587-5657-1392-6321-7884-7836-406;pass:END;sub:END;*/

Shader "Custom/Lava" {
    Properties {
        _HeightMap ("HeightMap", 2D) = "white" {}
        _StoneColor ("StoneColor", Color) = (0.1544118,0.1544118,0.1544118,1)
        _LavaPrimaryColor ("LavaPrimaryColor", Color) = (1,0,0,1)
        _LavaSecondaryColor ("LavaSecondaryColor", Color) = (1,0.7337728,0.4485294,1)
        _HeightNoise ("HeightNoise", 2D) = "white" {}
        _LavaNoise ("LavaNoise", 2D) = "white" {}
        _StoneDepthClamp ("StoneDepthClamp", Range(0.01, 1)) = 0.4490482
        _HeightNoiseScrollSpeed ("HeightNoiseScrollSpeed", Float ) = 0.004
        _LavaScrollSpeed ("LavaScrollSpeed", Float ) = 0.02
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
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float4 _StoneColor;
            uniform float4 _LavaPrimaryColor;
            uniform float4 _LavaSecondaryColor;
            uniform sampler2D _HeightNoise; uniform float4 _HeightNoise_ST;
            uniform sampler2D _LavaNoise; uniform float4 _LavaNoise_ST;
            uniform float _StoneDepthClamp;
            uniform float _HeightNoiseScrollSpeed;
            uniform float _LavaScrollSpeed;
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
                float2 node_1968 = (i.uv0+(node_2616.g*_LavaScrollSpeed)*float2(0,1));
                float4 _LavaNoise_var = tex2D(_LavaNoise,TRANSFORM_TEX(node_1968, _LavaNoise));
                float4 _HeightMap_var = tex2D(_HeightMap,TRANSFORM_TEX(i.uv0, _HeightMap));
                float4 node_344 = _Time;
                float2 node_8340 = (i.uv0+(node_344.g*_HeightNoiseScrollSpeed)*float2(0,1));
                float4 _HeightNoise_var = tex2D(_HeightNoise,TRANSFORM_TEX(node_8340, _HeightNoise));
                float3 emissive = lerp(_StoneColor.rgb,pow(lerp(_LavaPrimaryColor.rgb,_LavaSecondaryColor.rgb,pow(_LavaNoise_var.r,0.4)),1.3),pow((clamp((_HeightMap_var.r-(_HeightNoise_var.r*0.2)),0.0,_StoneDepthClamp)/_StoneDepthClamp),5.0));
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
