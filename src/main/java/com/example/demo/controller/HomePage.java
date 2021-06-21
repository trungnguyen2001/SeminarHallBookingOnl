package com.example.demo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.demo.model.*;
import com.example.demo.repository.*;
import com.example.demo.util.Mappings;
import com.example.demo.util.ViewNames;

@Controller
public class HomePage {
	@Autowired bookingRepository bknrep;
	@Autowired serminal_hallRepository srhrep;
	@Autowired slide_showRepository sldsrep;
	@Autowired imageRepository imgrep;
	@Autowired accountRepository accrep;
	@RequestMapping(Mappings.HOMEPAGE)
	// all booking with status = true 
	public String Index(Model model) {
		List<booking> bookings = bknrep.findByStatusTrue();
		model.addAttribute("bookings", bookings);
		return ViewNames.HOMEPAGE_ADMIN;
	}
	// home page for member
	@RequestMapping(Mappings.HOMEPAGE_MEMBER)
	public String deochodaten(@RequestParam int id,Model model) {
		account ac = accrep.getById(id);
		model.addAttribute("acc",ac);
		return ViewNames.HOMEPAGE_MEMBER;
	}
	// home page for user
	@RequestMapping(Mappings.HOMEPAGE_USER)
	public String hoho(int id,Model model) {
		account ac = accrep.getById(id);
		model.addAttribute("acc",ac);
		slide_show slide = sldsrep.getById(1); //sr mn:( t buon ngu qua roi
		List<image> images = imgrep.findByIdslide(slide.getId());
		model.addAttribute("images",images);
		return ViewNames.HOMEPAGE_USER;
	}
	//create booking
	@RequestMapping(Mappings.BOOKING_CREATE)
	public String huhu(@RequestParam int id,Model model) {
		account ac = accrep.getById(id);
		List<serminal_hall> s = srhrep.findAll();
		model.addAttribute("hall",s);
		model.addAttribute("acc",ac);
		return ViewNames.BOOKING_CREATE;
	}
	// find all booking
	@RequestMapping(Mappings.BOOKING)
	public String Booking(Model model) {
		List<booking> bookings = bknrep.findAll();
		model.addAttribute("bookings",bookings);
		return ViewNames.BOOKING;
	}
	// delete booking
	@RequestMapping(Mappings.BOOKING_DELETE)
	public String BookingDelete(@RequestParam int id)
	{
		bknrep.deleteById(id);
		return "redirect:"+Mappings.BOOKING;
	}
	// approve booking
	@RequestMapping(Mappings.BOOKING_APPROVE)
	public String BookingApprove(@RequestParam int id)
	{
		booking b = bknrep.getById(id);
		account c = accrep.findByEmail(b.getEmail());
		c.setRole("Member");
		accrep.save(c);
		b.setStatus(true);
		bknrep.save(b);
		return "redirect:"+Mappings.BOOKING;
	}
	// reject booking
		@RequestMapping(Mappings.BOOKING_REJECT)
		public String BookingReject(@RequestParam int id)
		{
			booking b = bknrep.getById(id);
			b.setStatus(false);
			bknrep.save(b);
			return "redirect:"+Mappings.BOOKING;
		}
	// detail booking
		@RequestMapping(Mappings.BOOKING_DETAIL)
		public String BookingDetail(@RequestParam int id,Model model)
		{
			booking b = bknrep.getById(id);
			serminal_hall s =srhrep.getById(b.getSerminal_hall_id());
			slide_show slide = sldsrep.getById(b.getSlide());
			List<image> images = imgrep.findByIdslide(slide.getId());
			model.addAttribute("images",images);
			model.addAttribute("serminal_hall",s);
			model.addAttribute("booking",b);
			return ViewNames.BOOKING_DETAIL;
		}
}
