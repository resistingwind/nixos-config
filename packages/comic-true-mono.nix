{
  fetchFromGitHub, 
  stdenvNoCC
}:
stdenvNoCC.mkDerivation {
  pname = "comic-true-mono";
  version = "v1.1.0";

  src = fetchFromGitHub {
    owner = "CptIdea";
    repo = "ComicTrueMono";
    rev = "main";
    sha256 = "b8+v8eElhbPA8YmbFEvpAQsMZnemdJSeRWDFmfj3ej8=";
  };

  dontBuild = true;
  dontConfigure = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp fonts/ttf/*.ttf $out/share/fonts/truetype

    runHook postInstall
  '';
}
