# SOLO Expert Team · 终极专家团队系统

> 69位 distilled 专家 + 智能总管系统，为你的每一个问题找到最优解

[![Version](https://img.shields.io/badge/version-1.1.0-blue.svg)](CHANGELOG.md)
[![Skills](https://img.shields.io/badge/skills-69+-green.svg)](#专家列表)
[![License](https://img.shields.io/badge/license-MIT-yellow.svg)](LICENSE)

---

## 🎯 什么是 SOLO Expert Team？

**你不是在选择专家，你是在描述问题。总管负责找到最优解。**

这是一个基于 [Agent Skills 协议](https://agentskills.io/) 的专家团队系统，包含：

- **69位 distilled 专家** —— 覆盖心理学、商业、科技、管理、营销、互联网等全领域
- **智能总管系统** —— 自动分析问题、组建团队、必要时招募新专家
- **三种协作模式** —— 单专家、交叉团队、圆桌辩论

---

## 🚀 快速开始

### 方式一：极简版（推荐 ⭐，单文件即用）

只需复制 **1个文件**，就能在任何对话中使用总管系统：

```bash
# 克隆仓库
git clone https://github.com/etdn2011/solo-expert-team.git

# 只复制极简版总管（1个文件）
cp -r solo-expert-team/skills/master-coordinator-lite ~/.claude/skills/
```

安装完成后，直接对 AI 说：

```
> 总管，帮我分析这个问题
```

### 方式二：完整版（52个独立Skill，深度知识库）

```bash
# 克隆仓库
git clone https://github.com/etdn2011/solo-expert-team.git

# 复制所有Skill
cp -r solo-expert-team/skills/* ~/.claude/skills/
```

### 方式三：一键安装脚本

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/etdn2011/solo-expert-team/main/scripts/install.sh)
```

### 使用

安装完成后，直接对 AI 说：

```
> 总管，帮我看看这个问题
> 你来安排，找最合适的人
> 帮我协调一个团队
```

总管会自动分析你的问题，选择最佳策略：
- **置信度 > 80%** → 单专家即时回答
- **置信度 50-80%** → 交叉团队深度分析
- **置信度 < 50%** → 外部招募新专家

---

## 📚 专家列表（69位）

### 🧠 心理学与行为科学（10位）

| 专家 | 领域 | 核心能力 |
|------|------|---------|
| [卡尼曼](skills/kahneman-perspective-v2/) | 认知心理学 | 系统1vs2、前景理论、认知偏差 |
| [塞勒](skills/thaler-perspective-v2/) | 行为经济学 | 助推、心理账户、禀赋效应 |
| [西奥迪尼](skills/cialdini-perspective-v2/) | 社会心理学 | 影响力六原则、说服科学 |
| [德博诺](skills/de-bono-perspective-v2/) | 创造力 | 横向思维、六顶思考帽 |
| [彼得·圣吉](skills/peter-senge-perspective-v2/) | 系统思考 | 第五项修炼、系统基模 |
| [塞利格曼](skills/seligman-perspective-v2/) | 积极心理学 | 习得性乐观、PERMA |
| [吉尔伯特](skills/gilbert-perspective-v2/) | 幸福心理学 | 幸福错觉、影响偏差 |
| [杜克](skills/duke-perspective-v2/) | 决策科学 | 决策质量、信念校准 |
| [格兰特](skills/grant-perspective-v2/) | 组织行为 | 给与夺、重新思考 |
| [泰特洛克](skills/tetlock-perspective-v2/) | 预测科学 | 超级预测、狐狸vs刺猬 |

### 💼 商业与科技（16位）

| 专家 | 领域 | 核心能力 |
|------|------|---------|
| [乔布斯](skills/steve-jobs-perspective-v2/) | 产品/品牌 | 聚焦减法、端到端控制 |
| [马斯克](skills/elon-musk-perspective-v2/) | 工程/创新 | 第一性原理、成本工程 |
| [芒格](skills/munger-perspective-v2/) | 投资 | 多元思维模型、逆向思考 |
| [纳瓦尔](skills/naval-perspective-v2/) | 财富/杠杆 | 财富创造、人生哲学 |
| [Paul Graham](skills/paul-graham-perspective-v2/) | 创业 | YC方法论、清晰思考 |
| [张一鸣](skills/zhang-yiming-perspective-v2/) | 产品/组织 | 延迟满足、数据驱动 |
| [孙宇晨](skills/sun-yuchen-perspective-v2/) | 营销/IP | 注意力套利、IP打造 |
| [费曼](skills/feynman-perspective-v2/) | 学习/科学 | 费曼学习法、第一性原理 |
| [Karpathy](skills/andrej-karpathy-perspective-v2/) | AI/工程 | AI工程、Software 2.0 |
| [Ilya](skills/ilya-sutskever-skill/) | AI安全 | Scaling、研究品味 |
| [MrBeast](skills/mrbeast-perspective-v2/) | 内容创作 | 数据驱动创作、YouTube |
| [塔勒布](skills/taleb-perspective-v2/) | 风险 | 反脆弱、尾部风险 |
| [特朗普](skills/trump-perspective-v2/) | 谈判/权力 | 谈判策略、传播 |
| [张雪峰](skills/zhangxuefeng-perspective-v2/) | 教育/职业 | 职业规划、现实导向 |
| [X导师](skills/x-mentor-skill/) | 社交媒体 | X/Twitter运营 |

### 🏢 实战企业团队（26位）

#### 国内创始人/CEO（7位）

| 专家 | 核心能力 |
|------|---------|
| [任正非](skills/ren-zhengfei-perspective-v2/) | 灰度管理、危机领导力、熵减 |
| [雷军](skills/lei-jun-perspective-v2/) | 互联网思维、性价比、生态链 |
| [黄峥](skills/huang-zheng-perspective-v2/) | 本质思考、效率创新、本分 |
| [王兴](skills/wang-xing-perspective-v2/) | 无限游戏、高频打低频 |
| [刘强东](skills/liu-qiangdong-perspective-v2/) | 供应链、铁腕执行 |
| [马云](skills/mayun-perspective-v2/) | 愿景驱动、组织文化 |
| [董明珠](skills/dong-mingzhu-perspective-v2/) | 制造精神、渠道铁军 |

#### 国内高管/思想家（6位）

| 专家 | 核心能力 |
|------|---------|
| [曾鸣](skills/zeng-ming-perspective-v2/) | 智能商业、C2B、点线面体 |
| [彭蕾](skills/peng-lei-perspective-v2/) | 组织建设、政委体系 |
| [段永平](skills/duan-yongping-perspective-v2/) | 本分、价值投资 |
| [曹德旺](skills/cao-dewang-perspective-v2/) | 实业精神、全球化制造 |
| [周鸿祎](skills/zhou-hongyi-perspective-v2/) | 免费模式、微创新 |
| [俞敏洪](skills/yu-minhong-perspective-v2/) | 韧性领导力、危机转型 |

#### 国外创始人/CEO（6位）

| 专家 | 核心能力 |
|------|---------|
| [贝索斯](skills/bezos-perspective-v2/) | Day 1、客户至上、飞轮效应 |
| [格鲁夫](skills/grove-perspective-v2/) | 偏执狂生存、OKR、高产出管理 |
| [纳德拉](skills/nadella-perspective-v2/) | 成长型思维、文化变革 |
| [沃尔顿](skills/walton-perspective-v2/) | 低价策略、小镇战略 |
| [韦尔奇](skills/welch-perspective-v2/) | 数一数二、末位淘汰 |
| [达利欧](skills/dalio-perspective-v2/) | 极度透明、原则 |

#### 国外思想家（7位）

| 专家 | 核心能力 |
|------|---------|
| [柯林斯](skills/collins-perspective-v2/) | 第五级领导、从优秀到卓越 |
| [德鲁克](skills/drucker-perspective-v2/) | 目标管理、知识工作者 |
| [霍洛维茨](skills/horowitz-perspective-v2/) | 创业维艰、艰难时刻管理 |
| [稻盛和夫](skills/inamori-perspective-v2/) | 敬天爱人、阿米巴经营 |
| [波特](skills/porter-perspective-v2/) | 五力模型、竞争战略 |
| [克里斯坦森](skills/christensen-perspective-v2/) | 颠覆式创新、Jobs to be Done |
| [格里森](skills/mccord-perspective-v2/) | 绝对坦率、人才密度 |

### 📊 企业管理新增（5位）

| 专家 | 领域 | 核心能力 |
|------|------|---------|
| [张瑞敏](skills/zhang-ruimin-perspective-v2/) | 海尔管理 | 人单合一、零距离管理、砸冰箱精神 |
| [宋志平](skills/song-zhiping-perspective-v2/) | 央企改革 | 整合管理、中国式管理、三精管理 |
| [大前研一](skills/ohmae-kenichi-perspective-v2/) | 战略管理 | 3C战略三角、M型社会、专业主义 |
| [汤姆·彼得斯](skills/tom-peters-perspective-v2/) | 创新管理 | 追求卓越、崇尚行动、解放管理 |
| [拉姆·查兰](skills/ram-charan-perspective-v2/) | 执行管理 | 执行四要素、领导梯队、坦诚对话 |

### 📢 营销新增（6位）

| 专家 | 领域 | 核心能力 |
|------|------|---------|
| [科特勒](skills/kotler-perspective-v2/) | 营销管理 | 4P理论、STP战略、现代营销学之父 |
| [里斯](skills/ries-perspective-v2/) | 定位理论 | 定位理论、品类战略、聚焦法则 |
| [特劳特](skills/trout-perspective-v2/) | 战略定位 | 商战法则、心智战争、差异化或死亡 |
| [肖恩·埃利斯](skills/ellis-perspective-v2/) | 增长黑客 | 北极星指标、增长实验、AARRR模型 |
| [塞斯·高汀](skills/godin-perspective-v2/) | 营销思想 | 紫牛理论、部落营销、许可营销 |
| [瑞安·戴斯](skills/desales-perspective-v2/) | 数字营销 | 客户价值旅程、营销自动化、增长引擎 |

### 🌐 互联网新增（6位）

| 专家 | 领域 | 核心能力 |
|------|------|---------|
| [马化腾](skills/ma-huateng-perspective-v2/) | 腾讯产品 | 产品哲学、连接一切、用户体验至上 |
| [张小龙](skills/zhang-xiaolong-perspective-v2/) | 微信产品 | 极简设计、用完即走、产品直觉 |
| [俞军](skills/yu-jun-perspective-v2/) | 产品方法论 | 价值公式、交易模型、用户理解 |
| [苏杰](skills/su-jie-perspective-v2/) | 产品普及 | Y模型、四轮MVP、人人都是产品经理 |
| [李开复](skills/li-kaifu-perspective-v2/) | AI投资 | AI发展趋势、创新方法论、创业指导 |
| [王慧文](skills/wang-huiwen-perspective-v2/) | 本地生活 | 高频打低频、千团大战、效率竞争 |

---

## 🔧 协作系统

| 系统 | 功能 | 触发词 |
|------|------|--------|
| [总管系统](skills/master-coordinator/) | 智能路由、自主决策、外部招募 | "总管"、"你来安排" |
| [智能路由](skills/smart-router/) | 按问题类型自动匹配专家 | "找个专家"、"智能分配" |
| [专家组圆桌](skills/expert-roundtable/) | 多专家辩论分析 | "专家组"、"圆桌讨论" |
| [终极团队](skills/ultimate-team/) | 按场景组建完整团队 | "终极团队"、"组个队" |

---

## 📖 使用示例

### 示例1：单专家快速响应

```
用户：为什么我总是做错误的决策？

总管分析：
→ 领域：决策科学
→ 最佳匹配：卡尼曼（认知偏差）置信度92%
→ 决策：调用卡尼曼直接回答

[卡尼曼回答...]
```

### 示例2：交叉团队深度分析

```
用户：创业公司如何建立组织架构？

总管分析：
→ 维度1：组织理论（德鲁克、柯林斯）置信度75%
→ 维度2：实战案例（彭蕾、格里森）置信度70%
→ 维度3：创业阶段适配（霍洛维茨）置信度65%
→ 综合置信度：70%（组建团队）

团队：德鲁克(队长) + 柯林斯 + 彭蕾 + 霍洛维茨
[团队圆桌讨论...]
```

### 示例3：外部招募新专家

```
用户：如何设计针对Z世代的心理健康APP？

总管分析：
→ 领域：心理健康 × 产品设计 × Z世代
→ 现有专家匹配度：35%（不足）
→ 启动外部招募

⏳ [14:00] 问题分析完成
⏳ [14:02] 启动外部招募
⏳ [14:18] 候选人筛选完成
   → 推荐：Dr. Lisa Damour（青少年心理学）
⏳ [14:25] 开始快速蒸馏...
⏳ [15:25] 蒸馏完成，生成90分深度回答
```

---

## 🔄 版本更新

查看 [CHANGELOG.md](CHANGELOG.md) 了解详细版本历史。

### 版本号规范

- **主版本号（X.0.0）**：重大架构变更、新增系统级功能
- **次版本号（0.X.0）**：新增专家、新增协作模式
- **修订号（0.0.X）**：Bug修复、专家Skill优化

### 当前版本

**v1.1.0** (2026-05-28)
- 新增企业管理领域5位专家（张瑞敏、宋志平、大前研一、汤姆·彼得斯、拉姆·查兰）
- 新增营销领域6位专家（科特勒、里斯、特劳特、肖恩·埃利斯、塞斯·高汀、瑞安·戴斯）
- 新增互联网领域6位专家（马化腾、张小龙、俞军、苏杰、李开复、王慧文）
- 专家总数从52位增至69位
- 极简版总管系统上线（单文件即用）

**v1.0.0** (2026-05-27)
- 初始发布
- 52位专家完整蒸馏
- 4个协作系统上线
- 总管系统支持外部招募

---

## 🤝 贡献指南

欢迎贡献新的专家Skill或改进现有Skill！

### 添加新专家

1. Fork 本仓库
2. 在 `skills/` 目录下创建新专家目录
3. 遵循 [SKILL_TEMPLATE.md](docs/SKILL_TEMPLATE.md) 模板
4. 提交 PR，说明专家背景和核心能力

### 版本更新流程

1. 更新 `CHANGELOG.md`
2. 更新版本号（遵循语义化版本规范）
3. 更新 `README.md` 中的专家列表
4. 提交 PR

---

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE)

---

## 🙏 致谢

- 基于 [女娲 · Skill造人术](https://github.com/alchaincyf/nuwa-skill) 构建
- 遵循 [Agent Skills 协议](https://agentskills.io/)
- 所有专家基于公开信息蒸馏，仅供学习研究使用

---

> **不是专家不够多，是找到对的人太难。总管帮你解决这个问题。**
