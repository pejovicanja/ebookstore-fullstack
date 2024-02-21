import React from 'react'
import "../style/Contact.css"
import { FaFacebookSquare} from "react-icons/fa"
import {AiOutlineMail,AiOutlineClockCircle,AiOutlinePhone,AiFillInstagram,AiOutlineTwitter} from "react-icons/ai"
import {BiMap} from "react-icons/bi"
import axios from "axios"
import  { useState,useEffect } from 'react'


const Contact = () => {

    const [latitude, setLatitude] = useState("");
  const [longitude, setLongitude] = useState("");
  const [mapImage, setMapImage] = useState("");

  useEffect(() => {
    const fetchData = async () => {
      const response = await axios.get(
        `https://nominatim.openstreetmap.org/search?q=Kumodraska+17,+Beograd,+Srbija&format=json`
      );
      if (response.data && response.data.length > 0) {
        setLatitude(response.data[0].lat);
        setLongitude(response.data[0].lon);
      }
    };
    fetchData();
  }, []);

  useEffect(() => {
    const fetchData = async () => {
      const response = await axios.get(
        `https://www.mapquestapi.com/staticmap/v5/map?key=6IeLvz6vkLp08dN6M9PVthl9kloq73bs&size=600,400&center=${latitude},${longitude}&locations=${latitude},${longitude}&options=marker-red`
      );
      setMapImage(response.config.url);
    };
    if (latitude !== "" && longitude !== "") {
      fetchData();
    }
  }, [latitude, longitude]);

  return (
    <div className='contact-page'>
        <div className="heading1">
            {/* <img src={Mbooks} style={{height:70+"px", width:70+"px" }} /> */}
            <h1 >E-bookstore</h1>
        </div>
        
        <p style={{paddingTop:20+"px"}}>
            <BiMap style={{paddingRight:10+"px", height:35+"px", width:35+"px"}}/>
            Jove Ilica 154</p>
        <p><AiOutlinePhone style={{paddingRight:10+"px", height:35+"px", width:35+"px"}}/>+381 61 1113232</p>
        <p><AiOutlineMail style={{paddingRight:10+"px", height:35+"px", width:35+"px"}}/>e-bookstore@gmail.com</p>
        <p><AiOutlineClockCircle style={{paddingRight:10+"px", height:35+"px", width:35+"px"}}/>Mon-Fri 9a.m. - 18p.m.
            <a className="sm-icons" href="https://www.facebook.com/"><FaFacebookSquare style={{marginLeft:250+"px", height:40+"px",width:40+"px"}} /></a>
            <a className="sm-icons" href="https://www.instagram.com/"><AiFillInstagram style={{marginLeft:10+"px", height:40+"px",width:40+"px"}}/></a>
            <a className="sm-icons" href="https://twitter.com/i/flow/login"><AiOutlineTwitter style={{marginLeft:10+"px", height:40+"px",width:40+"px"}}/> </a>
        </p>
        
        
      
        <div className="mapouter">
            {/* <div className="gmap_canvas">
                <iframe width="600" height="500" id="gmap_canvas" 
                src="https://maps.google.com/maps?q=Jove%20Ilica%20154&t=&z=13&ie=UTF8&iwloc=&output=embed" >
                </iframe>
                {/* <a href="https://123movies-to.org"></a>
                <br/>
                <style className='mapa'>.mapouter</style>
                <style className='mapa2'>.gmap_canvas 
                </style> */}
            {/* </div>  */}
            <div className="mapa">
                <img src={mapImage} alt="map" />
                </div>
        </div>

    
    </div>
  )
}

export default Contact


