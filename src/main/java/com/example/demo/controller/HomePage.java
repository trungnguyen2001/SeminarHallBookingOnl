package com.example.demo.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.*;
import com.example.demo.repository.*;
import com.example.demo.util.Mappings;
import com.example.demo.util.ViewNames;

@Controller
public class HomePage {
	@Autowired
	private JavaMailSender mail_sender;
	@Autowired
	bookingRepository bknrep;
	@Autowired
	serminal_hallRepository srhrep;
	@Autowired
	slide_showRepository sldsrep;
	@Autowired
	imageRepository imgrep;
	@Autowired
	accountRepository accrep;

	@RequestMapping(Mappings.HOMEPAGE)
	// all booking with status = true
	public String Index(Model model) {
		List<booking> bookings = bknrep.findByStatusTrue();
		model.addAttribute("bookings", bookings);
		return ViewNames.HOMEPAGE_ADMIN;
	}

	// home page for member
	@RequestMapping(Mappings.HOMEPAGE_MEMBER)
	public String deochodaten(@RequestParam int id, Model model, HttpSession session) {
		account ac = accrep.getById(id);
		model.addAttribute("acc", ac);
		return ViewNames.HOMEPAGE_MEMBER;
	}

	// home page for user
	@RequestMapping(Mappings.HOMEPAGE_USER)
	public String hoho(int id, Model model) {
		account ac = accrep.getById(id);
		model.addAttribute("acc", ac);
		slide_show slide = sldsrep.getById(1); // sr mn:( t buon ngu qua roi
		List<image> images = imgrep.findByIdslide(slide.getId());
		model.addAttribute("images", images);
		return ViewNames.HOMEPAGE_USER;
	}

	// create booking
	@RequestMapping(Mappings.BOOKING_CREATE)
	public String huhu(@RequestParam int id, Model model) {
		account ac = accrep.getById(id);
		List<serminal_hall> s = srhrep.findAll();
		model.addAttribute("hall", s);
		model.addAttribute("acc", ac);
		return ViewNames.BOOKING_CREATE;
	}

	@RequestMapping(Mappings.BOOKING_MNGUSER)
	public String bkuser(HttpSession session, Model model) {
		String user = (String) session.getAttribute("user");
		account ac = accrep.findallinforuser(user).get();
		String name = ac.getName();
		
		
		booking bk_name = bknrep.findInforbooking_name(name).get();
		if(bk_name==null) {
			return ViewNames.BOOKING_CREATE;
		}else {
			int id_bk = bk_name.getId();
			int id_slide=bk_name.getSlide();
			List<image> images = imgrep.findByIdslide(id_slide);
			model.addAttribute("id_book", id_bk);
			model.addAttribute("infor_bk", bk_name);
			model.addAttribute("images", images);
			return ViewNames.BOOKING_MNGUSER;
		}
		
	}

	// find all booking
	@RequestMapping(Mappings.BOOKING)
	public String Booking(Model model) {
		List<booking> bookings = bknrep.findAll();
		model.addAttribute("bookings", bookings);
		return ViewNames.BOOKING;
	}

	// delete booking
	@RequestMapping(Mappings.BOOKING_DELETE)
	public String BookingDelete(@RequestParam int id) {
		bknrep.deleteById(id);
		return "redirect:" + Mappings.BOOKING;
	}

	// approve booking
	@RequestMapping(Mappings.BOOKING_APPROVE)
	public String BookingApprove(@RequestParam int id) {
		booking b = bknrep.getById(id);
		account c = accrep.findByEmail(b.getEmail());
		c.setRole("Member");
		accrep.save(c);
		b.setStatus(true);
		bknrep.save(b);
		return "redirect:" + Mappings.BOOKING;
	}

	/*
	 * // reject booking
	 * 
	 * @RequestMapping(Mappings.BOOKING_REJECT) public String
	 * BookingReject(@RequestParam int id) throws UnsupportedEncodingException,
	 * MessagingException { booking b = bknrep.getById(id); b.setStatus(false);
	 * bknrep.save(b); sendmailreason(b); return "redirect:"+Mappings.BOOKING; }
	 */
	private void sendmailreason(booking b, String reason) throws UnsupportedEncodingException, MessagingException {
		// TODO Auto-generated method stub
		String subject = "Please verify your register !";
		String senderName = "NQT Team";
		String mailContent = "<p>Dear  " + b.getFull_name() + ",</p>";
		mailContent += "<p>" + "We apologize for rejecting your offer." + "</p>";
		mailContent += "<p>Reason : " + reason + "</p>";
		mailContent += "<p>Please click here : http://localhost:8080/HomePage</p>";
		/* String verityUR=siteURL+"/verify?code="+ac.getCode_verify(); */
		mailContent += "<p>Or Click :</p>" + "<h1><a style=\"text-decoration: none\" href=\""
				+ "http://localhost:8080/HomePage" + "\">Here</a></h1>";

		mailContent += "<p>Thank you !</p>";

		MimeMessage message = mail_sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom("nguyenquoctrung2601@gmail.com", senderName);
		helper.setTo(b.getEmail());
		helper.setSubject(subject);
		helper.setText(mailContent, true);
		mail_sender.send(message);
	}
	// detail booking

