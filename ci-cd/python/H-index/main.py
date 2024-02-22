import solution

def main():
    print("Введите числа через пробел:")
    citations = [int(i) for i in input().split()]

    print(solution.Solution().hIndex(citations))


if __name__ == "__main__":
    main()