Shader "Sindrax/ShaderStruct1.0"
{
    Properties//这里面放要使用到的参数
    {
        _Range ("Range",Range(0,100)) = 1
        _Texture ("Texture",2D) = ""{}
        _Texture3D ("Texture3D",3D) = ""{}//只能用脚本控制创建 OpenGL3.0以上才能使用这个东西

    }
    SubShader//显卡渲染方式
    {
        Tags { "RenderType"="Opaque" }//渲染的标签设置
        Pass//只要有一个Pass对象就会渲染一次
            {
            CGPROGRAM   
            //这里面写自己的代码块
            //渲染设置 颜色混合等 Render Setup
            //纹理设置 只有在fixed function Shader中才可以实现 Texture Setup
            ENDCG
            }
    }
    FallBack "Diffuse"
}
