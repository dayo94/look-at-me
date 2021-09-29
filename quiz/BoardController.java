protected void doGet(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {



//request.setCharacterEncoding("utf-8");

Board b = new Board();

b.setBoardTitle(request.getParameter("btitle"));

b.setBoardContent(request.getParameter("bcontent"));

b.setBoardWriter(request.getParameter("bwriter"));

if (new BoardService().insertBoard(b) > 0) {

response.sendRedirect("/first/blist?page=1");

} else {

view = request.getRequestDispatcher("views/board/boardError.jsp");

request.setAttribute("message", "게시 원글 등록 서비스 실패!");

view.forward(request, response);

}

}

/**

* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse

* response)

*/

protected void doPost(HttpServletRequest request, HttpServletResponse response)

throws ServletException, IOException {

// TODO Auto-generated method stub

doGet(request, response);

}