# QuantaForce

A fluid simulation engine written in C++ for Aerodynamics simulations.

## Setup

1. Install [raylib](https://raysan5.itch.io/raylib/download/eyJleHBpcmVzIjoxNzI2Njg5ODE0LCJpZCI6ODUzMzF9.lJkb3%2fgFOmsbN1Jhj91dU3S6uWA%3d)
2. Install chocolatey (if you don't have it already)
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```
3. Install make using chocolatey
   ```powershell
   choco install make
   ```
4. Install mingw using chocolatey (if you don't have it already)
   ```powershell
   choco install mingw
   ```
5. Clone the repository and enter the directory
   ```powershell
   git clone https://github.com/atharvparlikar/quantaforce.git
   cd quantaforce
   ```
6. Run following command to build the project (in the root directory)
   ```powershell
   make
   ```
7. Run the engine

   ```powershell
   .\bin\game.exe
   ```

   ## How to contribute to the project

   Coming soon...
