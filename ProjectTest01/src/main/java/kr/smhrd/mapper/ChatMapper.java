package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ChatMapper {

	public void createRoom(String RoomName);
	@Insert("insert into roomchat values(#{chat_log})")
	public void addChat(String chat_log);
}
