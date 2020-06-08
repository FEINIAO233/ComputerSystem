module <顶层模块名> (<输入输出端口列表>);
output 输出端口列表; //输出端口声明
input 输入端口列表; //输入端口声明
/*定义数据，信号的类型，函数声明*/
reg 信号名；
//逻辑功能定义
assign <结果信号名>=<表达式>； //使用assign语句定义逻辑功能
//用always块描述逻辑功能
always @ (<敏感信号表达式>)
begin
//过程赋值
//if-else，case语句
//while，repeat，for循环语句
//task，function调用
end
//调用其他模块
<调用模块名module_name > <例化模块名> (<端口列表port_list >);
//门元件例化
门元件关键字 <例化门元件名> (<端口列表port_list>);
endmodule
