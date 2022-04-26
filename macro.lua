en = true
if not (arg == nil) then
    for _, v in pairs(arg) do
        if (v == "es") then
            en = false
        end
    end
end

if en then
    tex.print("\\newcommand\\en[1]{#1} \\newcommand\\es[1]{}")
else
    tex.print("\\newcommand\\en[1]{} \\newcommand\\es[1]{#1}")
end
