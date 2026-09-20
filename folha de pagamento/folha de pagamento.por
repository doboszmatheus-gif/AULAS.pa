programa
{
    funcao inicio()
    {
        inteiro masculino = 0
        inteiro feminino = 0

        real maior_liquido = 0
        real menor_liquido = 0

        real maior_masculino = 0
        real maior_feminino = 0

        real salario
        real inss
        real fgts
        real salario_liquido
        real vale
        real total

        cadeia genero

        para (inteiro i = 0; i < 10; i++)
        {
            escreva("Digite o salário bruto: R$ ")
            leia(salario)

            escreva("Digite o gênero (M/F): ")
            leia(genero)

            genero = (genero)

            inss = salario * 0.11
            fgts = salario * 0.05

            salario_liquido = salario - inss - fgts

            se (salario_liquido < 7298.97)
            {
                vale = 729.87
            }
            senao
            {
                vale = 499.78
            }

            total = salario_liquido + vale

            escreva("\n--- Funcionário ", i + 1, " ---\n")
            escreva("Salário líquido: R$ ", salario_liquido, "\n")
            escreva("Vale alimentação: R$ ", vale, "\n")
            escreva("Salário líquido + vale: R$ ", total, "\n")

            // Contagem dos gêneros
            se (genero == "M")
            {
                masculino++

                se (salario_liquido > maior_masculino)
                {
                    maior_masculino = salario_liquido
                }
            }
            senao se (genero == "F")
            {
                feminino++

                se (salario_liquido > maior_feminino)
                {
                    maior_feminino = salario_liquido
                }
            }

            // Maior e menor salário líquido
            se (i == 0)
            {
                maior_liquido = salario_liquido
                menor_liquido = salario_liquido
            }
            senao
            {
                se (salario_liquido > maior_liquido)
                {
                    maior_liquido = salario_liquido
                }

                se (salario_liquido < menor_liquido)
                {
                    menor_liquido = salario_liquido
                }
            }
        }

        escreva("\n===== RESULTADO FINAL =====\n")
        escreva("Funcionários masculinos: ", masculino, "\n")
        escreva("Funcionários femininos: ", feminino, "\n")
        escreva("Maior salário líquido: R$ ", maior_liquido, "\n")
        escreva("Menor salário líquido: R$ ", menor_liquido, "\n")
        escreva("Maior salário líquido masculino: R$ ", maior_masculino, "\n")
        escreva("Maior salário líquido feminino: R$ ", maior_feminino, "\n")
    }
}