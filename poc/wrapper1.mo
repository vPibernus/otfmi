model wrapper1

function ExternalFunc
  input Real[4] x;
  output Real[1] y;
  external "C" c_func(4, x, 1, y);
  annotation(Library="cwrapper1", LibraryDirectory="file:///home/schueller/projects/openturns/otfmi/poc");
end ExternalFunc;

  input Real E(start=30000000.0);
  input Real F(start=30000.0);
  input Real L(start=250.0);
  input Real I(start=400.0);
  output Real y0;
protected
  Real output_array_zzz__[1] = ExternalFunc({E, F, L, I});
equation
  y0 = output_array_zzz__[1];
end wrapper1;

