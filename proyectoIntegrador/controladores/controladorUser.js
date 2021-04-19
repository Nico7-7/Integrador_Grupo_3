const controller = {
    profile: function(req, res, next){
        res.render('profile', {
        })
    },
    login: function(req, res, next){
        res.render('login', {
        })
    },
    profileEdit: function(req, res, next){
        res.render('profile-edit', {
        })
    },
    register: function(req, res, next){
        res.render('register', {
        })
    }
}

module.exports = controller;