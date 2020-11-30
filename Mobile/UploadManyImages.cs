// using System;
// using System.Collections.Generic;
// using System.IO;
// using System.Linq;
// using System.Threading.Tasks;
// using Application.ApplicationUser;
// using ApplicationUser;
// using Domain;
// using Microsoft.AspNetCore.Authorization;
// using Microsoft.AspNetCore.Http;
// using Microsoft.AspNetCore.Mvc;
// using Persistence;

// namespace API.Mobile
// {


//     public class ManyImagesController : BaseController
//     {

//         private readonly DataContext _context;
//         public ManyImagesController(DataContext context)
//         {
//             _context = context;
//         }
//         [AllowAnonymous]
//         [HttpPost("upload")]
//         public string OnPostUploadAsync(List<IFormFile> files)
//         {
//             try {
//             foreach(var file in files){
//                 if (file != null)
//                 {
//                     if (file.Length > 0)
//                     {
//                         //Getting FileName
//                         var fileName = Path.GetFileName(file.FileName);
//                         //Getting file Extension
//                         var fileExtension = Path.GetExtension(fileName);
//                         // concatenating  FileName + FileExtension
//                         //  var newFileName = String.Concat(Convert.ToString(Guid.NewGuid()), fileExtension);

//                         var objfiles = new Image()
//                         {
//                             Id = new Guid(),
//                             Name = fileName,
//                             FileType = fileExtension,
//                             CreatedOn = DateTime.Now
//                         };

//                         using (var target = new MemoryStream())
//                         {
//                             file.CopyTo(target);
//                             objfiles.DataFiles = target.ToArray();
//                         }

//                         _context.Images.Add(objfiles);
//                         _context.SaveChanges();

//                     }
//                 }

//             }
//                             return "yes";
//             }
//             // try
//             // { Console.WriteLine("____________________");
//             //     Console.WriteLine(files);
//             //     Console.WriteLine("____________________");

                
//             //     return "yes";
//             // }
//             catch (Exception ex)
//             {
//                 return ex.Message.ToString();
//             }

//         }

//     }

// }