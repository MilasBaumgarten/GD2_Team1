// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33080,y:32121,varname:node_2865,prsc:2|diff-1945-OUT,spec-358-OUT,gloss-1813-OUT,normal-8771-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31722,y:32478,ptovrint:True,ptlb:HighTex,ptin:_HighTex,varname:_HighTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7bbfb8818476e4641ba3e75f5225eb69,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Slider,id:358,x:32270,y:32238,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32270,y:32340,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:333,x:31153,y:32708,varname:node_333,prsc:2;n:type:ShaderForge.SFN_Lerp,id:1276,x:32017,y:32460,varname:node_1276,prsc:2|A-6771-RGB,B-7736-RGB,T-3638-OUT;n:type:ShaderForge.SFN_Tex2d,id:6771,x:31722,y:32250,ptovrint:True,ptlb:MidTex,ptin:_MidTex,varname:_MidTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93d6f74f2ef358e41989d4152b195f88,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8482,x:31716,y:31851,ptovrint:True,ptlb:LowTex,ptin:_LowTex,varname:_LowTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6655,x:31549,y:32708,cmnt:Kontrast erhöhen,varname:node_6655,prsc:2|A-8136-OUT,B-1967-OUT;n:type:ShaderForge.SFN_Subtract,id:8136,x:31359,y:32708,cmnt:Höhe verschieben,varname:node_8136,prsc:2|A-333-Y,B-9550-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9550,x:31153,y:32860,ptovrint:False,ptlb:heightBorder_MidHigh,ptin:_heightBorder_MidHigh,varname:_heightBorder_MidHigh,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_Clamp01,id:3638,x:31722,y:32708,varname:node_3638,prsc:2|IN-6655-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6554,x:31158,y:32038,varname:node_6554,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7070,x:31543,y:32078,cmnt:Kontrast erhöhen,varname:node_7070,prsc:2|A-1556-OUT,B-1967-OUT;n:type:ShaderForge.SFN_Subtract,id:1556,x:31353,y:32078,cmnt:Höhe verschieben,varname:node_1556,prsc:2|A-6554-Y,B-8190-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8190,x:31158,y:32206,ptovrint:False,ptlb:heightBorder_LowMid,ptin:_heightBorder_LowMid,varname:_heightBorder_LowMid,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.25;n:type:ShaderForge.SFN_Clamp01,id:1783,x:31716,y:32078,varname:node_1783,prsc:2|IN-7070-OUT;n:type:ShaderForge.SFN_Lerp,id:1945,x:32338,y:32059,varname:node_1945,prsc:2|A-8482-RGB,B-1276-OUT,T-1783-OUT;n:type:ShaderForge.SFN_Tex2d,id:1211,x:32142,y:33057,ptovrint:True,ptlb:HighNormal,ptin:_HighNormal,varname:_HighNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e00d5a9a0944134448432ccacf221b95,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:8987,x:32482,y:32903,varname:node_8987,prsc:2|A-9913-RGB,B-1211-RGB,T-3638-OUT;n:type:ShaderForge.SFN_Tex2d,id:9913,x:32142,y:32829,ptovrint:True,ptlb:MidNormal,ptin:_MidNormal,varname:_MidNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1edd0950293e8664094053a041548c23,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:8771,x:32808,y:32685,varname:node_8771,prsc:2|A-9331-RGB,B-8987-OUT,T-1783-OUT;n:type:ShaderForge.SFN_Tex2d,id:9331,x:32142,y:32591,ptovrint:True,ptlb:LowNormal,ptin:_LowNormal,varname:_LowNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:1967,x:30967,y:32493,ptovrint:False,ptlb:ContrastStrength,ptin:_ContrastStrength,varname:_ContrastStrength,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.4,cur:0.4,max:10;proporder:1967-7736-9550-6771-8190-8482-1211-9913-9331-358-1813;pass:END;sub:END;*/

