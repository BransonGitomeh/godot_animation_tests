video demo is here https://youtu.be/qcyf3qygG1w

# What is this

Base project for a `mixamo -> blender -> godot` project with an emphasis on merging multiple animations, proper materials export

## Workflow
### Animation Workflow Tools

In a simple example we have an animation downloaded from mixamo with the default settings as an fbx file.

Because godot does not support fbx files natively We will use blender as an interidiate pipeline tool between other tools and our godot game engine. It will create the gltf  files we need  to be ablle to have access to the animations inside godot.

We will use an external tool to to the necessary changes to the skeleton scales and modify teh animation graphs of some of the bones automatically(we need to do this manually no matter the engine) 

The tool is found on https://viniguerrero.itch.io/godot-game-tools and you will need to import it as a blender plugin. use this page of blender documentation to know where to place the tools https://docs.blender.org/manual/en/latest/advanced/blender_directory_layout.html.

Please use the video on the page to know how to use it to export the final gltf files that are structured in a way that godot can pick them up and make them avalable in teh scene tree

-- Please note that... --
Switch blender to lookdev/render mode(top right corner) for it to load materials into memory before you export the character, otherwise you'll just get white materials in godot engine which is probably not what you want

### Landscape Workflow Tools
For land, we need a voxel based landscape generation tool, and since godot doesnt have an inbuilt one, we use this plugin https://github.com/Zylann/godot_terrain_plugin to make the landscape.

We also write our own vertex shaders to show different materials based on height.

//todo: load heightmaps from network and cache them locally

### Asset placement for assets on the landscape



