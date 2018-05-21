// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.9215686,fgcg:0.7333333,fgcb:0.3647059,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:616,x:33531,y:32724,varname:node_616,prsc:2|emission-3783-OUT;n:type:ShaderForge.SFN_Tex2d,id:8046,x:32507,y:32926,ptovrint:False,ptlb:Lava Texture,ptin:_LavaTexture,varname:node_8046,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-864-UVOUT;n:type:ShaderForge.SFN_Panner,id:864,x:32313,y:32926,varname:node_864,prsc:2,spu:-1,spv:0|UVIN-3392-UVOUT,DIST-17-OUT;n:type:ShaderForge.SFN_TexCoord,id:3392,x:32076,y:32818,varname:node_3392,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:1098,x:31920,y:33127,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Time,id:3546,x:31920,y:32969,varname:node_3546,prsc:2;n:type:ShaderForge.SFN_Multiply,id:17,x:32097,y:33028,varname:node_17,prsc:2|A-3546-T,B-1098-OUT;n:type:ShaderForge.SFN_Color,id:9377,x:32507,y:32764,ptovrint:False,ptlb:LavaColor,ptin:_LavaColor,varname:node_9377,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7352941,c2:0.1676038,c3:0.1676038,c4:1;n:type:ShaderForge.SFN_Lerp,id:2318,x:33041,y:32826,varname:node_2318,prsc:2|A-4633-RGB,B-9377-RGB,T-8011-OUT;n:type:ShaderForge.SFN_Color,id:4633,x:32507,y:32599,ptovrint:False,ptlb:LavaColor_copy,ptin:_LavaColor_copy,varname:_LavaColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9827992,c2:1,c3:0.2205882,c4:1;n:type:ShaderForge.SFN_Power,id:8011,x:32785,y:32952,varname:node_8011,prsc:2|VAL-8046-RGB,EXP-7209-OUT;n:type:ShaderForge.SFN_Vector1,id:7209,x:32492,y:33109,varname:node_7209,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:3783,x:33294,y:32858,varname:node_3783,prsc:2|A-2318-OUT,B-8904-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8904,x:33041,y:32986,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_8904,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.2;proporder:8046-1098-9377-4633-8904;pass:END;sub:END;*/

Shader "Custom/Lava" {
    Properties {
        _LavaTexture ("Lava Texture", 2D) = "white" {}
        _Speed ("Speed", Float ) = 0.1
        _LavaColor ("LavaColor", Color) = (0.7352941,0.1676038,0.1676038,1)
        _LavaColor_copy ("LavaColor_copy", Color) = (0.9827992,1,0.2205882,1)
        _Brightness ("Brightness", Float ) = 1.2
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
            uniform sampler2D _LavaTexture; uniform float4 _LavaTexture_ST;
            uniform float _Speed;
            uniform float4 _LavaColor;
            uniform float4 _LavaColor_copy;
            uniform float _Brightness;
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
                float4 node_3546 = _Time;
                float2 node_864 = (i.uv0+(node_3546.g*_Speed)*float2(-1,0));
                float4 _LavaTexture_var = tex2D(_LavaTexture,TRANSFORM_TEX(node_864, _LavaTexture));
                float3 node_8011 = pow(_LavaTexture_var.rgb,0.2);
                float3 emissive = (lerp(_LavaColor_copy.rgb,_LavaColor.rgb,node_8011)*_Brightness);
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
