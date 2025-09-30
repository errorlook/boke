<!-- 角色图片展示 -->
<details id="nav">
  <summary>切换导航</summary>
  <ul style="list-style:none; padding-left:0;">
    <li>
      <!-- data-prefix 是图片路径前缀，data-count 是数量 -->
      <span class="nav-item" data-prefix="/boke/images/younuo" data-count="2" style="cursor:pointer; color:blue;">尤诺</span>
    </li>
    <li>
   <span class="nav-item" data-prefix="/boke/images/fulilian" data-count="56" style="cursor:pointer; color:blue;">葬送的芙莉莲</span>
    </li>
    <li>
      <span class="nav-item" data-prefix="/boke/images/qingyin" data-count="1" style="cursor:pointer; color:blue;">轻音少女</span>
    </li>
  </ul>
</details>

<div id="image-display"></div>

<!-- 图片预览遮罩 -->
<div id="preview-overlay">
  <img id="preview-img" src="">
</div>

<style>
#image-display {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;             /* 图片间距 */
    justify-content: center; /* 居中对齐 */
}

#image-display img {
    max-width: 200px;      /* 最大宽度 */
    height: auto;          /* 高度自适应，保持比例 */
    border-radius: 8px;    /* 圆角，可选 */
    box-shadow: 0 0 5px rgba(0,0,0,0.2);
    cursor: pointer;
    transition: transform 0.2s;
}
#image-display img:hover {
    transform: scale(1.05); /* 悬停放大 */
}

#preview-overlay {
    display: none;
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    background: rgba(0,0,0,0.8);
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

#preview-overlay img {
    max-width: 90%;
    max-height: 90%;
    border: 2px solid #fff;
    box-shadow: 0 0 10px #000;
}
</style>

<script>
document.addEventListener("DOMContentLoaded", function() {
    const navItems = document.querySelectorAll('.nav-item');
    const display = document.getElementById('image-display');
    const overlay = document.getElementById('preview-overlay');
    const previewImg = document.getElementById('preview-img');

    navItems.forEach(item => {
        item.addEventListener('click', () => {
            const prefix = item.dataset.prefix; // 前缀
            const count = parseInt(item.dataset.count); // 数量
            display.innerHTML = '';

            for (let i = 1; i <= count; i++) {
                const src = `${prefix}${i}.jpg`;
                const img = document.createElement('img');
                img.src = src;
                img.addEventListener('click', () => {
                    previewImg.src = src;
                    overlay.style.display = 'flex';
                });
                display.appendChild(img);
            }
        });
    });

    overlay.addEventListener('click', () => {
        overlay.style.display = 'none';
    });
});
</script>
