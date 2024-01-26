# Define list of constraints here
mutable struct cons{ _T  } 
    sys         ::  String
    ox          ::  Vector{String}
    X           ::  Vector{Float64}
    P           ::  _T
    T           ::  _T 

    ph          ::  Vector{String}
    ph_frac     ::  Vector{Float64}
end


#=
    set of constraint for a calibration test using KLB1 peridorite and H18->G23 igneous database
=#
    constraints  = [
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 800.0, ["pl4T", "ol", "fl", "cpx", "spn", "opx", "ilm"], [0.48361181362902, 0.0219753456464321, 0.06329431523199587, 0.2427712531078568, 0.00377902312533945, 0.168364967437259, 0.016198813535534307]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 900.0, ["ol", "pl4T", "fl", "cpx", "spn", "ilm", "opx"], [0.01864503999122219, 0.47493614395597583, 0.06732312211330531, 0.25620023813009085, 0.003013404687426232, 0.01562250159051005, 0.1642557932544129]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 1000.0, ["pl4T", "ol", "cpx", "spn", "ilm", "fl", "opx"], [0.4615939874156615, 0.01308812629794871, 0.2789520593226066, 0.0024177470956985915, 0.014550502207603705, 0.07414621070283241, 0.1552394936543802]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 1100.0, ["pl4T", "fl", "liq", "cpx", "ol"], [0.25823472129592, 0.07221726041436209, 0.45582684465856577, 0.13116912303794304, 0.08255447674843641]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 1200.0, ["liq", "fl"], [0.9309901037179844, 0.06901371142937587]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 1300.0, ["liq", "fl"], [0.9275321961930182, 0.07246909247304463]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 0.01, 1400.0, ["liq", "fl"], [0.9238732647856664, 0.07612806499837994]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 800.0, ["pl4T", "cpx", "liq", "hb", "ilm", "opx"], [0.26492352227869015, 0.14768805772830948, 0.14212388493826925, 0.4028309175985751, 0.006849734612091477, 0.035566586010693596]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 900.0, ["liq", "hb", "cpx", "pl4T", "opx", "ilm"], [0.21860410155222715, 0.18229899067820454, 0.22896141486296312, 0.25936696492577455, 0.10828866248963216, 0.0024151170407685626]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 1000.0, ["liq", "cpx", "pl4T", "opx"], [0.39056426877699485, 0.25577665185504506, 0.22412200720512915, 0.12953864990223976]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 1100.0, ["pl4T", "liq", "cpx", "opx"], [0.06533022288239786, 0.7737240146400655, 0.14863669020050424, 0.012325235680591917]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 1200.0, ["liq"], [1.0000013671594405]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 1300.0, ["liq"], [0.9999994491919763]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 5.01, 1400.0, ["liq"], [0.999999193835797]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 800.0, ["cpx", "hb", "pl4T", "liq", "q", "ru"], [0.17202397817428083, 0.5169561224495919, 0.15407628572058124, 0.0970661988294304, 0.05868472342731508, 0.0011619776723242978]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 900.0, ["pl4T", "cpx", "liq", "hb", "opx"], [0.22563069085136533, 0.257395530058305, 0.2104906153352469, 0.2318957066670721, 0.0745328358821201]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 1000.0, ["liq", "opx", "pl4T", "cpx", "hb"], [0.3295876896721955, 0.11123972624265661, 0.2104402274707598, 0.3073833176513254, 0.04132248715298776]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 1100.0, ["liq", "opx", "cpx", "pl4T"], [0.614087539178098, 0.03352889389343387, 0.2613774524193958, 0.09101833954698496]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 1200.0, ["liq", "cpx"], [0.9565295258823377, 0.0434763333454422]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 1300.0, ["liq"], [1.0000000943462315]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 10.01, 1400.0, ["liq"], [1.0000003221924674]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 800.0, ["pl4T", "g", "liq", "hb", "cpx", "q", "ru"], [0.03520171815897737, 0.21958818920486797, 0.13255176890243064, 0.28721324737220333, 0.2427312495128777, 0.08147846534805547, 0.0011991701096877813]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 900.0, ["cpx", "g", "liq", "pl4T"], [0.32279957878200105, 0.31899445820866756, 0.26569945737521283, 0.09247312398301734]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 1000.0, ["cpx", "liq", "g", "pl4T"], [0.31664645862781304, 0.3468322666741446, 0.28212445194848906, 0.054358740037086385]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 1100.0, ["g", "liq", "cpx"], [0.19797960052656396, 0.510910044280235, 0.2910943834032855]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 1200.0, ["liq", "cpx"], [0.8101451772502456, 0.18986350081564557]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 1300.0, ["liq"], [0.9999996591433657]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 15.01, 1400.0, ["liq"], [1.000000296059005]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 800.0, ["cpx", "liq", "g", "q", "ky"], [0.4073948808134819, 0.15110329694251876, 0.3509952628025857, 0.05417978819665623, 0.036298899528782035]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 900.0, ["g", "liq", "cpx", "q"], [0.4098102389908657, 0.21825390283702592, 0.32756712817534667, 0.04435181336722374]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 1000.0, ["g", "liq", "cpx"], [0.3697762072114564, 0.32756823134378626, 0.30263648035837626]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 1100.0, ["g", "liq", "cpx"], [0.30674300362694, 0.41322696351353266, 0.2800107573673273]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 1200.0, ["g", "liq", "cpx"], [0.17129797941853703, 0.5945066254980147, 0.23419099905700375]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 1300.0, ["liq", "cpx"], [0.9407775310716351, 0.059228098866010354]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 20.01, 1400.0, ["liq"], [0.9999992708031442]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 800.0, ["cpx", "g", "liq", "q", "ky"], [0.41063448386329177, 0.3712639012405794, 0.1234631092518711, 0.06464700045995657, 0.029962558399961495]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 900.0, ["liq", "g", "cpx", "q", "ky"], [0.16621954103136258, 0.41492718054548366, 0.35333312226046865, 0.059313250709088515, 0.006193908884203217]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 1000.0, ["liq", "cpx", "g", "q"], [0.24060406435090625, 0.3218799065225363, 0.40328241323946473, 0.03417942918673456]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 1100.0, ["g", "liq", "cpx"], [0.3588674087377488, 0.3516562882223503, 0.28946176732922224]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 1200.0, ["liq", "g", "cpx"], [0.46912376257312055, 0.2836620974943086, 0.24719949319709397]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 1300.0, ["g", "liq", "cpx"], [0.12144553537035453, 0.7221698147184553, 0.15639303361659668]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 25.01, 1400.0, ["liq"], [0.9999980455464295]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 800.0, ["liq", "cpx", "g", "coe", "ky"], [0.1083174982819631, 0.3963860778098833, 0.40394175236075475, 0.07464549386436821, 0.01669417151107227]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 900.0, ["g", "liq", "cpx", "coe", "ky"], [0.43078194177125767, 0.13803169779326174, 0.3592367390634591, 0.0698529671514813, 0.0020810692008272793]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 1000.0, ["liq", "cpx", "g", "q"], [0.18886514546653865, 0.34001816243516775, 0.4188880496400728, 0.05219018807537501]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 1100.0, ["liq", "cpx", "g", "q"], [0.28220908685325236, 0.3134850261272495, 0.3873078207628873, 0.01696532561069368]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 1200.0, ["liq", "g", "cpx"], [0.39088761449584825, 0.33751093480448596, 0.27158699904557076]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 1300.0, ["g", "liq", "cpx"], [0.24514226004618997, 0.5548026884704907, 0.20004519544899557]),
    cons{Float64}("mol",["SiO2", "Al2O3", "CaO", "MgO", "FeO", "K2O", "Na2O", "TiO2", "O", "Cr2O3", "H2O"],[0.50081, 0.08690099999999999, 0.11669800000000001, 0.121438, 0.077832, 0.00215, 0.024977999999999997, 0.010059, 0.0046700000000000005, 0.0001, 0.054363999999999996], 30.01, 1400.0, ["liq", "g", "cpx"], [0.9151225591462628, 0.04852050420409575, 0.036363856367180744])
];