	@RequestMapping(Mappings.BOOKING_DETAIL)
	public String BookingDetail(@RequestParam int id, Model model) {
		booking b = bknrep.getById(id);
		serminal_hall s = srhrep.getById(b.getSerminal_hall_id());
		slide_show slide = sldsrep.getById(b.getSlide());
		List<image> images = imgrep.findByIdslide(slide.getId());
		model.addAttribute("images", images);
		model.addAttribute("serminal_hall", s);
		model.addAttribute("booking", b);
		return ViewNames.BOOKING_DETAIL;
	}

	// reason reject
	@RequestMapping(value = "/BookingReject", method = RequestMethod.GET)
	public String Index(@RequestParam int id, Model model) {
		booking b = bknrep.findById(id).get();
		model.addAttribute("getid", b);
		return ViewNames.BOOKING_REJECT;
	}

	@RequestMapping(value = "/reasonreject", method = RequestMethod.POST)
	public String BookingReject(HttpServletRequest request) throws UnsupportedEncodingException, MessagingException {
		String reason = request.getParameter("name_reason");
		int id_booking = Integer.parseInt(request.getParameter("id"));

		booking b = bknrep.findById(id_booking).get();
		b.setStatus(false);
		bknrep.save(b);
		sendmailreason(b, reason);
		return "redirect:" + Mappings.BOOKING;
	}

	
//	  // upload booking
//	  
//	  @RequestMapping(value = "/BookingMngUser", method = RequestMethod.GET)
//	  public String BookingMngUser(HttpSession session,Model model) {
//		 String user=(String) session.getAttribute("user");
//		 account ac=accrep.findallinforuser(user).get();
//		 String name=ac.getName();
//		 booking bk=bknrep.findInforbooking_name(name).get();
//		 model.addAttribute("infor_book", bk);
//	  return "redirect:"+Mappings.BOOKING_MNGUSER; }
//	 

	/*
	 * // upload booking
	 * 
	 * @RequestMapping(Mappings.BOOKING_DETAIL) public String
	 * BookingDetail(@RequestParam int id,Model model) { booking b =
	 * bknrep.getById(id); serminal_hall s =srhrep.getById(b.getSerminal_hall_id());
	 * slide_show slide = sldsrep.getById(b.getSlide()); List<image> images =
	 * imgrep.findByIdslide(slide.getId()); model.addAttribute("images",images);
	 * model.addAttribute("serminal_hall",s); model.addAttribute("booking",b);
	 * return ViewNames.BOOKING_DETAIL; }
	 */

	@RequestMapping(value = "/addbook", method = RequestMethod.POST)
	public String create_book(booking b, slide_show ssh, HttpServletRequest request, HttpSession session) {
		String id_serminal = request.getParameter("id_serminal_hall");
		serminal_hall sh = srhrep.findByid_serminal(id_serminal).get();

		String user = (String) session.getAttribute("user");
		account ac = accrep.findallinforuser(user).get();

		slide_show ss = new slide_show();
		ss.setDescription(null);
		ss.setStatus(true);
		sldsrep.save(ss);
		int id_slide = ss.getId();// return id
		try {

			booking bk = new booking();
			bk.setEmail(ac.getEmail());
			bk.setFrom_date(b.getFrom_date());
			bk.setFull_name(ac.getName());
			bk.setApproval_date(b.getApproval_date());
			bk.setPhone(ac.getPhone());
			bk.setSession(b.getSession());
			bk.setSlide(id_slide);
			bk.setStatus(true);
			bk.setSerminal_hall_id(sh.getId());
			bk.setTo_date(b.getTo_date());
			try {
				bknrep.save(bk);
				return "redirect:" + "/Login";
			} catch (Exception e) {
				e.printStackTrace();
				return "redirect:" + "/Signup";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:" + "/Signup";
		}
	}
	
	@RequestMapping(value = "/upload_image", method = RequestMethod.POST )
	public String upload(@RequestParam("file") MultipartFile file, HttpSession session) {
		String user = (String) session.getAttribute("user");
		account ac = accrep.findallinforuser(user).get();
		String name = ac.getName();
		booking bk_name = bknrep.findInforbooking_name(name).get();
		int id_slide=bk_name.getSlide();
		String path = session.getServletContext().getRealPath("/");
		String filename = (file.getOriginalFilename());
		image img=new image();
		img.setPath(filename);
		img.setIdslide(id_slide);
		img.setStatus(true);
		
		try {
			imgrep.save(img);
			file.transferTo(Path.of(path+"/"+"upload/"+filename));
		}catch (IllegalStateException e) {
			// TODO: handle exception
			e.printStackTrace();
		}catch (IOException ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		
		return "redirect:"+Mappings.BOOKING_MNGUSER;
	}
	
//	@RequestMapping(value = "/load_image", method = RequestMethod.GET )
//	public String load_image(HttpSession session,Model model) {
//		String user = (String) session.getAttribute("user");
//		account ac = accrep.findallinforuser(user).get();
//		String name = ac.getName();
//		booking bk_name = bknrep.findInforbooking_name(name).get();
//		int id_slide=bk_name.getSlide();
//		List<image> images = imgrep.findByIdslide(id_slide);
//		model.addAttribute("images", images);	
//		return "redirect:"+Mappings.BOOKING_MNGUSER;
//	}
}
