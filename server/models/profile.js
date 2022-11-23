// const mongoose = require("mongoose");

// const profileSchema = new mongoose.Schema(

// // const Profile = profileSchema(
//   {
//     // name: {
//     //   type: String,
//     //   required: true,
//     //   unique: true,
//     // },
//     firstname: String,
//     lastname: String,
//     // profession: String,
//     age: Number,
//     // image: String,
//     gender: String,
//     address:String,
//     phoneno:Number,
//     // {
//     //     type:Number,
//     //     validator: (value)=>{
//     //        const re =
//     //        /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
//     //     //    ^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$;
           
//     //          return value.match(re);
           
//     //      },
//     //        message:"Please enter a valid Phone number"
//     // },
//     userId:{
//       type:String,
//       required:true
//     }
//   },
//   {
//     timestamp: true,
//   }
// );
// const Profile = mongoose.model('Profile', profileSchema);
// module.exports = {Profile, profileSchema};
// // module.exports = mongoose.model("Profile", Profile);