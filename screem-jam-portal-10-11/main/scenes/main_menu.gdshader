shader_type canvas_item;

uniform float curve_intensity : hint_range(0.0, 0.5) = 0.2;
uniform float curve_width : hint_range(0.1, 1.0) = 0.5;

void fragment() {
    // Get the UV coordinates (0 to 1 across the texture)
    vec2 uv = UV;

    // Calculate distance from horizontal center
    float dist_from_center = abs(uv.x - 0.5);

    // Create an upward curve using a parabolic function
    float curve = curve_intensity * (1.0 - dist_from_center * dist_from_center / (curve_width * curve_width));

    // Apply the curve by offsetting UV.y upward
    uv.y -= curve;

    // Clamp UVs to prevent sampling outside the texture
    uv = clamp(uv, vec2(0.0), vec2(1.0));

    // Sample the texture with the modified UVs
    COLOR = texture(TEXTURE, uv);

    // Preserve alpha channel to avoid affecting transparency
    COLOR.a = texture(TEXTURE, UV).a;
}