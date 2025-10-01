mixins.home = {
    mounted() {
        // 只保留菜单颜色设置
        this.menuColor = true;
    },
    methods: {
        homeClick() {
            // 平滑滚动到窗口高度位置（向下滚动一屏）
            window.scrollTo({ top: window.innerHeight, behavior: "smooth" });
        },
    },
};