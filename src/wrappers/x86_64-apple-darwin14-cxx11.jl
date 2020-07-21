# Autogenerated wrapper script for tree_sitter_html_jll for x86_64-apple-darwin14-cxx11
export libtreesitter_html

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libtreesitter_html`
const libtreesitter_html_splitpath = ["lib", "libtreesitter_html.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtreesitter_html_path = ""

# libtreesitter_html-specific global declaration
# This will be filled out by __init__()
libtreesitter_html_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtreesitter_html = "@rpath/libtreesitter_html.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"tree_sitter_html")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libtreesitter_html_path = normpath(joinpath(artifact_dir, libtreesitter_html_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtreesitter_html_handle = dlopen(libtreesitter_html_path)
    push!(LIBPATH_list, dirname(libtreesitter_html_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

