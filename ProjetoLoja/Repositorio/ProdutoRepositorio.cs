using MySql.Data.MySqlClient;
using ProjetoLoja.Models;
using Dapper;

namespace ProjetoLoja.Repositorio
{
    public class ProdutoRepositorio
    {
        //Variavel que chama a conexão com o banco
        private readonly string _connectionString;

        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }
        public async Task<IEnumerable<Produto>> TodosProdutos()
        {
            using var connection = new MySqlConnection(_connectionString);
            var sql = "SELECT Id, Nome, Descricao, Preco, ImageUrl, Estoque FROM TbProdutos";
            return await connection.QueryAsync<Produto>(sql);
        }
    }
}
