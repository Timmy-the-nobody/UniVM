# univm

Simple package to load all the packages you want in the same lua VM.
Can be usefull to share globals for exemple.

### How to use this thing?
- Go to [`Shared/Index.lua`](https://github.com/Timmy-the-nobody/UniVM/blob/main/Shared/Index.lua#L2) and put the packages you want to have in a shared VM in the `PackagesList` table.
- Don't load them somewhere else!
