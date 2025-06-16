package org.example.cmsjavaee.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
    private int id;
    private String username;
    private String password;
    private String email;
    private String userRole;

    public UserDto(String name, String password,  String userRole) {
        this.username = name;
        this.password = password;
        this.userRole = userRole;
    }

    public UserDto(String name, String password, String email, String userRole) {
        this.username = name;
        this.password = password;
        this.email = email;
        this.userRole = userRole;
    }
}
