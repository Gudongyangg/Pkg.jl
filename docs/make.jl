using Pkg
using Documenter

DocMeta.setdocmeta!(Pkg, :DocTestSetup, :(using Pkg); recursive=true)

makedocs(;
    modules=[Pkg],
    authors="Gudongyangg",
    repo="https://github.com/Gudongyangg/Pkg.jl/blob/{commit}{path}#{line}",
    sitename="Pkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Gudongyangg.github.io/Pkg.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Gudongyangg/Pkg.jl",
    devbranch="master",
)
