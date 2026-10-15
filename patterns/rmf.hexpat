#pragma description Rich Music Format (Beatnik)
#pragma endian big

import type.magic;

// this file is really old, and is kept here for the sake
// of posterity.

struct HRIFHeader {
    type::Magic<"\x49\x52\x45\x5A"> signature;
    u32 version;
    u32 resource_count;
}

HRIFHeader header @ 0x00;