Shader "Shader Forge/heightTiling" {
    Properties {
        _ContrastStrength ("ContrastStrength", Range(0.4, 10)) = 0.4
        _HighTex ("HighTex", 2D) = "black" {}
        _heightBorder_MidHigh ("heightBorder_MidHigh", Float ) = 0.25
        _MidTex ("MidTex", 2D) = "white" {}
        _heightBorder_LowMid ("heightBorder_LowMid", Float ) = -0.25
        _LowTex ("LowTex", 2D) = "white" {}
        _HighNormal ("HighNormal", 2D) = "bump" {}
        _MidNormal ("MidNormal", 2D) = "bump" {}
        _LowNormal ("LowNormal", 2D) = "bump" {}
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform sampler2D _HighTex; uniform float4 _HighTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _MidTex; uniform float4 _MidTex_ST;
            uniform sampler2D _LowTex; uniform float4 _LowTex_ST;
            uniform float _heightBorder_MidHigh;
            uniform float _heightBorder_LowMid;
            uniform sampler2D _HighNormal; uniform float4 _HighNormal_ST;
            uniform sampler2D _MidNormal; uniform float4 _MidNormal_ST;
            uniform sampler2D _LowNormal; uniform float4 _LowNormal_ST;
            uniform float _ContrastStrength;
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
                float3 _LowNormal_var = UnpackNormal(tex2D(_LowNormal,TRANSFORM_TEX(i.uv0, _LowNormal)));
                float3 _MidNormal_var = UnpackNormal(tex2D(_MidNormal,TRANSFORM_TEX(i.uv0, _MidNormal)));
                float3 _HighNormal_var = UnpackNormal(tex2D(_HighNormal,TRANSFORM_TEX(i.uv0, _HighNormal)));
                float node_3638 = saturate(((i.posWorld.g-_heightBorder_MidHigh)*_ContrastStrength));
                float node_1783 = saturate(((i.posWorld.g-_heightBorder_LowMid)*_ContrastStrength));
                float3 normalLocal = lerp(_LowNormal_var.rgb,lerp(_MidNormal_var.rgb,_HighNormal_var.rgb,node_3638),node_1783);
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
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
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
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _LowTex_var = tex2D(_LowTex,TRANSFORM_TEX(i.uv0, _LowTex));
                float4 _MidTex_var = tex2D(_MidTex,TRANSFORM_TEX(i.uv0, _MidTex));
                float4 _HighTex_var = tex2D(_HighTex,TRANSFORM_TEX(i.uv0, _HighTex));
                float3 diffuseColor = lerp(_LowTex_var.rgb,lerp(_MidTex_var.rgb,_HighTex_var.rgb,node_3638),node_1783); // Need this for specular when using metallic
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
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            uniform sampler2D _HighTex; uniform float4 _HighTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _MidTex; uniform float4 _MidTex_ST;
            uniform sampler2D _LowTex; uniform float4 _LowTex_ST;
            uniform float _heightBorder_MidHigh;
            uniform float _heightBorder_LowMid;
            uniform sampler2D _HighNormal; uniform float4 _HighNormal_ST;
            uniform sampler2D _MidNormal; uniform float4 _MidNormal_ST;
            uniform sampler2D _LowNormal; uniform float4 _LowNormal_ST;
            uniform float _ContrastStrength;
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
                float3 _LowNormal_var = UnpackNormal(tex2D(_LowNormal,TRANSFORM_TEX(i.uv0, _LowNormal)));
                float3 _MidNormal_var = UnpackNormal(tex2D(_MidNormal,TRANSFORM_TEX(i.uv0, _MidNormal)));
                float3 _HighNormal_var = UnpackNormal(tex2D(_HighNormal,TRANSFORM_TEX(i.uv0, _HighNormal)));
                float node_3638 = saturate(((i.posWorld.g-_heightBorder_MidHigh)*_ContrastStrength));
                float node_1783 = saturate(((i.posWorld.g-_heightBorder_LowMid)*_ContrastStrength));
                float3 normalLocal = lerp(_LowNormal_var.rgb,lerp(_MidNormal_var.rgb,_HighNormal_var.rgb,node_3638),node_1783);
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
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic;
                float specularMonochrome;
                float4 _LowTex_var = tex2D(_LowTex,TRANSFORM_TEX(i.uv0, _LowTex));
                float4 _MidTex_var = tex2D(_MidTex,TRANSFORM_TEX(i.uv0, _MidTex));
                float4 _HighTex_var = tex2D(_HighTex,TRANSFORM_TEX(i.uv0, _HighTex));
                float3 diffuseColor = lerp(_LowTex_var.rgb,lerp(_MidTex_var.rgb,_HighTex_var.rgb,node_3638),node_1783); // Need this for specular when using metallic
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
            uniform sampler2D _HighTex; uniform float4 _HighTex_ST;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _MidTex; uniform float4 _MidTex_ST;
            uniform sampler2D _LowTex; uniform float4 _LowTex_ST;
            uniform float _heightBorder_MidHigh;
            uniform float _heightBorder_LowMid;
            uniform float _ContrastStrength;
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
                
                o.Emission = 0;
                
                float4 _LowTex_var = tex2D(_LowTex,TRANSFORM_TEX(i.uv0, _LowTex));
                float4 _MidTex_var = tex2D(_MidTex,TRANSFORM_TEX(i.uv0, _MidTex));
                float4 _HighTex_var = tex2D(_HighTex,TRANSFORM_TEX(i.uv0, _HighTex));
                float node_3638 = saturate(((i.posWorld.g-_heightBorder_MidHigh)*_ContrastStrength));
                float node_1783 = saturate(((i.posWorld.g-_heightBorder_LowMid)*_ContrastStrength));
                float3 diffColor = lerp(_LowTex_var.rgb,lerp(_MidTex_var.rgb,_HighTex_var.rgb,node_3638),node_1783);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
