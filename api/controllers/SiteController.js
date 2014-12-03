module.exports = {
	index: function(req, res, next){
    if(req.session.passport.user != undefined){
      return res.view('homepage');
    }else{
      // return res.redirect('/login');
      return res.view('homepage');
    }
  }
};

