# 🚀 Dominando a Notação Big O (Complexidade de Algoritmos)

![Big O Logo](https://img.shields.io/badge/Status-Estudo_Ativo-brightgreen)
![Language](https://img.shields.io/badge/Focus-Java_%7C_C-blue)
![CS](https://img.shields.io/badge/Field-Computer_Science-orange)

Este repositório é dedicado ao estudo de **Análise de Algoritmos**, focado em entender como o tempo de execução e o uso de memória escalam conforme o volume de dados ($n$) cresce. Fundamental para a Engenharia de Software e preparação para concursos de TI.

---

## 📊 O que é Big O?

A notação **Big O** descreve o limite superior do tempo de execução de um algoritmo, ou seja, o **pior caso**. Ela nos ajuda a prever se um código que funciona bem com 10 elementos continuará sendo eficiente com 1 milhão.



### Tabela de Comparação de Eficiência

| Notação | Nome | Exemplo Prático | Eficiência |
| :--- | :--- | :--- | :--- |
| **O(1)** | Constante | Acessar um índice de um array | 🟢 Excelente |
| **O(log n)** | Logarítmica | Busca Binária (Dividir para conquistar) | 🟢 Muito Boa |
| **O(n)** | Linear | Busca Simples (percorrer um `for`) | 🟡 Justa |
| **O(n log n)** | Linear-Logarítmica | Merge Sort / Quick Sort | 🟡 Aceitável |
| **O(n²)** | Quadrática | Dois laços aninhados (Bubble Sort) | 🔴 Ruim |
| **O(2ⁿ)** | Exponencial | Algoritmos de força bruta recursivos | 💀 Terrível |

---

## 💻 Exemplos de Implementação (Java & C)

### 1. Busca Linear - $O(n)$
O tempo aumenta proporcionalmente ao número de itens.

```java
// Java
for(String item : lista) {
    if(item.equals(alvo)) return true; 
}
