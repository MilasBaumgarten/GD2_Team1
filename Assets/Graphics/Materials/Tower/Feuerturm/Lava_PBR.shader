// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:1,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33611,y:32572,varname:node_2865,prsc:2|diff-2382-OUT,spec-6797-OUT,gloss-6797-OUT,normal-7484-OUT,emission-5253-OUT;n:type:ShaderForge.SFN_Lerp,id:7071,x:33191,y:32804,varname:node_7071,prsc:2|A-1475-RGB,B-2906-RGB,T-3624-OUT;n:type:ShaderForge.SFN_Tex2d,id:5955,x:31721,y:33119,ptovrint:False,ptlb:HeightNoise,ptin:_HeightNoise,varname:node_1392,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:44b66fc4e87522748b156ff997811058,ntxv:0,isnm:False|UVIN-7038-UVOUT;n:type:ShaderForge.SFN_Panner,id:7038,x:31545,y:33119,varname:node_7038,prsc:2,spu:-0.5,spv:1|UVIN-7849-UVOUT,DIST-5218-OUT;n:type:ShaderForge.SFN_TexCoord,id:7849,x:31314,y:33197,varname:node_7849,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:7937,x:30901,y:32936,varname:node_7937,prsc:2;n:type:ShaderForge.SFN_Vector1,id:5031,x:31721,y:33285,varname:node_5031,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:5353,x:32029,y:33112,varname:node_5353,prsc:2|A-5955-R,B-5031-OUT;n:type:ShaderForge.SFN_Subtract,id:6438,x:32281,y:33082,varname:node_6438,prsc:2|A-8015-A,B-5353-OUT;n:type:ShaderForge.SFN_Panner,id:243,x:32201,y:32554,varname:node_243,prsc:2,spu:-0.5,spv:1|UVIN-9227-UVOUT,DIST-8864-OUT;n:type:ShaderForge.SFN_TexCoord,id:9227,x:32000,y:32554,varname:node_9227,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3927,x:31788,y:32564,varname:node_3927,prsc:2;n:type:ShaderForge.SFN_Clamp,id:6494,x:32542,y:33083,varname:node_6494,prsc:2|IN-6438-OUT,MIN-9954-OUT,MAX-5580-OUT;n:type:ShaderForge.SFN_Vector1,id:9954,x:32258,y:33215,varname:node_9954,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:5580,x:32214,y:33308,ptovrint:False,ptlb:StoneDepthClamp,ptin:_StoneDepthClamp,varname:node_7884,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:1;n:type:ShaderForge.SFN_Divide,id:1293,x:32743,y:33083,varname:node_1293,prsc:2|A-6494-OUT,B-5580-OUT;n:type:ShaderForge.SFN_Power,id:3624,x:32949,y:33083,varname:node_3624,prsc:2|VAL-1293-OUT,EXP-2195-OUT;n:type:ShaderForge.SFN_Vector1,id:2195,x:32731,y:33264,varname:node_2195,prsc:2,v1:5;n:type:ShaderForge.SFN_ValueProperty,id:5394,x:30901,y:33182,ptovrint:False,ptlb:HeightNoiseScrollSpeedAdditive,ptin:_HeightNoiseScrollSpeedAdditive,varname:node_7836,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.004;n:type:ShaderForge.SFN_Multiply,id:5218,x:31314,y:33343,varname:node_5218,prsc:2|A-7937-T,B-4380-OUT;n:type:ShaderForge.SFN_Multiply,id:8864,x:31989,y:32725,varname:node_8864,prsc:2|A-3927-T,B-461-OUT;n:type:ShaderForge.SFN_ValueProperty,id:461,x:31768,y:32759,ptovrint:False,ptlb:LavaScrollSpeed,ptin:_LavaScrollSpeed,varname:node_406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.02;n:type:ShaderForge.SFN_Tex2d,id:2906,x:32724,y:32424,ptovrint:False,ptlb:RoughnessStone,ptin:_RoughnessStone,varname:node_5555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4f27fd209c2a42e409fc8ba3e570600a,ntxv:3,isnm:False|UVIN-4647-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1475,x:32700,y:32670,ptovrint:False,ptlb:EmissionLava,ptin:_EmissionLava,varname:node_1475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:45ab23a068a93ee4fbbb365e1f8bfb6e,ntxv:0,isnm:False|UVIN-243-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6488,x:32949,y:33452,ptovrint:False,ptlb:NormalStone,ptin:_NormalStone,varname:node_6488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2d55e4c48757be34c8cb2c77692858d6,ntxv:3,isnm:True|UVIN-4647-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:599,x:32752,y:32231,ptovrint:False,ptlb:RoughnessLava,ptin:_RoughnessLava,varname:node_599,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:baab75ac58641664a8100f4567da0af5,ntxv:0,isnm:False|UVIN-243-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:3121,x:32949,y:33264,ptovrint:False,ptlb:NormalLava,ptin:_NormalLava,varname:node_3121,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b32be1b37db5efd4399c9fe6e5d791da,ntxv:3,isnm:True|UVIN-243-UVOUT;n:type:ShaderForge.SFN_Lerp,id:7484,x:33269,y:33326,varname:node_7484,prsc:2|A-3121-RGB,B-6488-RGB,T-3624-OUT;n:type:ShaderForge.SFN_Lerp,id:6797,x:33201,y:32583,varname:node_6797,prsc:2|A-599-A,B-2906-A,T-3624-OUT;n:type:ShaderForge.SFN_Lerp,id:9045,x:33201,y:32436,varname:node_9045,prsc:2|A-1475-RGB,B-2906-RGB,T-3624-OUT;n:type:ShaderForge.SFN_Tex2d,id:8015,x:32029,y:32930,ptovrint:False,ptlb:HeightStone,ptin:_HeightStone,varname:node_8015,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1914417326e08664da719b78dbf48c2c,ntxv:0,isnm:False|UVIN-4647-UVOUT;n:type:ShaderForge.SFN_Panner,id:4647,x:31545,y:32922,varname:node_4647,prsc:2,spu:-0.5,spv:1|UVIN-7989-UVOUT,DIST-8172-OUT;n:type:ShaderForge.SFN_TexCoord,id:7989,x:31314,y:32922,varname:node_7989,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:4191,x:30901,y:33086,ptovrint:False,ptlb:HeightStoneScrollSpeed,ptin:_HeightStoneScrollSpeed,varname:_HeightNoiseScrollSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.004;n:type:ShaderForge.SFN_Multiply,id:8172,x:31314,y:33060,varname:node_8172,prsc:2|A-7937-T,B-4191-OUT;n:type:ShaderForge.SFN_Add,id:4380,x:31138,y:33343,varname:node_4380,prsc:2|A-4191-OUT,B-5394-OUT;n:type:ShaderForge.SFN_Multiply,id:5253,x:33383,y:32776,varname:node_5253,prsc:2|A-7071-OUT,B-7931-OUT;n:type:ShaderForge.SFN_Vector1,id:7931,x:33211,y:33014,varname:node_7931,prsc:2,v1:7;n:type:ShaderForge.SFN_AmbientLight,id:8738,x:33165,y:32218,varname:node_8738,prsc:2;n:type:ShaderForge.SFN_Add,id:2382,x:33410,y:32389,varname:node_2382,prsc:2|A-8738-RGB,B-9045-OUT;proporder:1475-461-8015-5955-4191-5394-6488-3121-2906-599-5580;pass:END;sub:END;*/

