#version 450

layout(location = 0) in vec2 position;

layout(push_constant) uniform PC {
    float scale;
} pc;

void main() {
    gl_Position = vec4(position * pc.scale, 0.0, 1.0);
}