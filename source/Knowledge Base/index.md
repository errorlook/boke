---
title: 学习笔记
date: 2025-10-01
---

# 学习笔记

## Vue 知识点

<details>
<summary>Vue 响应式原理</summary>

- Vue 通过 `Object.defineProperty` / `Proxy` 实现响应式
- 数据变化会自动更新视图
- 响应式包括**getter** 和 **setter** 拦截，对依赖进行收集和触发更新
- Vue 3 使用 Proxy，更加高效并能监听数组和对象新增属性

</details>

<details>
<summary>Vue 组件通信</summary>

- 父子组件：props 传值，$emit 触发事件
- 兄弟组件：EventBus（事件总线） / Pinia / Vuex 状态管理
- 跨级通信：provide / inject 或全局状态管理

</details>

<details>
<summary>Vue 生命周期顺序</summary>

- **beforeCreate**：实例初始化，数据和事件未绑定
- **created**：数据观测和事件已绑定，DOM 未生成
- **beforeMount**：模板编译完成，DOM 未挂载
- **mounted**：DOM 已挂载，可操作真实 DOM
- **beforeUpdate**：数据变化，DOM 更新前触发
- **updated**：数据变化，DOM 已更新
- **beforeUnmount**：组件销毁前触发
- **unmounted**：组件已销毁

</details>

## Spring 知识点

<details>
<summary>Spring Bean 生命周期</summary>

- **实例化**：Spring 创建 Bean 对象
- **属性注入**：注入依赖的属性或 Bean
- **初始化回调**：调用 `@PostConstruct` 或 `InitializingBean.afterPropertiesSet`
- **使用**：Bean 可正常被应用调用
- **销毁回调**：调用 `@PreDestroy` 或 `DisposableBean.destroy`

</details>

<details>
<summary>Spring 单例 Bean 与原型 Bean 区别</summary>

- **单例 Bean**：整个 Spring 容器中只有一个实例，每次获取都是同一个对象
- **原型 Bean**：每次获取都会创建新的实例
- 生命周期：单例 Bean 容器启动时创建，原型 Bean 容器不管理销毁

</details>

## Java 知识点

<details>
<summary>Java 内存模型</summary>

- **堆（Heap）**：存储对象实例，垃圾回收器管理
- **栈（Stack）**：存储方法调用，局部变量和操作数
- **方法区（Method Area / 元空间 Metaspace）**：存储类信息、常量、静态变量
- **程序计数器（PC）**：记录当前线程执行到哪条字节码
- **直接内存（Direct Memory）**：非 JVM 堆内存，用于高性能 I/O
- **线程共享**：堆和方法区被所有线程共享，栈和 PC 寄存器是线程独有

</details>

<details>
<summary>Java volatile 关键字作用</summary>

- **可见性**：保证一个线程修改的变量，对其他线程立即可见
- **禁止指令重排序**：编译器和 CPU 不会对 volatile 变量操作进行重排序
- **不保证原子性**：++ 等复合操作不是原子性的，需要额外同步
- 使用场景：状态标识、单例模式双重检查锁、轻量级同步

</details>

