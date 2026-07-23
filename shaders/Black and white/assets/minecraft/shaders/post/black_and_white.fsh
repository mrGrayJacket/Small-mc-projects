#version 330

uniform sampler2D InSampler;
in vec2 texCoord;
out vec4 fragColor;

void main(){

    vec4 normalView = texture(InSampler,texCoord);
    
    vec3 grayFilter = vec3(0.299,0.587,0.114);
    float colorOut = dot(normalView.rgb,grayFilter);

    fragColor = vec4(vec3(colorOut),1.0);
}
