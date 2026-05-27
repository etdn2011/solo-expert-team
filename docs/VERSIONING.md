# 版本管理规范 · Versioning Guide

> SOLO Expert Team 的版本更新策略和流程规范

---

## 版本号格式

采用 [语义化版本](https://semver.org/lang/zh-CN/) 规范：

```
主版本号.次版本号.修订号
X.Y.Z
```

### 版本号含义

| 版本号 | 变更类型 | 示例 |
|--------|---------|------|
| **主版本号 (X.0.0)** | 重大架构变更、新增系统级功能、破坏性变更 | 2.0.0 - 架构重构，支持动态加载 |
| **次版本号 (0.X.0)** | 新增专家、新增协作模式、功能增强 | 1.1.0 - 新增10位专家 |
| **修订号 (0.0.X)** | Bug修复、专家Skill优化、文档更新 | 1.0.1 - 修复乔布斯Skill表达DNA |

---

## 版本更新场景

### 需要升级主版本号 (X.0.0)

- [ ] 总管系统架构重大重构
- [ ] 新增系统级功能（如多语言支持、实时协作等）
- [ ] Skill格式重大变更，不兼容旧版本
- [ ] 移除已发布的专家Skill

### 需要升级次版本号 (0.X.0)

- [ ] 新增专家（≥3位）
- [ ] 新增协作系统（如新增"专家对比"功能）
- [ ] 现有系统功能增强（如总管系统新增决策模式）
- [ ] 专家Skill重大更新（如从精简版升级到完整版）

### 需要升级修订号 (0.0.X)

- [ ] 修复Skill中的错误（事实错误、表达不一致等）
- [ ] 优化Skill质量（补充模型、完善诚实边界等）
- [ ] 文档更新（README、CHANGELOG等）
- [ ] 安装脚本优化

---

## 版本发布流程

### 1. 准备阶段

```bash
# 1. 确保在 main 分支
git checkout main
git pull origin main

# 2. 创建发布分支
git checkout -b release/v1.1.0

# 3. 更新版本号
# 修改 README.md 中的版本 badge
# 修改 CHANGELOG.md，在顶部添加新版本
```

### 2. 更新文档

#### CHANGELOG.md 模板

```markdown
## [1.1.0] - 2026-06-15

### 新增专家（10位）

**医疗健康领域（3位）**
- [专家名](skills/xxx-perspective-v2/) - 核心能力
...

**法律合规领域（2位）**
...

### 功能增强

- 总管系统新增"多语言专家"支持
- 优化外部招募的候选人筛选算法

### 修复

- 修复乔布斯Skill中"现实扭曲力场"模型的证据引用错误
- 修正张一鸣Skill中的时间线错误
```

#### README.md 更新

- [ ] 更新版本 badge
- [ ] 更新专家列表（新增的专家）
- [ ] 更新专家数量统计

### 3. 质量检查

```bash
# 运行质量检查脚本
./scripts/quality-check.sh

# 检查项目
# - 所有Skill文件完整性
# - 链接有效性
# - 命名规范
```

### 4. 提交并合并

```bash
# 提交更改
git add .
git commit -m "Release v1.1.0: 新增10位专家，优化总管系统"

# 推送到远程
git push origin release/v1.1.0

# 创建 Pull Request
# 通过 Code Review 后合并到 main
```

### 5. 打标签

```bash
# 切换到 main 分支
git checkout main
git pull origin main

# 打标签
git tag -a v1.1.0 -m "Release v1.1.0: 新增10位专家"

# 推送标签
git push origin v1.1.0
```

### 6. 发布 Release

在 GitHub 上创建 Release：

- **标题**：v1.1.0 - 新增医疗健康领域专家
- **内容**：复制 CHANGELOG.md 中的内容
- **附件**：可选，打包 skills 目录

---

## 用户更新指南

### 自动更新（推荐）

```bash
# 使用 skills CLI 自动更新
npx skills update solo-expert-team
```

### 手动更新

```bash
# 进入 skill 目录
cd ~/.claude/skills/solo-expert-team

# 拉取最新代码
git pull origin main

# 查看更新日志
cat CHANGELOG.md

# 验证安装
./scripts/verify.sh
```

### 检查当前版本

```bash
# 查看本地版本
cd ~/.claude/skills/solo-expert-team
git describe --tags

# 查看最新版本
curl -s https://api.github.com/repos/your-username/solo-expert-team/releases/latest | grep tag_name
```

---

## 版本兼容性

### 向后兼容承诺

- **修订号更新 (0.0.X)**：100% 向后兼容，用户无感知
- **次版本号更新 (0.X.0)**：基本向后兼容，新增功能可选使用
- **主版本号更新 (X.0.0)**：可能不兼容，提供迁移指南

### 迁移指南示例（主版本升级时）

```markdown
## 从 v1.x 迁移到 v2.0

### 破坏性变更

1. **Skill 格式变更**
   - v1: `name: xxx-perspective-v2`
   - v2: `name: xxx-perspective-v3`
   
2. **调用方式变更**
   - v1: "总管，帮我看看这个问题"
   - v2: "@总管 帮我看看这个问题"

### 迁移步骤

1. 备份现有配置
2. 更新到 v2.0
3. 运行迁移脚本: `./scripts/migrate-v1-to-v2.sh`
4. 验证安装: `./scripts/verify.sh`
```

---

## 版本路线图

### v1.1.0（预计 2026-06）

- [ ] 新增医疗健康领域专家（3-5位）
- [ ] 新增法律/合规领域专家（2-3位）
- [ ] 总管系统支持"专家对比"功能

### v1.2.0（预计 2026-07）

- [ ] 新增教育领域专家（3-5位）
- [ ] 新增金融细分领域专家（3-5位）
- [ ] 优化外部招募的精简版蒸馏质量

### v2.0.0（预计 2026-Q4）

- [ ] 架构重构：支持动态加载/卸载专家Skill
- [ ] 社区贡献系统：用户提交新专家，审核后入库
- [ ] 多语言支持：英文、日文、韩文版专家Skill
- [ ] 用户反馈驱动的专家自动优化

---

## 贡献者指南

### 提交新专家时的版本处理

1. **Fork 仓库** 并基于最新的 `main` 分支创建分支
2. **不要修改版本号**，版本号由维护者在发布时统一更新
3. **在 PR 中说明**：
   - 建议的版本号（如：建议 v1.1.0）
   - 变更类型（新增专家/功能增强/Bug修复）
   - 影响范围（是否向后兼容）

### PR 标题规范

```
[新增专家] 专家名 - 核心领域（建议 v1.1.0）
[功能增强] 总管系统新增 xxx 功能（建议 v1.1.0）
[Bug修复] 修复乔布斯Skill中的 xxx 错误（建议 v1.0.1）
```

---

## 常见问题

### Q: 如何知道有新版本？

**A:** 
- 关注 GitHub Releases
- 安装时总管会提示有新版本
- 定期运行 `./scripts/check-update.sh`

### Q: 更新后需要重新配置吗？

**A:** 
- 修订号/次版本号更新：不需要
- 主版本号更新：可能需要，查看迁移指南

### Q: 可以只更新特定专家吗？

**A:** 
- 目前不支持，需要整体更新
- v2.0 后将支持动态加载单个专家

### Q: 如何回滚到旧版本？

**A:**
```bash
cd ~/.claude/skills/solo-expert-team
git checkout v1.0.0  # 切换到指定版本
```

---

## 联系维护者

- **版本发布通知**: 关注 GitHub Releases
- **问题反馈**: [提交 Issue](https://github.com/your-username/solo-expert-team/issues)
- **功能建议**: [提交 Discussion](https://github.com/your-username/solo-expert-team/discussions)

---

> **版本是承诺，变更是责任。我们谨慎对待每一次更新。**
