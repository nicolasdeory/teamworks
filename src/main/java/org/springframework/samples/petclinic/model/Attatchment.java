package org.springframework.samples.petclinic.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "attatchment")
public class Attatchment extends BaseEntity {
	
	@NotNull
	@NotEmpty
	@Column(name = "url")
	private String url;
	
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "message")
	@JsonIgnore
	private Message message;
	
}