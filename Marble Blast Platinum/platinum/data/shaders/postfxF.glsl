//-----------------------------------------------------------------------------
// Copyright (c) 2021 The Platinum Team
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//-----------------------------------------------------------------------------

varying vec2 UV;
uniform sampler2D textureSampler;
uniform vec2 screenSize;

float roundN(float x, float y) {
    return floor(x / y + 0.5) * y;
}

// Hardcoded through automation
int checkGlowColor(vec3 color) {
    if(abs(color.b - 0.13) < 0.01) {
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.24) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.89) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.13) < 0.01) {
        if(abs(color.g - 0.24) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.69) < 0.01) {
        if(abs(color.g - 0.40) < 0.01) {
            if(abs(color.r - 0.10) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.09) < 0.01) {
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.09) < 0.01) {
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.82) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.82) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.10) < 0.01) {
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.82) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.10) < 0.01) {
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.82) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.20) < 0.01) {
            if(abs(color.r - 0.82) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.83) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.84) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.11) < 0.01) {
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.21) < 0.01) {
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.85) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.11) < 0.01) {
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.11) < 0.01) {
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.12) < 0.01) {
        if(abs(color.g - 0.22) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    if(abs(color.b - 0.12) < 0.01) {
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
        }
        if(abs(color.g - 0.23) < 0.01) {
            if(abs(color.r - 0.88) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.86) < 0.01) {
                return 1;
            }
            if(abs(color.r - 0.87) < 0.01) {
                return 1;
            }
        }
    }
    return 0;
}

void main() {
    vec2 pixel = (UV * screenSize);

    vec4 color = (texture2D(textureSampler, pixel / screenSize));

    const int BLOCK_SIZE = 8;

    const float RADIUS_OFFSET = 1.5;

    // Calc luminance for 8x8 pixel block 
    vec4 lumVector[BLOCK_SIZE * BLOCK_SIZE];

    int count;
    for(int i = 0; i < BLOCK_SIZE; i++) {
        for(int j = 0; j < BLOCK_SIZE; j++) {

            vec2 offset = vec2(float(i * RADIUS_OFFSET), float(j * RADIUS_OFFSET));
            vec2 centre = vec2(BLOCK_SIZE * RADIUS_OFFSET / 2, BLOCK_SIZE * RADIUS_OFFSET / 2);

            vec4 c = texture2D(textureSampler, (pixel + offset - centre) / screenSize);

            float luminance = 0;

            if(checkGlowColor(c.rgb) == 1) {
                luminance = 1;
            }
            vec4 brightColor = c * 2;

            brightColor.xyz *= sign(luminance);
            brightColor.a = 1.0;

            lumVector[i * BLOCK_SIZE + j] = brightColor;
            count++;
        }
    }

    vec4 avgLum = vec4(0, 0, 0, 0);
    for(int i = 0; i < BLOCK_SIZE; i++) {
        for(int j = 0; j < BLOCK_SIZE; j++) {
            avgLum += lumVector[i * BLOCK_SIZE + j];
        }
    }
    avgLum /= count;

    // Invert colors
    gl_FragColor = color + avgLum;
}