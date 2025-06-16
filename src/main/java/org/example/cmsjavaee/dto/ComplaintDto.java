package org.example.cmsjavaee.dto;

public class ComplaintDto {
    private int id;
    private int e_id;
    private String description;
    private String date;
    private String status;

    public ComplaintDto() {
        this.e_id = id;
        this.description = description;
        this.date = date;
    }

    public ComplaintDto(String id, String description, String date) {
        this.id = Integer.parseInt(id);
        this.description = description;
        this.date = date;
    }
}
