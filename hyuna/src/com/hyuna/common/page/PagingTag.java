package com.hyuna.common.page;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class PagingTag extends TagSupport{

	private static final long serialVersionUID = 6033726006173575162L;
	
	/*@param page 현제 페이지번호
	@param total 전체 조회된 row수
	@param list_size 페이지에 보여주는 레코드수
	@param page_size 페이지 네비게이터에 표시되는 페이지 버튼의갯수*/
	
	private int page = 1;
	private int total = 1;
	private int list_size = 2;
	private int page_size = 5;	
	
	@Override
	public int doStartTag() throws JspException{
		try{
			pageContext.getOut().println(getPaging());
		}catch(IOException e){
			e.printStackTrace();
		}
		return super.doStartTag();
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void setList_size(int list_size) {
		this.list_size = list_size;
	}

	public void setPage_size(int page_size) {
		this.page_size = page_size;
	}
	public String getPaging(){
		String ret = "";
		if(page < 1)
			page = 1;
		if(total < 1)
			return "";
		
		/*page가 1페이지이고 page_size가 2이면
		currentFirst 1*/
		int currentFirst = ((page-1)/page_size) * page_size + 1;
		
		//currentlast는 2
		int currentlast = ((page-1)/page_size) * page_size + page_size;
		
		//nextFirst는 3
		int nextFIrst = (((page-1)/page_size)+1) * page_size + 1;
		
		//prevFirst는 -1
		int prevFirst = (((page-1)/page_size)-1) * page_size + 1;
		
		int lastPage = 1;
		lastPage = total / list_size;
		//lastPage(총 페이지수)는 totladl 11이고 list_size가 10이면 1을 가진다 그래서 총 페이지 수가 나누어 떨어지지 않으면 나머지 레코드를 출력할 페이지가 필요하다는
		if(total%list_size!=0)lastPage = lastPage + 1;
		//currentlast가 lastPage(총 페이지수)보다 크면 마지막 페이지
		currentlast = (currentlast>lastPage)?lastPage:currentlast;
		
		ret += "<div>";
		if(page>1){
			ret += " <a href=\"javascript:goPage('1')\">"
					+"<span><img src='../images/common/"
					+"btn_paginate_first.gif' alt='처음'/></span>"
					+"</a>";
			//ret += "<li class='active'><a href=\"javascript:goPage('1')\" aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
					
		}else{
			ret += "<span><img src='../images/common/"
					+"btn_paginate_first.gif' alt='처음'/></span>";
			//ret += "<li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
					
					
		}
		if(prevFirst > 0){
			ret += " <a href=\"javascript:goPage('"+prevFirst+"');\">"
					+"<span><img src='../images/common/"
					+"btn_paginate_prev.gif' alt='이전'/></span></a>";
			//ret += "<li class='active'><a href=\"javascript:goPage('"+prevFirst+"');\">이전<span class='sr-only'></span></a></li>";
		}else{
			ret += "<span><img src='../images/common/"
					+"btn_paginate_prev.gif' alt='이전'/></span>";
			//ret += "<li class='disabled'><span aria-hidden='true'>이전</span></a></li>";
		}
		for(int j=currentFirst; j<currentFirst+page_size&&j<=lastPage; j++){
			if(j<=currentlast){
				if(j==page){
					ret += " <a href='#' class='on textAn'>"+j+"</a>";
					//ret += " <li class='active'><a href='#'><span class='sr-only'>"+j+"</span></a></li>";
				}else{
					ret += " <a href=\"javascript:goPage('"+j+"');\""
							+ " class='active'>"+j+"</a>";
					//ret += "<li class='active'><a href=\"javascript:goPage('"+j+"')\"><span aria-hidden='true'></span></a></li>";
				}
			}

		}
		if(nextFIrst <= lastPage){
			ret += " <a href=\"javascript:goPage('"+nextFIrst+"')\">"
					+ "<span><img src='../images/common/"
					+ "btn_paginate_next.gif' alt='다음'/></span></a>";
			//ret += "<li class='active'><a href=\"javascript:goPage('"+nextFIrst+"')\"><span class='sr-only'></span></a></li>";
		}else{
			ret += "<span><img src='../images/common/"
					+ "btn_paginate_next.gif' alt='다음'/></span>";
			//ret += "<li class='disabled'><span aria-hidden='true'></span></a></li>";
		}
		if(page<lastPage){
			ret += " <a href=\"javascript:goPage('"+lastPage+"')\">"
					+ "<span><img src='../images/common/"
					+ "btn_paginate_last.gif' alt='마지막'/></span></a>";
			//ret += "<li class='active'><a href=\"javascript:goPage('"+lastPage+"')\" aria-label='Next'><span aria-hidden='true'>&laquo;</span></a></li>";
		}else{
			ret += "<span><img src='../images/common/"
					+ "btn_paginate_last.gif' alt='마지막'/></span>";
			//ret += "<li class='disabled'><span aria-hidden='true'></span></a></li>";
		}
		ret += "</div>";
		return ret;
	}
}
