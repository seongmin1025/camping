package kimseongmin.camping.domain;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("user")
public class User {
	@NotNull private int userNumber;
	@NotBlank private String userId;
	@NotBlank private String userPw;
	@NotBlank private String userName;
	
	@NotNull
	@PastOrPresent
	@JsonFormat(pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private LocalDate birthday;
	
	@NotBlank private String phoneNumber;
	@NotBlank private String nickname;
	private String profilePhoto;
}
