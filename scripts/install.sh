#!/bin/bash

# SOLO Expert Team 安装脚本
# 支持 Claude Code / Codex / Cursor / OpenClaw 等 Agent Skills 兼容 runtime

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 打印函数
print_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 检测操作系统
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        OS="linux"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        OS="macos"
    elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
        OS="windows"
    else
        OS="unknown"
    fi
}

# 检测 runtime
detect_runtime() {
    # 检查常见的 skills 目录
    if [ -d "$HOME/.claude/skills" ]; then
        RUNTIME="claude-code"
        SKILLS_DIR="$HOME/.claude/skills"
    elif [ -d "$HOME/.codex/skills" ]; then
        RUNTIME="codex"
        SKILLS_DIR="$HOME/.codex/skills"
    elif [ -d "$HOME/.cursor/skills" ]; then
        RUNTIME="cursor"
        SKILLS_DIR="$HOME/.cursor/skills"
    elif [ -d "$HOME/.openclaw/workspace/skills" ]; then
        RUNTIME="openclaw"
        SKILLS_DIR="$HOME/.openclaw/workspace/skills"
    else
        RUNTIME="unknown"
        SKILLS_DIR=""
    fi
}

# 显示欢迎信息
show_welcome() {
    echo ""
    echo "╔══════════════════════════════════════════════════════════════╗"
    echo "║                                                              ║"
    echo "║           SOLO Expert Team 安装脚本                          ║"
    echo "║                                                              ║"
    echo "║   52位 distilled 专家 + 智能总管系统                         ║"
    echo "║                                                              ║"
    echo "╚══════════════════════════════════════════════════════════════╝"
    echo ""
}

# 安装到指定目录
install_to() {
    local target_dir=$1
    local source_dir=$2
    
    print_info "安装到: $target_dir"
    
    # 创建目录
    mkdir -p "$target_dir"
    
    # 复制所有 skills
    cp -r "$source_dir"/skills/*-v2 "$target_dir/" 2>/dev/null || true
    cp -r "$source_dir"/skills/expert-roundtable "$target_dir/" 2>/dev/null || true
    cp -r "$source_dir"/skills/ultimate-team "$target_dir/" 2>/dev/null || true
    cp -r "$source_dir"/skills/smart-router "$target_dir/" 2>/dev/null || true
    cp -r "$source_dir"/skills/master-coordinator "$target_dir/" 2>/dev/null || true
    cp -r "$source_dir"/skills/nuwa-skill "$target_dir/" 2>/dev/null || true
    
    # 统计安装数量
    local count=$(ls -d "$target_dir"/*-v2 "$target_dir"/{expert-roundtable,ultimate-team,smart-router,master-coordinator,nuwa-skill} 2>/dev/null | wc -l)
    
    print_success "成功安装 $count 个 Skill"
}

# 手动安装
manual_install() {
    print_info "未检测到自动兼容的 runtime"
    echo ""
    echo "请选择安装方式:"
    echo "1) 手动指定 skills 目录"
    echo "2) 安装到当前目录 (./skills)"
    echo "3) 退出"
    echo ""
    read -p "请输入选项 [1-3]: " choice
    
    case $choice in
        1)
            read -p "请输入 skills 目录路径: " custom_dir
            install_to "$custom_dir" "$(dirname "$0")/.."
            ;;
        2)
            install_to "./skills" "$(dirname "$0")/.."
            print_info "Skills 已安装到 ./skills/"
            print_warning "请手动配置你的 AI 工具加载此目录"
            ;;
        3)
            print_info "退出安装"
            exit 0
            ;;
        *)
            print_error "无效选项"
            exit 1
            ;;
    esac
}

# 验证安装
verify_installation() {
    local target_dir=$1
    
    echo ""
    print_info "验证安装..."
    
    # 检查关键 skill
    local key_skills=(
        "master-coordinator"
        "expert-roundtable"
        "ultimate-team"
        "smart-router"
    )
    
    local all_found=true
    for skill in "${key_skills[@]}"; do
        if [ -d "$target_dir/$skill" ]; then
            print_success "✓ $skill"
        else
            print_error "✗ $skill (缺失)"
            all_found=false
        fi
    done
    
    # 统计专家数量
    local expert_count=$(ls -d "$target_dir"/*-perspective-v2 2>/dev/null | wc -l)
    print_info "检测到 $expert_count 位专家 Skill"
    
    if [ "$all_found" = true ] && [ "$expert_count" -ge 50 ]; then
        echo ""
        print_success "安装验证通过！"
        return 0
    else
        echo ""
        print_warning "安装可能不完整，请检查"
        return 1
    fi
}

# 显示使用说明
show_usage() {
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "                      安装完成！"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "现在你可以对 AI 说:"
    echo ""
    echo "  • 总管，帮我看看这个问题"
    echo "  • 你来安排，找最合适的人"
    echo "  • 帮我协调一个团队"
    echo "  • 智能分配这个问题"
    echo ""
    echo "或者指定专家:"
    echo ""
    echo "  • 用乔布斯的视角分析这个产品"
    echo "  • 切换到卡尼曼"
    echo "  • 让雷军看看这个商业模式"
    echo ""
    echo "查看完整文档:"
    echo "  README.md          - 项目介绍"
    echo "  CHANGELOG.md       - 版本更新"
    echo "  docs/              - 详细文档"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}

# 主函数
main() {
    show_welcome
    
    detect_os
    detect_runtime
    
    print_info "检测到操作系统: $OS"
    
    if [ "$RUNTIME" != "unknown" ]; then
        print_success "检测到 runtime: $RUNTIME"
        print_info "Skills 目录: $SKILLS_DIR"
        
        read -p "是否安装到 $SKILLS_DIR? [Y/n]: " confirm
        if [[ "$confirm" =~ ^[Yy]$ ]] || [ -z "$confirm" ]; then
            install_to "$SKILLS_DIR" "$(dirname "$0")/.."
            verify_installation "$SKILLS_DIR"
        else
            manual_install
        fi
    else
        print_warning "未检测到已知的 AI runtime"
        manual_install
    fi
    
    show_usage
}

# 运行主函数
main "$@"
