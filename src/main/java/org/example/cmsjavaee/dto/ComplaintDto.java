package org.example.cmsjavaee.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ComplaintDto {
    private int id;
    private int e_id;
    private String description;
    private String date;
    private String status;
    private String comment;

    public ComplaintDto(int id, String description, String date) {
        this.e_id = id;
        this.description = description;
        this.date = date;
    }

    public ComplaintDto(String id, String description, String date) {
        this.id = Integer.parseInt(id);
        this.description = description;
        this.date = date;
    }

    public ComplaintDto(String id,String description, String date ,String status, String comment) {
        this.id = Integer.parseInt(id);
        this.description = description;
        this.date = date;
        this.status = status;
        this.comment = comment;
    }

}
