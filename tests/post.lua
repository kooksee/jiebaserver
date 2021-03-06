wrk.method = "POST"
wrk.body   = [[
文要点：
复杂度是软件公司成长和盈利的最大障碍。
开发成本随代码库的复杂度增加呈指数增长。
在进度和简洁之间做选择是一个错误的二分法。对简洁的投资就是对进度的投资。
很少有高管认识到复杂度的代价，因为他们不了解其销售的产品的性质。
软件是一种比较特殊的产品，它混合了产品和服务，带有非常独特的质保。
复杂度是公司源代码的特征之一。通常与以下几种情形有关联：

考虑不完善的架构，即数据在应用程序组件之间传递的方式。
大量的冗余代码（不再使用的代码）。
代码设计没有考虑模式的应用，比如面向对象设计和依赖注入等。
存储数据的结构维护得很差，比如未使用的列或不再使用的表仍然存储在关系数据库中。
注释文档不足，代码难以阅读，开发人员很难维护或二次开发。
软件开发人员对这种失败有自己的称谓，而我们称之为技术债。没有人愿意谈论它，但正是这些我们本应该注意的问题，它们一点点累积起来，在不知不觉中让公司的产品开发变得苦不堪言。公司原本只需要几天或几周就能推出的特性，现在也变成了几个月。

简洁是复杂的对立面。当代码组织良好、逻辑简明并且易于阅读时，它就显示出简洁性。需要指出的是，复杂和简洁跟代码行的数量没有直接关系。一个非常大的代码库（例如，谷歌大约有 20 亿行代码）可能并没有很复杂，而一个小的代码库也可能一点都不简洁。

复杂度问题
复杂度是阻碍软件公司成长和获利的最大障碍之一。开发成本随着复杂度的增加而呈指数性增长。之所以存在这种指数关系，是因为随着软件产品变得越复杂，公司需要更多的开发人员对其扩展和维护；而随着开发人员数量的增加，公司的管理人员也越来越难掌控复杂度。

那为什么还有这么多软件公司允许复杂度来危害产品代码呢？毕竟这其中的很多公司不乏聪明而勤奋的员工，甚至他们的生计也依赖于软件本身。很少有高管（天使投资人和风险投资家就更少了）能够认识到复杂度的代价，这是因为他们不了解其销售的产品的性质。软件是一种比较特殊的产品，当你销售软件的时候，你实际上是在销售一种混合了产品和服务并带有独特质保的东西（详见下文A 还是 B）。

软件公司的管理人员，甚至早期的工程师，都是毕业于商学院。他们喜欢从销售、市场营销和微观经济学的角度来看待自己所处的行业。他们也深信“做第一个”的教条，或者说，速度优势。

做第一个固然好，但做第一名更好。早期的搜索引擎先驱雅虎就很好地体会到了这个教训。雅虎虽然是第一个推出搜索服务的公司，但谷歌作为后来者，凭借更好的算法、商业模式和领导团队很快超越了前者。当然很多时候，一家公司可能还没有来得及入场就已经被淘汰。例如，现在很难想象有新公司要挑战谷歌在搜索领域的地位。但是，争夺行业主导地位的竞赛是一场马拉松，而不是短跑，而且赛道上最初的几圈对长期结果几乎没有影响。

通过要求中层管理人员尽快将产品推向市场，偏执地专注于速度优势可能会危及公司的生存。与此同时，像敏捷这样的工作流管理方法（经常被误解和执行不力）可能会把问题复杂化，因为它们注重速度的实践制度化，而简洁将成为背后的牺牲品。公司中往往只有软件开发人员能够唯一意识到这一点。

的确，软件公司不能从仍在开发的产品中获利，但是，当管理人员偏重于发布的速度而不是基础代码完整性的时候，投资资本和使用资本的回报将会有很大的风险。复杂度的成本显然比加速发布日期节省的成本更高。

讽刺的是，在进度和简洁之间做选择是一种错误的二分法。对简洁的投资其实也是对进度的投资，因为简洁可以将软件产品更快地推向市场，然后更有效地维护和增强它们。它还是知识产权的源泉，也是一种一旦失去就几乎不可能重新获取的竞争优势。

芝诺悖论
在著名的阿基里斯悖论里，快捷的阿基里斯必须追上一只始终在他前面的笨重的乌龟。古希腊哲学家芝诺认为，因为追逐者必须首先要追上被追赶者的起点，所以阿基里斯必须在每次缩进距离的同时首先要抵达乌龟的起点，这样尽管领先越来越少甚至无穷小，但乌龟将始终保持领先。

芝诺悖论有助于解释为什么你的公司也可能是那个追赶乌龟的阿基里斯。当源代码变得复杂时，添加新代码会非常困难，旧代码也几乎不可能被调试。对简洁有序比较执着的开发人员会变得沮丧，直到最终放弃。当然并不是所有的开发人员都会离开，而且这也会是一个缓慢的过程。然而，影响还是会逐渐蔓延开来，公司发展速度会随着他们的离开而变慢，招聘和入职的相关成本也会增加。

此外，你将很难找到合适的替代人员。因为在当今的社交网络世界中，你公司的代码状态对开发人员社区基本上是透明的，而它正是你从中招聘开发人员的地方。迫不得已的情形下，你可以雇佣新的工程师来处理这些复杂的代码，而他们所需要的薪酬要远高于市场平均水平。与此同时，特性的增加以及复杂度的进一步提高会需要更多的工程师。所以死亡螺旋会一直继续。

我工作的软件公司也面临着复杂度的问题。同其他公司一样，我认为我们公司没有清楚地认识到困境的前因后果，我们转而将业务外包（包括在岸和离岸业务），希望能改善这种状况。但是复杂度是一个不能外包的问题，外包只会让问题变得更糟，因为外包公司以及他们雇佣的承包商更愿意扩大知识面，并增加代码的复杂度，他们这样才能获取更多的经济利益。

A 还是 B？
设想一下：假设汽车制造商之间的竞争以及二手车库存过剩大大抑制了新车销量。因此，一家高端车制造商的高管们做出了大胆的回应：永久质保。经过仔细研究分析，公司决定提高标价 20%，他们不单为客户提供同样高质量的汽车，还承诺在整个保修期（比如说四五年）内对车辆承担全部责任，包括所有预定的维修，以及改装加载新车型才有的新功能。

让我们通过两种情形对这一举措进行评估：

情景 A：该公司的车辆设计得很好。它的工程师充分利用了模块化和开放式架构，因此添加特性或替换故障组件变得非常容易。新举措不仅在新车收入方面增加了 20%，而且公司经销商的销售和服务部门也比以往更加忙碌。与此同时，环保人士、政府机构和司机都称赞该公司保养车辆的效率和安全性能。车主也高兴，车辆在保修期结束后的转售价值相当高，变相降低了新车的购买成本。这项创新很快就被宣布为一项胜利。在几年的时间里，其他制造商也在试验他们自己的永久质保项目，但是因为他们本身设计上的复杂性，质量很难保证，最终使这项试验变得前途迷离。
场景 B：尽管该公司的汽车功能丰富，性能良好，但是其内部设计复杂且杂乱无张。自该计划推出以来，新车销售收入增长了 20%，这在一定程度上抵消了正在进行的维护和功能增强的成本。但随着每一次持续地改进，履行保修的困难和成本开始逐步升级。永久质保项目刚刚过了两年，这些成本就变得不可维护，汽车制造商也撤回了报价。但是，公司仍然需要履行对已有客户的义务。高管们估计损失将近 10 亿美元，并面临是否继续经营的艰难决定。
现在你可以认识到永久质保在汽车行业里的不切实际之处。但如果你是一家软件公司的主管，你应该意识到你已经提供了一个永久质保。唯一的问题是，你是在场景 A 还是场景 B 下工作？

简洁开发宣言
这是一个改进软件开发的宣言，或者更谦虚地说，这不过是请求尊重常识。如果你的组织还没有越过复杂度的临界点，那么尽快按照下面的处方进行补救。它是一张路线图，可以让你降低软件的复杂度，显著降低开发成本，缩短上市时间；它又是一个可维持的开发过程，既能保证公司的未来，又能把你的竞争对手甩在身后。

学习。复杂度只能自上而下地修复。领导者需要投入时间来理解软件开发生产线上发生的一切。这需要多长时间？当你意识到相对于代码的简洁性而言上市时间反而是次要因素的时候，你就已经完成目标了。

领导力。通过工程管理的等级来逐层强调简洁性，这样你的组织就会围绕一套新的价值观来保持一致。沟通这个计划的战略价值。

重新评估。评估公司是否真地需要像敏捷开发这样的工作流管理方法，还是只需要一种强调设计质量而非开发进度的替代方法。

有策略地招聘。招聘那些热爱简洁的开发人员。这些人通常是写实际代码最慢的人，他们喜欢花很长的时间来分析需求和构建代码的可维护性、执行时间、内存消耗和数据存储方面的最佳解决方案。他们也会乐于记录自己的工作并与同事分享。

知识管理。产品代码才是公司的生命线，需要在整个组织中贯彻落实这个理念，而不仅仅局限在一个部门。维持一个分散的知识结构意味着在知识共享上需要投入更多的时间，但是这也可以让你根据不断变化的业务需求来快速重新部署工程师。

脚踏实地。现在我们已经使用了一些很棒的技术和工具来编写、测试、部署和监控软件。其中大多数都是重复的，只带来了增量收益和高转换成本。我们需要专注于其中的一小部分，并且优先要考虑工程师已经掌握的技术。

度量进展
我们可以通过追踪你雇佣的工程师数量和他们的失误率来度量公司在反复杂度过程中的进展。如果你不在高科技行业，但你工程部门的规模增速快于线上销售，那么这是一个非常糟糕的信号；如果你在一家软件公司，但面临员工的大量流失，这也很糟糕。源代码简单的公司会有一个相对小而稳定的工程师团队，而且这个团队会随着产品功能的进步而缓慢成长。相反，如果是一个被软件复杂度所困扰的公司，它会发现自己在不断地招人，飞速奔跑气喘吁吁地追逐一只乌龟。

关于作者
Paul Merlyn是 Consensus Corp 的全栈工程师和思想领袖，Consensus Corp 是 Target 的数字激活子公司。Paul 还是一名活跃的企业家，他创办了 Fynancially（一家致力于金融服务行业民主化的企业）、Abridg 社交网络以及 National Mediation Training Registry（国家调解培训注册中心）。他信奉，“JavaScript 正在吞食 Java 的午餐，并且将在晚餐时间毫不犹豫地统治世界”。

查看英文原文：https://www.infoq.com/articles/simplicity-manifesto-development

文要点：
复杂度是软件公司成长和盈利的最大障碍。
开发成本随代码库的复杂度增加呈指数增长。
在进度和简洁之间做选择是一个错误的二分法。对简洁的投资就是对进度的投资。
很少有高管认识到复杂度的代价，因为他们不了解其销售的产品的性质。
软件是一种比较特殊的产品，它混合了产品和服务，带有非常独特的质保。
复杂度是公司源代码的特征之一。通常与以下几种情形有关联：

考虑不完善的架构，即数据在应用程序组件之间传递的方式。
大量的冗余代码（不再使用的代码）。
代码设计没有考虑模式的应用，比如面向对象设计和依赖注入等。
存储数据的结构维护得很差，比如未使用的列或不再使用的表仍然存储在关系数据库中。
注释文档不足，代码难以阅读，开发人员很难维护或二次开发。
软件开发人员对这种失败有自己的称谓，而我们称之为技术债。没有人愿意谈论它，但正是这些我们本应该注意的问题，它们一点点累积起来，在不知不觉中让公司的产品开发变得苦不堪言。公司原本只需要几天或几周就能推出的特性，现在也变成了几个月。

简洁是复杂的对立面。当代码组织良好、逻辑简明并且易于阅读时，它就显示出简洁性。需要指出的是，复杂和简洁跟代码行的数量没有直接关系。一个非常大的代码库（例如，谷歌大约有 20 亿行代码）可能并没有很复杂，而一个小的代码库也可能一点都不简洁。

复杂度问题
复杂度是阻碍软件公司成长和获利的最大障碍之一。开发成本随着复杂度的增加而呈指数性增长。之所以存在这种指数关系，是因为随着软件产品变得越复杂，公司需要更多的开发人员对其扩展和维护；而随着开发人员数量的增加，公司的管理人员也越来越难掌控复杂度。

那为什么还有这么多软件公司允许复杂度来危害产品代码呢？毕竟这其中的很多公司不乏聪明而勤奋的员工，甚至他们的生计也依赖于软件本身。很少有高管（天使投资人和风险投资家就更少了）能够认识到复杂度的代价，这是因为他们不了解其销售的产品的性质。软件是一种比较特殊的产品，当你销售软件的时候，你实际上是在销售一种混合了产品和服务并带有独特质保的东西（详见下文A 还是 B）。

软件公司的管理人员，甚至早期的工程师，都是毕业于商学院。他们喜欢从销售、市场营销和微观经济学的角度来看待自己所处的行业。他们也深信“做第一个”的教条，或者说，速度优势。

做第一个固然好，但做第一名更好。早期的搜索引擎先驱雅虎就很好地体会到了这个教训。雅虎虽然是第一个推出搜索服务的公司，但谷歌作为后来者，凭借更好的算法、商业模式和领导团队很快超越了前者。当然很多时候，一家公司可能还没有来得及入场就已经被淘汰。例如，现在很难想象有新公司要挑战谷歌在搜索领域的地位。但是，争夺行业主导地位的竞赛是一场马拉松，而不是短跑，而且赛道上最初的几圈对长期结果几乎没有影响。

通过要求中层管理人员尽快将产品推向市场，偏执地专注于速度优势可能会危及公司的生存。与此同时，像敏捷这样的工作流管理方法（经常被误解和执行不力）可能会把问题复杂化，因为它们注重速度的实践制度化，而简洁将成为背后的牺牲品。公司中往往只有软件开发人员能够唯一意识到这一点。

的确，软件公司不能从仍在开发的产品中获利，但是，当管理人员偏重于发布的速度而不是基础代码完整性的时候，投资资本和使用资本的回报将会有很大的风险。复杂度的成本显然比加速发布日期节省的成本更高。

讽刺的是，在进度和简洁之间做选择是一种错误的二分法。对简洁的投资其实也是对进度的投资，因为简洁可以将软件产品更快地推向市场，然后更有效地维护和增强它们。它还是知识产权的源泉，也是一种一旦失去就几乎不可能重新获取的竞争优势。

芝诺悖论
在著名的阿基里斯悖论里，快捷的阿基里斯必须追上一只始终在他前面的笨重的乌龟。古希腊哲学家芝诺认为，因为追逐者必须首先要追上被追赶者的起点，所以阿基里斯必须在每次缩进距离的同时首先要抵达乌龟的起点，这样尽管领先越来越少甚至无穷小，但乌龟将始终保持领先。

芝诺悖论有助于解释为什么你的公司也可能是那个追赶乌龟的阿基里斯。当源代码变得复杂时，添加新代码会非常困难，旧代码也几乎不可能被调试。对简洁有序比较执着的开发人员会变得沮丧，直到最终放弃。当然并不是所有的开发人员都会离开，而且这也会是一个缓慢的过程。然而，影响还是会逐渐蔓延开来，公司发展速度会随着他们的离开而变慢，招聘和入职的相关成本也会增加。

此外，你将很难找到合适的替代人员。因为在当今的社交网络世界中，你公司的代码状态对开发人员社区基本上是透明的，而它正是你从中招聘开发人员的地方。迫不得已的情形下，你可以雇佣新的工程师来处理这些复杂的代码，而他们所需要的薪酬要远高于市场平均水平。与此同时，特性的增加以及复杂度的进一步提高会需要更多的工程师。所以死亡螺旋会一直继续。

我工作的软件公司也面临着复杂度的问题。同其他公司一样，我认为我们公司没有清楚地认识到困境的前因后果，我们转而将业务外包（包括在岸和离岸业务），希望能改善这种状况。但是复杂度是一个不能外包的问题，外包只会让问题变得更糟，因为外包公司以及他们雇佣的承包商更愿意扩大知识面，并增加代码的复杂度，他们这样才能获取更多的经济利益。

A 还是 B？
设想一下：假设汽车制造商之间的竞争以及二手车库存过剩大大抑制了新车销量。因此，一家高端车制造商的高管们做出了大胆的回应：永久质保。经过仔细研究分析，公司决定提高标价 20%，他们不单为客户提供同样高质量的汽车，还承诺在整个保修期（比如说四五年）内对车辆承担全部责任，包括所有预定的维修，以及改装加载新车型才有的新功能。

让我们通过两种情形对这一举措进行评估：

情景 A：该公司的车辆设计得很好。它的工程师充分利用了模块化和开放式架构，因此添加特性或替换故障组件变得非常容易。新举措不仅在新车收入方面增加了 20%，而且公司经销商的销售和服务部门也比以往更加忙碌。与此同时，环保人士、政府机构和司机都称赞该公司保养车辆的效率和安全性能。车主也高兴，车辆在保修期结束后的转售价值相当高，变相降低了新车的购买成本。这项创新很快就被宣布为一项胜利。在几年的时间里，其他制造商也在试验他们自己的永久质保项目，但是因为他们本身设计上的复杂性，质量很难保证，最终使这项试验变得前途迷离。
场景 B：尽管该公司的汽车功能丰富，性能良好，但是其内部设计复杂且杂乱无张。自该计划推出以来，新车销售收入增长了 20%，这在一定程度上抵消了正在进行的维护和功能增强的成本。但随着每一次持续地改进，履行保修的困难和成本开始逐步升级。永久质保项目刚刚过了两年，这些成本就变得不可维护，汽车制造商也撤回了报价。但是，公司仍然需要履行对已有客户的义务。高管们估计损失将近 10 亿美元，并面临是否继续经营的艰难决定。
现在你可以认识到永久质保在汽车行业里的不切实际之处。但如果你是一家软件公司的主管，你应该意识到你已经提供了一个永久质保。唯一的问题是，你是在场景 A 还是场景 B 下工作？

简洁开发宣言
这是一个改进软件开发的宣言，或者更谦虚地说，这不过是请求尊重常识。如果你的组织还没有越过复杂度的临界点，那么尽快按照下面的处方进行补救。它是一张路线图，可以让你降低软件的复杂度，显著降低开发成本，缩短上市时间；它又是一个可维持的开发过程，既能保证公司的未来，又能把你的竞争对手甩在身后。

学习。复杂度只能自上而下地修复。领导者需要投入时间来理解软件开发生产线上发生的一切。这需要多长时间？当你意识到相对于代码的简洁性而言上市时间反而是次要因素的时候，你就已经完成目标了。

领导力。通过工程管理的等级来逐层强调简洁性，这样你的组织就会围绕一套新的价值观来保持一致。沟通这个计划的战略价值。

重新评估。评估公司是否真地需要像敏捷开发这样的工作流管理方法，还是只需要一种强调设计质量而非开发进度的替代方法。

有策略地招聘。招聘那些热爱简洁的开发人员。这些人通常是写实际代码最慢的人，他们喜欢花很长的时间来分析需求和构建代码的可维护性、执行时间、内存消耗和数据存储方面的最佳解决方案。他们也会乐于记录自己的工作并与同事分享。

知识管理。产品代码才是公司的生命线，需要在整个组织中贯彻落实这个理念，而不仅仅局限在一个部门。维持一个分散的知识结构意味着在知识共享上需要投入更多的时间，但是这也可以让你根据不断变化的业务需求来快速重新部署工程师。

脚踏实地。现在我们已经使用了一些很棒的技术和工具来编写、测试、部署和监控软件。其中大多数都是重复的，只带来了增量收益和高转换成本。我们需要专注于其中的一小部分，并且优先要考虑工程师已经掌握的技术。

度量进展
我们可以通过追踪你雇佣的工程师数量和他们的失误率来度量公司在反复杂度过程中的进展。如果你不在高科技行业，但你工程部门的规模增速快于线上销售，那么这是一个非常糟糕的信号；如果你在一家软件公司，但面临员工的大量流失，这也很糟糕。源代码简单的公司会有一个相对小而稳定的工程师团队，而且这个团队会随着产品功能的进步而缓慢成长。相反，如果是一个被软件复杂度所困扰的公司，它会发现自己在不断地招人，飞速奔跑气喘吁吁地追逐一只乌龟。

关于作者
Paul Merlyn是 Consensus Corp 的全栈工程师和思想领袖，Consensus Corp 是 Target 的数字激活子公司。Paul 还是一名活跃的企业家，他创办了 Fynancially（一家致力于金融服务行业民主化的企业）、Abridg 社交网络以及 National Mediation Training Registry（国家调解培训注册中心）。他信奉，“JavaScript 正在吞食 Java 的午餐，并且将在晚餐时间毫不犹豫地统治世界”。

查看英文原文：https://www.infoq.com/articles/simplicity-manifesto-development


文要点：
复杂度是软件公司成长和盈利的最大障碍。
开发成本随代码库的复杂度增加呈指数增长。
在进度和简洁之间做选择是一个错误的二分法。对简洁的投资就是对进度的投资。
很少有高管认识到复杂度的代价，因为他们不了解其销售的产品的性质。
软件是一种比较特殊的产品，它混合了产品和服务，带有非常独特的质保。
复杂度是公司源代码的特征之一。通常与以下几种情形有关联：

考虑不完善的架构，即数据在应用程序组件之间传递的方式。
大量的冗余代码（不再使用的代码）。
代码设计没有考虑模式的应用，比如面向对象设计和依赖注入等。
存储数据的结构维护得很差，比如未使用的列或不再使用的表仍然存储在关系数据库中。
注释文档不足，代码难以阅读，开发人员很难维护或二次开发。
软件开发人员对这种失败有自己的称谓，而我们称之为技术债。没有人愿意谈论它，但正是这些我们本应该注意的问题，它们一点点累积起来，在不知不觉中让公司的产品开发变得苦不堪言。公司原本只需要几天或几周就能推出的特性，现在也变成了几个月。

简洁是复杂的对立面。当代码组织良好、逻辑简明并且易于阅读时，它就显示出简洁性。需要指出的是，复杂和简洁跟代码行的数量没有直接关系。一个非常大的代码库（例如，谷歌大约有 20 亿行代码）可能并没有很复杂，而一个小的代码库也可能一点都不简洁。

复杂度问题
复杂度是阻碍软件公司成长和获利的最大障碍之一。开发成本随着复杂度的增加而呈指数性增长。之所以存在这种指数关系，是因为随着软件产品变得越复杂，公司需要更多的开发人员对其扩展和维护；而随着开发人员数量的增加，公司的管理人员也越来越难掌控复杂度。

那为什么还有这么多软件公司允许复杂度来危害产品代码呢？毕竟这其中的很多公司不乏聪明而勤奋的员工，甚至他们的生计也依赖于软件本身。很少有高管（天使投资人和风险投资家就更少了）能够认识到复杂度的代价，这是因为他们不了解其销售的产品的性质。软件是一种比较特殊的产品，当你销售软件的时候，你实际上是在销售一种混合了产品和服务并带有独特质保的东西（详见下文A 还是 B）。

软件公司的管理人员，甚至早期的工程师，都是毕业于商学院。他们喜欢从销售、市场营销和微观经济学的角度来看待自己所处的行业。他们也深信“做第一个”的教条，或者说，速度优势。

做第一个固然好，但做第一名更好。早期的搜索引擎先驱雅虎就很好地体会到了这个教训。雅虎虽然是第一个推出搜索服务的公司，但谷歌作为后来者，凭借更好的算法、商业模式和领导团队很快超越了前者。当然很多时候，一家公司可能还没有来得及入场就已经被淘汰。例如，现在很难想象有新公司要挑战谷歌在搜索领域的地位。但是，争夺行业主导地位的竞赛是一场马拉松，而不是短跑，而且赛道上最初的几圈对长期结果几乎没有影响。

通过要求中层管理人员尽快将产品推向市场，偏执地专注于速度优势可能会危及公司的生存。与此同时，像敏捷这样的工作流管理方法（经常被误解和执行不力）可能会把问题复杂化，因为它们注重速度的实践制度化，而简洁将成为背后的牺牲品。公司中往往只有软件开发人员能够唯一意识到这一点。

的确，软件公司不能从仍在开发的产品中获利，但是，当管理人员偏重于发布的速度而不是基础代码完整性的时候，投资资本和使用资本的回报将会有很大的风险。复杂度的成本显然比加速发布日期节省的成本更高。

讽刺的是，在进度和简洁之间做选择是一种错误的二分法。对简洁的投资其实也是对进度的投资，因为简洁可以将软件产品更快地推向市场，然后更有效地维护和增强它们。它还是知识产权的源泉，也是一种一旦失去就几乎不可能重新获取的竞争优势。

芝诺悖论
在著名的阿基里斯悖论里，快捷的阿基里斯必须追上一只始终在他前面的笨重的乌龟。古希腊哲学家芝诺认为，因为追逐者必须首先要追上被追赶者的起点，所以阿基里斯必须在每次缩进距离的同时首先要抵达乌龟的起点，这样尽管领先越来越少甚至无穷小，但乌龟将始终保持领先。

芝诺悖论有助于解释为什么你的公司也可能是那个追赶乌龟的阿基里斯。当源代码变得复杂时，添加新代码会非常困难，旧代码也几乎不可能被调试。对简洁有序比较执着的开发人员会变得沮丧，直到最终放弃。当然并不是所有的开发人员都会离开，而且这也会是一个缓慢的过程。然而，影响还是会逐渐蔓延开来，公司发展速度会随着他们的离开而变慢，招聘和入职的相关成本也会增加。

此外，你将很难找到合适的替代人员。因为在当今的社交网络世界中，你公司的代码状态对开发人员社区基本上是透明的，而它正是你从中招聘开发人员的地方。迫不得已的情形下，你可以雇佣新的工程师来处理这些复杂的代码，而他们所需要的薪酬要远高于市场平均水平。与此同时，特性的增加以及复杂度的进一步提高会需要更多的工程师。所以死亡螺旋会一直继续。

我工作的软件公司也面临着复杂度的问题。同其他公司一样，我认为我们公司没有清楚地认识到困境的前因后果，我们转而将业务外包（包括在岸和离岸业务），希望能改善这种状况。但是复杂度是一个不能外包的问题，外包只会让问题变得更糟，因为外包公司以及他们雇佣的承包商更愿意扩大知识面，并增加代码的复杂度，他们这样才能获取更多的经济利益。

A 还是 B？
设想一下：假设汽车制造商之间的竞争以及二手车库存过剩大大抑制了新车销量。因此，一家高端车制造商的高管们做出了大胆的回应：永久质保。经过仔细研究分析，公司决定提高标价 20%，他们不单为客户提供同样高质量的汽车，还承诺在整个保修期（比如说四五年）内对车辆承担全部责任，包括所有预定的维修，以及改装加载新车型才有的新功能。

让我们通过两种情形对这一举措进行评估：

情景 A：该公司的车辆设计得很好。它的工程师充分利用了模块化和开放式架构，因此添加特性或替换故障组件变得非常容易。新举措不仅在新车收入方面增加了 20%，而且公司经销商的销售和服务部门也比以往更加忙碌。与此同时，环保人士、政府机构和司机都称赞该公司保养车辆的效率和安全性能。车主也高兴，车辆在保修期结束后的转售价值相当高，变相降低了新车的购买成本。这项创新很快就被宣布为一项胜利。在几年的时间里，其他制造商也在试验他们自己的永久质保项目，但是因为他们本身设计上的复杂性，质量很难保证，最终使这项试验变得前途迷离。
场景 B：尽管该公司的汽车功能丰富，性能良好，但是其内部设计复杂且杂乱无张。自该计划推出以来，新车销售收入增长了 20%，这在一定程度上抵消了正在进行的维护和功能增强的成本。但随着每一次持续地改进，履行保修的困难和成本开始逐步升级。永久质保项目刚刚过了两年，这些成本就变得不可维护，汽车制造商也撤回了报价。但是，公司仍然需要履行对已有客户的义务。高管们估计损失将近 10 亿美元，并面临是否继续经营的艰难决定。
现在你可以认识到永久质保在汽车行业里的不切实际之处。但如果你是一家软件公司的主管，你应该意识到你已经提供了一个永久质保。唯一的问题是，你是在场景 A 还是场景 B 下工作？

简洁开发宣言
这是一个改进软件开发的宣言，或者更谦虚地说，这不过是请求尊重常识。如果你的组织还没有越过复杂度的临界点，那么尽快按照下面的处方进行补救。它是一张路线图，可以让你降低软件的复杂度，显著降低开发成本，缩短上市时间；它又是一个可维持的开发过程，既能保证公司的未来，又能把你的竞争对手甩在身后。

学习。复杂度只能自上而下地修复。领导者需要投入时间来理解软件开发生产线上发生的一切。这需要多长时间？当你意识到相对于代码的简洁性而言上市时间反而是次要因素的时候，你就已经完成目标了。

领导力。通过工程管理的等级来逐层强调简洁性，这样你的组织就会围绕一套新的价值观来保持一致。沟通这个计划的战略价值。

重新评估。评估公司是否真地需要像敏捷开发这样的工作流管理方法，还是只需要一种强调设计质量而非开发进度的替代方法。

有策略地招聘。招聘那些热爱简洁的开发人员。这些人通常是写实际代码最慢的人，他们喜欢花很长的时间来分析需求和构建代码的可维护性、执行时间、内存消耗和数据存储方面的最佳解决方案。他们也会乐于记录自己的工作并与同事分享。

知识管理。产品代码才是公司的生命线，需要在整个组织中贯彻落实这个理念，而不仅仅局限在一个部门。维持一个分散的知识结构意味着在知识共享上需要投入更多的时间，但是这也可以让你根据不断变化的业务需求来快速重新部署工程师。

脚踏实地。现在我们已经使用了一些很棒的技术和工具来编写、测试、部署和监控软件。其中大多数都是重复的，只带来了增量收益和高转换成本。我们需要专注于其中的一小部分，并且优先要考虑工程师已经掌握的技术。

度量进展
我们可以通过追踪你雇佣的工程师数量和他们的失误率来度量公司在反复杂度过程中的进展。如果你不在高科技行业，但你工程部门的规模增速快于线上销售，那么这是一个非常糟糕的信号；如果你在一家软件公司，但面临员工的大量流失，这也很糟糕。源代码简单的公司会有一个相对小而稳定的工程师团队，而且这个团队会随着产品功能的进步而缓慢成长。相反，如果是一个被软件复杂度所困扰的公司，它会发现自己在不断地招人，飞速奔跑气喘吁吁地追逐一只乌龟。

关于作者
Paul Merlyn是 Consensus Corp 的全栈工程师和思想领袖，Consensus Corp 是 Target 的数字激活子公司。Paul 还是一名活跃的企业家，他创办了 Fynancially（一家致力于金融服务行业民主化的企业）、Abridg 社交网络以及 National Mediation Training Registry（国家调解培训注册中心）。他信奉，“JavaScript 正在吞食 Java 的午餐，并且将在晚餐时间毫不犹豫地统治世界”。

查看英文原文：https://www.infoq.com/articles/simplicity-manifesto-development
]]
wrk.headers["Content-Type"] = "application/text"