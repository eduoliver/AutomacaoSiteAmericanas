#language: pt
Funcionalidade: Remover item da cesta

    @RemoverItem
    Cenario: Remve um item da cesta
      Dado que eu limpei os cookies
      E que eu acesse a pagina das lojas Americanas
      E buscar pelo produto Moto G6
      E seleciono o Moto G6
      E prossigo o fluxo de compra
      Entao removo o item da cesta
