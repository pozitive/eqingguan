# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Blog.delete_all
blogs = [
         ['在俄罗斯债务返回我们服提供的务和价格', ''],
         ['在俄罗斯讨债的协议和委托', ''],
         ['我们经营的俄罗斯城市', ''],
         ['如何订购和返回失去的金钱', ''],
         ['债务追讨的例子', ''],
         ['债务人名单', ''],
         ['让诈骗罪被关押', ''],
         ['在俄罗斯的危险', ''],
         ['如何返回在俄罗斯失去了钱', ''],
         ['联系方式', ''],
         ['关于我们', '']]

blogs.each do |blog|
  Blog.find_or_create_by_name(
                              :name => blog[0],
                              :content => blog[1]!='' ? blog[1] : "正在处理中")
end
