          <div id="r-content">
            <div class="r-title">Cadastro</div>
            <br>
            <div class="r-description">
             Cadastre-se para continuar
            </div>
          </div>
          
          <form method="POST" autocomplete="off">
            <div class="row">
              <div class="col-sm-6">
                <label>Nome</label>
                <input type="text" name="nome" class="form-control" required>
              </div>

              <div class="col-sm-6">
                <label>CEP</label>
                <input type="text" name="cep" class="form-control" required><br>
              </div>

              <div class="col-sm-6">
                <label>Email</label>
                <input type="email" name="email" class="form-control" required><br>
              </div>

              <div class="col-sm-6">
                <label>Endereço</label>
                <div class="form-inline">
                <input type="text" name="endereco" class="form-control col-sm-9" placeholder="Endereço" required> 

                <input type="text" name="numero" placeholder="numero" class="form-control col-sm-3" required>
                </div>
              </div>

              <div class="col-sm-6">
                <label>Senha</label>
                <input type="password" name="senha" class="form-control" required><br>
              </div>

              <div class="col-sm-6">
                <label>Complemento</label>
                <input type="text" name="complemento" class="form-control" placeholder="Casa x" required><br>
              </div>


            <div class="col-sm-6">
                <label>Telefone de contato</label>
                <input type="text" name="telefone" id="telefone" class="form-control" required><br>
            </div>

            <div class="col-sm-6">
                <label>Bairro</label>
                <input type="text" name="bairro" class="form-control" placeholder="Casa x" required><br>
            </div>

            <div class="col-sm-6">
                <label>Cidade</label>
                <input type="text" name="cidade" class="form-control" placeholder="Casa x" required><br>
            </div>

            <div class="col-sm-6">
                <label>Estado</label>
                <input type="text" name="estado" class="form-control" placeholder="Casa x" required><br>
            </div>
        </div>

            <p><input type="submit" value="Cadastrar" class="btn btn-outline-success btn-lg btn-block"></p>
            <input type="hidden" name="cad" value="astro">
          </form>
          <?php website::website_register();?>
          </div>
          
          