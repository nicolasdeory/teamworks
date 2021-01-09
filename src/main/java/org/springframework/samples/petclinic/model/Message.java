package org.springframework.samples.petclinic.model;

import java.time.LocalDate;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.istack.NotNull;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "message")

public class Message extends BaseEntity {
	// Attributes
	@NotNull
	@NotEmpty
	@Column(name = "timeStamp")
	@CreationTimestamp
	LocalDate timeStamp;
		
	@Column(name = "subject")
	private String subject;
	
	@Column(name = "text")
	private String text;
	
	@Column(name = "read")
	private Boolean read;
	
	
	//Relations
	/*
	@Column(name = "attatchment")
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "message", orphanRemoval = true)
	private List<Attatchment> attatchments;
	*/
	
	@OneToOne(optional = true)
    @JoinColumn(name = "message")
    @JsonIgnore
    private Message reply;
	
	@ManyToOne(optional = false)
    @JoinColumn(name = "user_idsender")
    @JsonBackReference(value = "message-sender")
    private UserTW sender;
	
	@ManyToMany
	@JsonIgnore
    private List<UserTW> recipients;
	
	@JsonIgnore
	@Column(name = "attatchments")
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "message", orphanRemoval = true)
	private List<Attatchment> attatchemnts;
		
	@JsonIgnore
	@ManyToMany
	private List<Tag> tags;
	
	@JsonIgnore
	@ManyToMany
	private List<ToDo> toDos;
	
	
}
