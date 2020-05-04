# What is this

Base project for a mixamo->blender->godot project 

## Workflow
### Animation Workflow Tools

In a simple example we have an animation downloaded from mixamo with the default settings as an fbx file.

Because godot does not support fbx files natively We will use blender as an interidiate pipeline tool between other tools and our godot game engine. It will create the gltf  files we need  to be ablle to have access to the animations inside godot.

We will use an external tool to to the necessary changes to the skeleton scales and modify teh animation graphs of some of the bones automatically(we need to do this manually no matter the engine) 

The tool is found on https://viniguerrero.itch.io/godot-game-tools and you will need to import it as a blender plugin. use this page of blender documentation to know where to place the tools https://docs.blender.org/manual/en/latest/advanced/blender_directory_layout.html.

Please use the video on the page to know how to use it to export the final gltf files that are structured in a way that godot can pick them up and make them avalable in teh scene tree

### Landscape Workflow Tools
