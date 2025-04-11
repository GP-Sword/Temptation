#ifndef PARTICLE_H
#define PARTICLE_H

#include <SDL.h>

// Structure to represent a particle
struct Particle {
    float x, y;           // Current position
    float vx, vy;         // Velocity
    int lifetime;       // Frames until death
    SDL_Texture* texture; // Texture of the particle
    float size;         // Size of the particle
    float originalSize; // Store original size
    float alpha;
};

// Function to generate a random float within a range
float randomFloat(float min, float max);

// Function to generate a random integer within a range
int randomInt(int min, int max);

// Function to create a particle
Particle createParticle(float x, float y, SDL_Texture* texture, float minSize, float maxSize);

// Function to update a particle
void updateParticle(Particle& p);

// Function to draw a particle
void drawParticle(SDL_Renderer* renderer, const Particle& p);

#endif