Shader "Shader Forge/Lava_PBR" {
    Properties {
        _EmissionLava ("EmissionLava", 2D) = "white" {}
        _LavaScrollSpeed ("LavaScrollSpeed", Float ) = 0.02
        _HeightStone ("HeightStone", 2D) = "white" {}
        _HeightNoise ("HeightNoise", 2D) = "white" {}
        _HeightStoneScrollSpeed ("HeightStoneScrollSpeed", Float ) = 0.004
        _HeightNoiseScrollSpeedAdditive ("HeightNoiseScrollSpeedAdditive", Float ) = 0.004
        _NormalStone ("NormalStone", 2D) = "bump" {}
        _NormalLava ("NormalLava", 2D) = "bump" {}
        _RoughnessStone ("RoughnessStone", 2D) = "bump" {}
        _RoughnessLava ("RoughnessLava", 2D) = "white" {}
        _StoneDepthClamp ("StoneDepthClamp", Range(0.001, 1)) = 0.001
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "DEFERRED"
            Tags {
                "LightMode"="Deferred"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_DEFERRED
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile ___ UNITY_HDR_ON
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _HeightNoise; uniform float4 _HeightNoise_ST;
            uniform float _StoneDepthClamp;
            uniform float _HeightNoiseScrollSpeedAdditive;
            uniform float _LavaScrollSpeed;
            uniform sampler2D _RoughnessStone; uniform float4 _RoughnessStone_ST;
            uniform sampler2D _EmissionLava; uniform float4 _EmissionLava_ST;
            uniform sampler2D _NormalStone; uniform float4 _NormalStone_ST;
            uniform sampler2D _RoughnessLava; uniform float4 _RoughnessLava_ST;
            uniform sampler2D _NormalLava; uniform float4 _NormalLava_ST;
            uniform sampler2D _HeightStone; uniform float4 _HeightStone_ST;
            uniform float _HeightStoneScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            void frag(
                VertexOutput i,
                out half4 outDiffuse : SV_Target0,
                out half4 outSpecSmoothness : SV_Target1,
                out half4 outNormal : SV_Target2,
                out half4 outEmission : SV_Target3 )
            {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3927 = _Time;
                float2 node_243 = (i.uv0+(node_3927.g*_LavaScrollSpeed)*float2(-0.5,1));
                float3 _NormalLava_var = UnpackNormal(tex2D(_NormalLava,TRANSFORM_TEX(node_243, _NormalLava)));
                float4 node_7937 = _Time;
                float2 node_4647 = (i.uv0+(node_7937.g*_HeightStoneScrollSpeed)*float2(-0.5,1));
                float3 _NormalStone_var = UnpackNormal(tex2D(_NormalStone,TRANSFORM_TEX(node_4647, _NormalStone)));
                float4 _HeightStone_var = tex2D(_HeightStone,TRANSFORM_TEX(node_4647, _HeightStone));
                float2 node_7038 = (i.uv0+(node_7937.g*(_HeightStoneScrollSpeed+_HeightNoiseScrollSpeedAdditive))*float2(-0.5,1));
                float4 _HeightNoise_var = tex2D(_HeightNoise,TRANSFORM_TEX(node_7038, _HeightNoise));
                float node_3624 = pow((clamp((_HeightStone_var.a-(_HeightNoise_var.r*0.2)),0.0,_StoneDepthClamp)/_StoneDepthClamp),5.0);
                float3 normalLocal = lerp(_NormalLava_var.rgb,_NormalStone_var.rgb,node_3624);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughnessLava_var = tex2D(_RoughnessLava,TRANSFORM_TEX(node_243, _RoughnessLava));
                float4 _RoughnessStone_var = tex2D(_RoughnessStone,TRANSFORM_TEX(node_4647, _RoughnessStone));
                float node_6797 = lerp(_RoughnessLava_var.a,_RoughnessStone_var.a,node_3624);
                float gloss = node_6797;
                float perceptualRoughness = 1.0 - node_6797;
                float roughness = perceptualRoughness * perceptualRoughness;
/////// GI Data:
                UnityLight light; // Dummy light
                light.color = 0;
                light.dir = half3(0,1,0);
                light.ndotl = max(0,dot(normalDirection,light.dir));
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = 1;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
////// Specular:
                float3 specularColor = node_6797;
                float specularMonochrome;
                float4 _EmissionLava_var = tex2D(_EmissionLava,TRANSFORM_TEX(node_243, _EmissionLava));
                float3 node_9045 = lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624);
                float3 diffuseColor = (UNITY_LIGHTMODEL_AMBIENT.rgb+node_9045); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
/////// Diffuse:
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
////// Emissive:
                float3 emissive = (lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624)*7.0);
/// Final Color:
                outDiffuse = half4( diffuseColor, 1 );
                outSpecSmoothness = half4( specularColor, gloss );
                outNormal = half4( normalDirection * 0.5 + 0.5, 1 );
                outEmission = half4( (lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624)*7.0), 1 );
                outEmission.rgb += indirectSpecular * 1;
                outEmission.rgb += indirectDiffuse * diffuseColor;
                #ifndef UNITY_HDR_ON
                    outEmission.rgb = exp2(-outEmission.rgb);
                #endif
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _HeightNoise; uniform float4 _HeightNoise_ST;
            uniform float _StoneDepthClamp;
            uniform float _HeightNoiseScrollSpeedAdditive;
            uniform float _LavaScrollSpeed;
            uniform sampler2D _RoughnessStone; uniform float4 _RoughnessStone_ST;
            uniform sampler2D _EmissionLava; uniform float4 _EmissionLava_ST;
            uniform sampler2D _NormalStone; uniform float4 _NormalStone_ST;
            uniform sampler2D _RoughnessLava; uniform float4 _RoughnessLava_ST;
            uniform sampler2D _NormalLava; uniform float4 _NormalLava_ST;
            uniform sampler2D _HeightStone; uniform float4 _HeightStone_ST;
            uniform float _HeightStoneScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3927 = _Time;
                float2 node_243 = (i.uv0+(node_3927.g*_LavaScrollSpeed)*float2(-0.5,1));
                float3 _NormalLava_var = UnpackNormal(tex2D(_NormalLava,TRANSFORM_TEX(node_243, _NormalLava)));
                float4 node_7937 = _Time;
                float2 node_4647 = (i.uv0+(node_7937.g*_HeightStoneScrollSpeed)*float2(-0.5,1));
                float3 _NormalStone_var = UnpackNormal(tex2D(_NormalStone,TRANSFORM_TEX(node_4647, _NormalStone)));
                float4 _HeightStone_var = tex2D(_HeightStone,TRANSFORM_TEX(node_4647, _HeightStone));
                float2 node_7038 = (i.uv0+(node_7937.g*(_HeightStoneScrollSpeed+_HeightNoiseScrollSpeedAdditive))*float2(-0.5,1));
                float4 _HeightNoise_var = tex2D(_HeightNoise,TRANSFORM_TEX(node_7038, _HeightNoise));
                float node_3624 = pow((clamp((_HeightStone_var.a-(_HeightNoise_var.r*0.2)),0.0,_StoneDepthClamp)/_StoneDepthClamp),5.0);
                float3 normalLocal = lerp(_NormalLava_var.rgb,_NormalStone_var.rgb,node_3624);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughnessLava_var = tex2D(_RoughnessLava,TRANSFORM_TEX(node_243, _RoughnessLava));
                float4 _RoughnessStone_var = tex2D(_RoughnessStone,TRANSFORM_TEX(node_4647, _RoughnessStone));
                float node_6797 = lerp(_RoughnessLava_var.a,_RoughnessStone_var.a,node_3624);
                float gloss = node_6797;
                float perceptualRoughness = 1.0 - node_6797;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_6797;
                float specularMonochrome;
                float4 _EmissionLava_var = tex2D(_EmissionLava,TRANSFORM_TEX(node_243, _EmissionLava));
                float3 node_9045 = lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624);
                float3 diffuseColor = (UNITY_LIGHTMODEL_AMBIENT.rgb+node_9045); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624)*7.0);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _HeightNoise; uniform float4 _HeightNoise_ST;
            uniform float _StoneDepthClamp;
            uniform float _HeightNoiseScrollSpeedAdditive;
            uniform float _LavaScrollSpeed;
            uniform sampler2D _RoughnessStone; uniform float4 _RoughnessStone_ST;
            uniform sampler2D _EmissionLava; uniform float4 _EmissionLava_ST;
            uniform sampler2D _NormalStone; uniform float4 _NormalStone_ST;
            uniform sampler2D _RoughnessLava; uniform float4 _RoughnessLava_ST;
            uniform sampler2D _NormalLava; uniform float4 _NormalLava_ST;
            uniform sampler2D _HeightStone; uniform float4 _HeightStone_ST;
            uniform float _HeightStoneScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3927 = _Time;
                float2 node_243 = (i.uv0+(node_3927.g*_LavaScrollSpeed)*float2(-0.5,1));
                float3 _NormalLava_var = UnpackNormal(tex2D(_NormalLava,TRANSFORM_TEX(node_243, _NormalLava)));
                float4 node_7937 = _Time;
                float2 node_4647 = (i.uv0+(node_7937.g*_HeightStoneScrollSpeed)*float2(-0.5,1));
                float3 _NormalStone_var = UnpackNormal(tex2D(_NormalStone,TRANSFORM_TEX(node_4647, _NormalStone)));
                float4 _HeightStone_var = tex2D(_HeightStone,TRANSFORM_TEX(node_4647, _HeightStone));
                float2 node_7038 = (i.uv0+(node_7937.g*(_HeightStoneScrollSpeed+_HeightNoiseScrollSpeedAdditive))*float2(-0.5,1));
                float4 _HeightNoise_var = tex2D(_HeightNoise,TRANSFORM_TEX(node_7038, _HeightNoise));
                float node_3624 = pow((clamp((_HeightStone_var.a-(_HeightNoise_var.r*0.2)),0.0,_StoneDepthClamp)/_StoneDepthClamp),5.0);
                float3 normalLocal = lerp(_NormalLava_var.rgb,_NormalStone_var.rgb,node_3624);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _RoughnessLava_var = tex2D(_RoughnessLava,TRANSFORM_TEX(node_243, _RoughnessLava));
                float4 _RoughnessStone_var = tex2D(_RoughnessStone,TRANSFORM_TEX(node_4647, _RoughnessStone));
                float node_6797 = lerp(_RoughnessLava_var.a,_RoughnessStone_var.a,node_3624);
                float gloss = node_6797;
                float perceptualRoughness = 1.0 - node_6797;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_6797;
                float specularMonochrome;
                float4 _EmissionLava_var = tex2D(_EmissionLava,TRANSFORM_TEX(node_243, _EmissionLava));
                float3 node_9045 = lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624);
                float3 diffuseColor = (UNITY_LIGHTMODEL_AMBIENT.rgb+node_9045); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _HeightNoise; uniform float4 _HeightNoise_ST;
            uniform float _StoneDepthClamp;
            uniform float _HeightNoiseScrollSpeedAdditive;
            uniform float _LavaScrollSpeed;
            uniform sampler2D _RoughnessStone; uniform float4 _RoughnessStone_ST;
            uniform sampler2D _EmissionLava; uniform float4 _EmissionLava_ST;
            uniform sampler2D _RoughnessLava; uniform float4 _RoughnessLava_ST;
            uniform sampler2D _HeightStone; uniform float4 _HeightStone_ST;
            uniform float _HeightStoneScrollSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_3927 = _Time;
                float2 node_243 = (i.uv0+(node_3927.g*_LavaScrollSpeed)*float2(-0.5,1));
                float4 _EmissionLava_var = tex2D(_EmissionLava,TRANSFORM_TEX(node_243, _EmissionLava));
                float4 node_7937 = _Time;
                float2 node_4647 = (i.uv0+(node_7937.g*_HeightStoneScrollSpeed)*float2(-0.5,1));
                float4 _RoughnessStone_var = tex2D(_RoughnessStone,TRANSFORM_TEX(node_4647, _RoughnessStone));
                float4 _HeightStone_var = tex2D(_HeightStone,TRANSFORM_TEX(node_4647, _HeightStone));
                float2 node_7038 = (i.uv0+(node_7937.g*(_HeightStoneScrollSpeed+_HeightNoiseScrollSpeedAdditive))*float2(-0.5,1));
                float4 _HeightNoise_var = tex2D(_HeightNoise,TRANSFORM_TEX(node_7038, _HeightNoise));
                float node_3624 = pow((clamp((_HeightStone_var.a-(_HeightNoise_var.r*0.2)),0.0,_StoneDepthClamp)/_StoneDepthClamp),5.0);
                o.Emission = (lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624)*7.0);
                
                float3 node_9045 = lerp(_EmissionLava_var.rgb,_RoughnessStone_var.rgb,node_3624);
                float3 diffColor = (UNITY_LIGHTMODEL_AMBIENT.rgb+node_9045);
                float specularMonochrome;
                float3 specColor;
                float4 _RoughnessLava_var = tex2D(_RoughnessLava,TRANSFORM_TEX(node_243, _RoughnessLava));
                float node_6797 = lerp(_RoughnessLava_var.a,_RoughnessStone_var.a,node_3624);
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_6797, specColor, specularMonochrome );
                float roughness = 1.0 - node_6797;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
