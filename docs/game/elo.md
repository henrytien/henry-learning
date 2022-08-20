# Elo 

## 公式实现
**ELO分数计算**


$$Ea=\frac {1}{1 + 10^{(Rb-Ra/400)}\tag{1}}$$ 
$$Ra_{new} = Ra_{old} + K(Sa - Ea)\tag{1.1}$$ 

:warning: 公式说明
$Ra$：a玩家的elo分，用于判断排位
$Ra_{new}$：a玩家结算后的新elo分
$Ra_{old}$：a玩家当前elo分
$K$:常数32
$Sa$：a玩家的胜负真实得分：
胜=1 输=0 平=0.5
$Ea$：a玩家的预估胜率

$Ea$公式实现
```python
def expectation(ra, rb, S):
    """Elo期望公式

    Args:
        ra (int): a玩家的elo分
        rb (int): b玩家的elo分
        S (int): 公式优化数值

    Returns:
        int: 计算后新的Elo值
    """
    return 1.0 / (1.0 + math.exp((rb - ra) * math.log(10.0) / S))

#1 胜利 0 失败 2 平局
def calc_elo_score(camp_score_a, camp_score_b, win):
    """计算Elo分数

    Args:
        camp_score_a (int): 己方当前elo分数
        camp_score_b (int): 敌方当前elo分数
        win (int): 己方的胜负
    Returns:
        int: 新的elo分数
    """
    # 获取K值
    k = k_factor(camp_score_a)
    # 获取Ratio
    ratio = evaluate_ratio()
    # 求期望
    ea = expectation(camp_score_a, camp_score_b, ratio)
    # 本局胜负真实得分

    sa = 0  #胜=1 输=0 平=0.5
    if win == 1:
        sa = 1
    elif win == 2:
        sa = 0.5

    new_score =  k * (sa - ea)
    log(...)
    return new_score
```



## 参考
- [Elo rating system](https://en.wikipedia.org/wiki/Elo_rating_system) The Elo rating system is a method for calculating the relative skill levels of players in zero-sum games such as chess.
