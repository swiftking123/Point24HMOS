import { router } from '@kit.ArkUI'

interface GeneratedTypeLiteralInterface_1 {
  cards: number[];
}

@Entry
@Component
struct ResultPage {
  @State result: string[] = []
  private cards: number[] = []

  aboutToAppear(): void {
    // 获取传递过来的参数，类型断言为包含 cards 属性的对象
    const params = router.getParams() as GeneratedTypeLiteralInterface_1;

    // 从 params 中获取 cards 数组
    this.cards = params.cards;
    // 计算24点的结果
    this.result = calculate24(this.cards);
  }

  build() {
    Column() {
      Text("24点游戏结果").fontSize(30).margin({ bottom: 20 });
      Text(`选中的牌: ${this.cards.join(', ')}`).fontSize(20).margin({ bottom: 20 });

      // 显示计算结果，使用换行符分隔每个解法
      Text(`计算结果:\n${this.result.join('\n')}`).fontSize(25).margin({ top: 20 });

      Button("返回").fontSize(30)
        .onClick(() => {
          router.back(); // 返回上一页
        })
        .margin({ top: 20 });
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center);
  }
}

function calculate24(cards: number[]): string[] {
  // 辅助函数：计算两个数的所有可能运算结果
  const operate = (a: number, b: number, op: string): number | null => {
    switch (op) {
      case '+': return a + b;
      case '-': return a - b;
      case '*': return a * b;
      case '/': return b !== 0 ? a / b : null; // 避免除以零
      default: return null;
    }
  };

  // 标准化表达式
  const normalizeExpression = (expression: string[]): string => {
    return expression.join(' ').replace(/\s+/g, ' ').trim(); // 去除多余空格
  };

  // 主函数：尝试所有可能的组合
  const backtrack = (numbers: number[], expression: string[]): string[] => {
    const solutions: Set<string> = new Set(); // 使用 Set 避免重复解法

    if (numbers.length === 1) {
      // 如果只剩一个数，检查它是否等于 24
      if (Math.abs(numbers[0] - 24) < 1e-6) {
        const normalized = normalizeExpression(expression);
        solutions.add(`找到解法: ${normalized} = 24`); // 优化返回格式
      }
      return Array.from(solutions);
    }

    // 遍历所有数对
    for (let i = 0; i < numbers.length; i++) {
      for (let j = 0; j < numbers.length; j++) {
        if (i !== j) {
          const nextNumbers = numbers.filter((_, index) => index !== i && index !== j);
          const a = numbers[i];
          const b = numbers[j];

          // 尝试四种运算
          for (const op of ['+', '-', '*', '/']) {
            const result = operate(a, b, op);
            if (result !== null) {
              nextNumbers.push(result); // 加入新数
              const newExpression = [...expression, `(${a} ${op} ${b})`]; // 记录表达式
              const res = backtrack(nextNumbers, newExpression); // 递归

              // 收集所有解法
              for (const solution of res) {
                solutions.add(solution);
              }
              nextNumbers.pop(); // 回溯
            }
          }
        }
      }
    }
    return Array.from(solutions); // 返回所有解法
  };

  const result = backtrack(cards, cards.map(String)); // 初始化表达式
  return result.length > 0 ? result : ['未找到解法']; // 返回找到的解法或未找到
}


