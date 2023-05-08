using Dash

app=dash(external_stylesheets = ["https://codepen.io/chriddyp/pen/bWLwgP.css"]);


"""
    QuadraticEquation(a,b,c)

TBW
"""
struct QuadraticSqrt
    x1::Integer
    x2::Integer
    x3::Complex
    x4::Complex
end

function QuadraticEquation(a,b,c)
    Δ=sqrt(b^2+4*a*c)
    x1=(-b+ Δ)/2*a;
    x2=(-b- Δ)/2*a;
    x3=(-b/2a)+(im*sqrt(Δ)/2a);
    x4=(-b/2a)-(im*sqrt(Δ)/2a);
    return QuadraticSqrt(x1,x2,x3,x4);
end

resultado = QuadraticEquation(1,2,-1);

app.layout = html_div() do
    html_h1("Minha aplicação usando Dash"),
    html_h3("Resultados da entrada de a=1,b=2,c=-1 para Equação de Segundo Grau"),
    html_p("x1=$resultado.x1"),
    html_p("x2=$resultado.x2"),
    html_p("x3=$resultado.x3"),
    html_p("x4=$resultado.x4")
end

run_server(app, "0.0.0.0", 8080);