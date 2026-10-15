#pragma description Valve Choreo blob

import type.magic;

// TODO: variable names need improving
// they really, really suck :<
struct Header {
    type::Magic<"\x56\x53\x49\x46"> signature; // should be "VSIF"
    u32 version;
    u32 scenes_count;
    u32 strings_count;
    u32 scene_offset;
};

struct SceneHeader {
    u32 name_hash;
    u32 offset;
    u32 length;
    u32 summary_offset;
};

struct SceneData {
    type::Magic<"\x4C\x5A\x4D\x41"> data_header;
};

struct Scene {
    SceneHeader sh;
    SceneData sd;
};

struct SceneImage {
    Header h;
    u32 test @ h.scene_offset;
};

SceneImage sceneImage @ 0x00;