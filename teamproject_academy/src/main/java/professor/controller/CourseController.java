package professor.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CourseController {
	public void doAction(String threeUriParam, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String threeUri = threeUriParam.split("\\.")[0];
		
		switch(threeUriParam) {
			case "couList":
				couList(request,response);
				break;
			case "curriculum":
				curriculum(request,response);	
				break;
		}

//		if(threeUri.equals("couList")) {
//			couList(request,response);
//		}else if(threeUri.equals("curriculum")) {
//			curriculum(request,response);			
//		}
		
	}
	public void doPostAction(String threeUriParam, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String threeUri = threeUriParam.split("\\.")[0];

		if(threeUri.equals("couList")) {
			PostcouList(request,response);
		}else if(threeUri.equals("courriculum")) {
			Postcourriculum(request,response);			
		}
		
	}
	public void couList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/professor/course/couList.jsp");
		rd.forward(request, response);
		
		
	}
	public void PostcouList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/professor/course/couList.jsp");
		rd.forward(request, response);
		
		
	}
	public void curriculum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/professor/course/curriculum.jsp");
		rd.forward(request, response);
		
		
	}
	public void Postcourriculum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/professor/course/courriculum.jsp");
		rd.forward(request, response);
		
		
	}
	
}
