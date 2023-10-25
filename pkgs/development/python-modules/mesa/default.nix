{ lib
, buildPythonPackage
, fetchPypi
, isPy27
, cookiecutter
, networkx
, pandas
, tornado
, tqdm
, pytestCheckHook
}:

buildPythonPackage rec {
  pname = "mesa";
  version = "2.1.1";
  format = "setuptools";

  # According to their docs, this library is for Python 3+.
  disabled = isPy27;

  src = fetchPypi {
    pname = "Mesa";
    inherit version;
    hash = "sha256-1wyXndB7xQy1jnfHsIqMQgsvmGYUhjDuSBB2M0GcXC4=";
  };

  propagatedBuildInputs = [
    cookiecutter
    networkx
    pandas
    tornado
    tqdm
  ];

  nativeCheckInputs = [
    pytestCheckHook
  ];

  disabledTests = [
    "test_examples"
    "test_run"
    "test_scaffold_creates_project_dir"
  ];

  meta = with lib; {
    homepage = "https://github.com/projectmesa/mesa";
    description = "An agent-based modeling (or ABM) framework in Python";
    license = licenses.asl20;
    maintainers = [ maintainers.dpaetzel ];
  };
}
