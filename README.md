# RTv1
A simple [ray-tracing](https://en.wikipedia.org/wiki/Ray_tracing_(graphics)) engine in C using [minilibx](https://github.com/qst0/ft_libgfx). (42 Silicon Valley)

## Prerequisites

You are on macOS with `gcc` and `make` installed.

## Compiling

```
make
```

## Running

```
./RTv1 scene_file
```

## Controls

### Top-level Controls

* `~` Save image in PPM format.
* `Escape` Terminate the renderer.

### Camera Controls
* `Numpad +` Increase FOV (zoom out).
* `Numpad -` Decrease FOV (zoom in).
* `Numpad 7` Move camera toward -X-axis.
* `Numpad 8` Move camera toward +X-axis.
* `Numpad 4` Move camera toward -Y-axis.
* `Numpad 5` Move camera toward +Y-axis.
* `Numpad 1` Move camera toward -Z-axis.
* `Numpad 2` Move camera toward +Z-axis.
* `Left Shift` + `Numpad 7` Decrease camera rotation around X-axis.
* `Left Shift` + `Numpad 8` Increase camera rotation around X-axis.
* `Left Shift` + `Numpad 4` Decrease camera rotation around Y-axis.
* `Left Shift` + `Numpad 5` Increase camera rotation around Y-axis.
* `Left Shift` + `Numpad 1` Decrease camera rotation around Z-axis.
* `Left Shift` + `Numpad 2` Increase camera rotation around Z-axis.

### Light Controls
A scene may have 1 or more light sources.  A light source may be directional light or point light.

* `Tab` Select next light source.
* `O` Toggle light on/off.
* `+` Increase light intensity.
* `-` Decrease light intensity.
#### Directional Light
* `Q` Decrease light direction.x
* `W` Increase light direction.x
* `A` Decrease light direction.y
* `S` Increase light direction.y
* `Z` Decrease light direction.z
* `X` Increase light direction.z

#### Spherical Light
* `Q` Decrease light position.x
* `W` Increase light position.x
* `A` Decrease light position.y
* `S` Increase light position.y
* `Z` Decrease light position.z
* `X` Increase light position.z

### Object Controls
* `Click LMB` Select object.
* `Down Arrow` Decrease object's phong specular exponent.
* `Up Arrow` Increase object's phong specular exponent.
* `Left Arrow` Decrease object's phong diffuse weight.
* `Right Arrow` Increase object's phong diffuse weight.
* `Left Shift` + `Left Arrow` Decrease object's phong specular weight.
* `Left Shift` + `Right Arrow` Increase object's phong specular weight.
* `T` Move object toward -X-axis.
* `Y` Move object toward +X-axis.
* `G` Move object toward -Y-axis.
* `H` Move object toward +Y-axis.
* `B` Move object toward -Z-axis.
* `N` Move object toward +Z-axis.
* `Left Shift` + `T` Decrease object rotation around X-axis.
* `Left Shift` + `Y` Increase object rotation around X-axis.
* `Left Shift` + `G` Decrease object rotation around Y-axis.
* `Left Shift` + `H` Increase object rotation around Y-axis.
* `Left Shift` + `B` Decrease object rotation around Z-axis.
* `Left Shift` + `N` Increase object rotation around Z-axis.
