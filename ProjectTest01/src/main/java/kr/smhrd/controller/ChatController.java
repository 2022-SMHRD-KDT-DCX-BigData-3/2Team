package kr.smhrd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.smhrd.entity.Room;
import kr.smhrd.mapper.ChatMapper;

@Controller
public class ChatController {
	
	@Autowired
	ChatMapper chatMapper;
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;

	@RequestMapping("/chat")
	public ModelAndView chat() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/chat/chat");
		return mv;
	}
	
	//방페이지
	@RequestMapping("/room")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/chat/room");
		return mv;
	}
	
	//방 생성하기
	
	@PostMapping("/createRooms")
	public String createRooms(Room room) {
		System.out.println(room.getRoomName() + "이 만들어졌습니다.");
//		chatMapper.createRoom(room.getRoomName());
		return "/chat/room";
	}
	
	@PostMapping("/addChat")
	@ResponseBody
	public String addChat(String chat_log) {
		System.out.println(chat_log);
		chatMapper.addChat(chat_log);
		return null;
	}
	
	@RequestMapping("/createRoom")
	public @ResponseBody List<Room> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			roomList.add(room);
		}
		return roomList;
	} 
	//방 정보 가져오기
	@RequestMapping("/getRoom")
	public @ResponseBody List<Room> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	//채팅방
	@RequestMapping("/moveChating")	
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		if(new_list != null && new_list.size() > 0) {
			mv.addObject("roomName", params.get("roomName"));
			mv.addObject("roomNumber", params.get("roomNumber"));
			mv.setViewName("/chat/chat");
		}else {
			mv.setViewName("chat/room");
		}
		return mv;
	}
	@RequestMapping("/mainChat")
	public ModelAndView mainChat() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/smart/main");
		return mv;
	}
}
