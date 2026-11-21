import re
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
FORM = ROOT / "projeto_locadora/back_end/crud_carros/cadastro_carros/cadastro_forms.php"
HANDLER = ROOT / "projeto_locadora/back_end/crud_carros/cadastro_carros/cadastro_banco.php"


class CadastroCarrosSmokeTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.form = FORM.read_text(encoding="utf-8")
        cls.handler = HANDLER.read_text(encoding="utf-8")

    def test_form_posts_to_car_registration_handler(self):
        self.assertRegex(self.form, r'<form\s+action="cadastro_banco\.php"\s+method="post">')

    def test_form_includes_existing_employee_header(self):
        self.assertTrue((FORM.parent / "../../../html/header_funcionario.php").resolve().is_file())
        self.assertIn("include '../../../html/header_funcionario.php'", self.form)

    def test_form_contains_all_car_fields(self):
        expected_fields = {
            "modelo", "tipo", "ano", "id_carro", "placa",
            "disponibilidade", "id_agencia", "preco_aluguel",
        }
        actual_fields = set(re.findall(r'name="([^"]+)"', self.form))
        self.assertTrue(expected_fields.issubset(actual_fields))

    def test_cancel_link_points_to_existing_application_home(self):
        self.assertIn('href="../../../index.php"', self.form)
        self.assertTrue((FORM.parent / "../../../index.php").resolve().is_file())

    def test_handler_inserts_all_form_fields_with_bound_parameters(self):
        columns = (
            "ano, modelo, id_carro, placa, tipo, disponibilidade, "
            "id_agencia, preco_aluguel"
        )
        self.assertIn(columns, self.handler)
        for field in (
            "ano", "modelo", "id_carro", "placa", "tipo",
            "disponibilidade", "id_agencia", "preco_aluguel",
        ):
            self.assertIn(f"':{field}' => $_POST['{field}']", self.handler)

    def test_handler_redirects_to_existing_destinations(self):
        self.assertIn('header("Location: ../../../index.php?msgSucesso=', self.handler)
        self.assertIn('header("Location: cadastro_forms.php?msgErro=', self.handler)


if __name__ == "__main__":
    unittest.main()
