package yourstay.md.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import yourstay.md.domain.Board;
import yourstay.md.service.BoardService;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping("board")

/**
 * packageName : yourstay.md.controller
 * fileName : BoardRestController
 * author : kosmo 3��
 * date : Mar 14, 2022
 * description :
 * ===========================================================
 * DATE                  AUTHOR                  NOTE
 * -----------------------------------------------------------
 * Mar 14, 2022          kosmo 3��             ���� ����
 */

public class BoardRestController {
	@Autowired
	private BoardService boardService;
	
    /**
     * �������� ���  ( DTO �� ��û �޴� ��� )
     * @param Board Board
     * @return ModelAndView
     */
	@PostMapping("write")
	public ModelAndView write(ModelAndView mv, Board board) {
		log.info("BoardRestController -> write");
		log.info("board: "+board);
		boardService.write(board);
		mv.setViewName("redirect:/board/list");
		return mv;
		
	}
	
    /**
     * �������� ����  ( DTO �� ��û �޴� ��� )
     * @param Board Board
     * @return ModelAndView
     */
	@PostMapping("modify")
	public ModelAndView modify(ModelAndView mv, Board board) {
		log.info("BoardRestController -> modify");
		log.info("board: "+board);
		boardService.edit(board);
		mv.setViewName("redirect:/board/list");
		return mv;
		
	}
	
	/**
     * �������� ����  ( DTO �� ��û �޴� ��� )
     * @param boardnum boardnum
     * @return ModelAndView
     */
	@PostMapping("delete")
	public ModelAndView delete(ModelAndView mv, long boardnum) {
		log.info("BoardRestController -> modify");
		log.info("board: "+boardnum);
		boardService.remove(boardnum);
		mv.setViewName("redirect:/board/list");
		return mv;
		
	}
}
