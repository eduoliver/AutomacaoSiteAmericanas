#language: pt
Funcionalidade: Compra de Moto G6

    @CompraMotoG6_1Unidade
    Cenario: Realizar compra de um Moto G6
      Dado que eu limpei os cookies
      E que eu acesse a pagina das lojas Americanas
      E buscar pelo produto Moto G6
      E seleciono o Moto G6
      E prossigo o fluxo de compra
      E prossigo para identificacao
      E faca login com o Facebook com o usuario "11981053644" e senha "Suporte;123"
      E preencha o numero do Cartao de Credito com "30322365784323"
      E preencha o nome do Cartao Credito com "Eduardo Oliveira"
      E preencha a validade com o mes "12"
      E preencha a validade com o ano "2019"
      E preencha o codigo de segurança com "141"
      E pago com "1" parcela
      Entao finalizo a compra

      @CompraMotoG6_2Unidades
      Cenario: Realizar compra de um Moto G6
        Dado que eu limpei os cookies
        E que eu acesse a pagina das lojas Americanas
        E buscar pelo produto Moto G6
        E seleciono o Moto G6
        E prossigo o fluxo de compra
        E seleciono "2" unidades do produto
        E prossigo para identificacao
        E faca login com o Facebook com o usuario "11981053644" e senha "Suporte;123"
        E preencha o numero do Cartao de Credito com "30322365784323"
        E preencha o nome do Cartao Credito com "Eduardo Oliveira"
        E preencha a validade com o mes "12"
        E preencha a validade com o ano "2019"
        E preencha o codigo de segurança com "141"
        E pago com "1" parcela
        Entao finalizo a compra
