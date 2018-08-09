// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1674,x:33712,y:33079,varname:node_1674,prsc:2|diff-7775-OUT,normal-9830-OUT;n:type:ShaderForge.SFN_NormalVector,id:8414,x:32423,y:32611,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:945,x:32619,y:32611,varname:node_945,prsc:2|IN-8414-OUT;n:type:ShaderForge.SFN_Multiply,id:7398,x:32873,y:32611,varname:node_7398,prsc:2|A-945-OUT,B-945-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9402,x:32188,y:32881,varname:node_9402,prsc:2;n:type:ShaderForge.SFN_Append,id:2866,x:32416,y:32771,varname:node_2866,prsc:2|A-9402-Y,B-9402-Z;n:type:ShaderForge.SFN_Append,id:1594,x:32400,y:32930,varname:node_1594,prsc:2|A-9402-Z,B-9402-X;n:type:ShaderForge.SFN_Append,id:3780,x:32416,y:33087,varname:node_3780,prsc:2|A-9402-X,B-9402-Y;n:type:ShaderForge.SFN_Tex2d,id:5285,x:32619,y:32930,ptovrint:False,ptlb:TopAlbedo,ptin:_TopAlbedo,varname:_FrontAlbedo,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:0,isnm:False|UVIN-1594-OUT;n:type:ShaderForge.SFN_Tex2d,id:3031,x:32619,y:32771,varname:node_3031,prsc:2,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:0,isnm:False|UVIN-2866-OUT,TEX-3935-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3935,x:32340,y:33291,ptovrint:False,ptlb:SideAlbedo,ptin:_SideAlbedo,varname:_SideAlbedo,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3534,x:32619,y:33087,varname:node_3534,prsc:2,tex:93774dc2c631ea544b9b8732a90fc148,ntxv:0,isnm:False|UVIN-3780-OUT,TEX-3935-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:7775,x:33188,y:32887,varname:node_7775,prsc:2,chbt:0|M-7398-OUT,R-3031-RGB,G-5285-RGB,B-3534-RGB;n:type:ShaderForge.SFN_Tex2d,id:6489,x:32615,y:33331,varname:node_3036,prsc:2,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:0,isnm:False|UVIN-2866-OUT,TEX-1265-TEX;n:type:ShaderForge.SFN_Tex2d,id:1169,x:32615,y:33663,varname:node_3535,prsc:2,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:0,isnm:False|UVIN-3780-OUT,TEX-1265-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:9830,x:33207,y:33409,varname:node_9830,prsc:2,chbt:0|M-7398-OUT,R-6489-RGB,G-6500-RGB,B-1169-RGB;n:type:ShaderForge.SFN_Tex2d,id:6500,x:32615,y:33484,ptovrint:False,ptlb:TopNormal,ptin:_TopNormal,varname:_node_6500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:3,isnm:True|UVIN-1594-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1265,x:32394,y:33663,ptovrint:False,ptlb:SideNormal,ptin:_SideNormal,varname:_node_1265,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c55f2a4656c580043817bdef1c515aa1,ntxv:3,isnm:True;proporder:5285-3935-6500-1265;pass:END;sub:END;*/

Shader "Dion/Triplanar" {
    Properties {
        _TopAlbedo ("TopAlbedo", 2D) = "white" {}
        _SideAlbedo ("SideAlbedo", 2D) = "black" {}
        _TopNormal ("TopNormal", 2D) = "bump" {}
        _SideNormal ("SideNormal", 2D) = "bump" {}
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _TopAlbedo; uniform float4 _TopAlbedo_ST;
            uniform sampler2D _SideAlbedo; uniform float4 _SideAlbedo_ST;
            uniform sampler2D _TopNormal; uniform float4 _TopNormal_ST;
            uniform sampler2D _SideNormal; uniform float4 _SideNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 node_945 = abs(i.normalDir);
                float3 node_7398 = (node_945*node_945);
                float2 node_2866 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_3036 = UnpackNormal(tex2D(_SideNormal,TRANSFORM_TEX(node_2866, _SideNormal)));
                float2 node_1594 = float2(i.posWorld.b,i.posWorld.r);
                float3 _TopNormal_var = UnpackNormal(tex2D(_TopNormal,TRANSFORM_TEX(node_1594, _TopNormal)));
                float2 node_3780 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_3535 = UnpackNormal(tex2D(_SideNormal,TRANSFORM_TEX(node_3780, _SideNormal)));
                float3 normalLocal = (node_7398.r*node_3036.rgb + node_7398.g*_TopNormal_var.rgb + node_7398.b*node_3535.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_3031 = tex2D(_SideAlbedo,TRANSFORM_TEX(node_2866, _SideAlbedo));
                float4 _TopAlbedo_var = tex2D(_TopAlbedo,TRANSFORM_TEX(node_1594, _TopAlbedo));
                float4 node_3534 = tex2D(_SideAlbedo,TRANSFORM_TEX(node_3780, _SideAlbedo));
                float3 node_7775 = (node_7398.r*node_3031.rgb + node_7398.g*_TopAlbedo_var.rgb + node_7398.b*node_3534.rgb);
                float3 diffuseColor = node_7775;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _TopAlbedo; uniform float4 _TopAlbedo_ST;
            uniform sampler2D _SideAlbedo; uniform float4 _SideAlbedo_ST;
            uniform sampler2D _TopNormal; uniform float4 _TopNormal_ST;
            uniform sampler2D _SideNormal; uniform float4 _SideNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 node_945 = abs(i.normalDir);
                float3 node_7398 = (node_945*node_945);
                float2 node_2866 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_3036 = UnpackNormal(tex2D(_SideNormal,TRANSFORM_TEX(node_2866, _SideNormal)));
                float2 node_1594 = float2(i.posWorld.b,i.posWorld.r);
                float3 _TopNormal_var = UnpackNormal(tex2D(_TopNormal,TRANSFORM_TEX(node_1594, _TopNormal)));
                float2 node_3780 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_3535 = UnpackNormal(tex2D(_SideNormal,TRANSFORM_TEX(node_3780, _SideNormal)));
                float3 normalLocal = (node_7398.r*node_3036.rgb + node_7398.g*_TopNormal_var.rgb + node_7398.b*node_3535.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_3031 = tex2D(_SideAlbedo,TRANSFORM_TEX(node_2866, _SideAlbedo));
                float4 _TopAlbedo_var = tex2D(_TopAlbedo,TRANSFORM_TEX(node_1594, _TopAlbedo));
                float4 node_3534 = tex2D(_SideAlbedo,TRANSFORM_TEX(node_3780, _SideAlbedo));
                float3 node_7775 = (node_7398.r*node_3031.rgb + node_7398.g*_TopAlbedo_var.rgb + node_7398.b*node_3534.rgb);
                float3 diffuseColor = node_7775;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
