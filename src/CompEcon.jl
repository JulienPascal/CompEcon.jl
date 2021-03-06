__precompile__()

module CompEcon

using Reexport

using QuantEcon: gridmake, gridmake!, ckron, fix, fix!, qnwlege, qnwcheb,
                 qnwsimp, qnwtrap, qnwbeta, qnwgamma, qnwequi, qnwnorm,
                 qnwunif, qnwlogn,
                 quadrect, do_quad

@reexport using BasisMatrices

using BasisMatrices: squeeze_trail
import BasisMatrices: funeval, funfitxy, funfitf

# old API only
export fundef, fundefn, funnode, funbase, funbasex, funeval, funbconv,
       chebdef, chebnode, chebbase, chebbasex, chebdop,
       splidef, splinode, splibase, splibasex, splidop,
       lindef, linnode, linbase, lindop

include("core.jl")
include("cheb.jl")
include("spli.jl")
include("lin.jl")
include("compat.jl")

end # module
