package com.azure.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.azure.app.entity.User;

@Controller
public class ArticleController {

	@RequestMapping(value = "/admin-article-list", method = RequestMethod.GET)
	public String test(ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {
		List<User> list = new ArrayList<User>();

		model.addAttribute("list", list);
		System.out.println("this is a test");
		return "admin-article-list.ftl";
	}

	@RequestMapping(value = "/admin-article", method = RequestMethod.GET)
	public String addArticle() {
		return "admin-article.ftl";
	}
}
