using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Radiant
{
    public partial class Default : System.Web.UI.Page
    {
        protected string filepath = @"C:\Users\jnmmu\source\repos\reg.json";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //string[] lines = { TxtFirstName.Text, TxtLastName.Text, TxtEmail.Text, TxtPhoneNumber.Text };
            var dataInputs = (FirstName: TxtFirstName.Text, LastName:TxtLastName.Text,Email:TxtEmail.Text,PhoneNumber:TxtPhoneNumber.Text);

            //Read Existing json
            
            var jsonData = System.IO.File.ReadAllText(filepath);
            

            //Deserializing to object or create a new List
            var userData = JsonConvert.DeserializeObject<List<User>>(jsonData) ?? new List<User>();
                userData.Add(new User
                {
                        database = "First",
                        firstName = dataInputs.FirstName,
                        lastName = dataInputs.LastName,
                        email = dataInputs.Email,
                        phoneNumber = dataInputs.PhoneNumber

                }
            );
            //userData.Add( new User
            //{
            //    firstName = dataInputs.FirstName,
            //    lastName = dataInputs.LastName,
            //    email = dataInputs.Email,
            //    phoneNumber = dataInputs.PhoneNumber
            //});

            jsonData = JsonConvert.SerializeObject(userData);
            System.IO.File.WriteAllText(filepath, jsonData);
            //Serialize JSON to a string then write the string to a file
            //File.WriteAllText(@"C:\Users\jnmmu\source\repos\reg.json", JsonConvert.SerializeObject(user));

            //Serialize JSON directly to a file
            //using(System.IO.StreamWriter file =  new System.IO.StreamWriter(@"C:\Users\jnmmu\source\repos\reg.json"))
            //{
            //    JsonSerializer jsonSerializer = new JsonSerializer();
            //    jsonSerializer.Serialize(file, user);
            //}

            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            JObject jObject = JObject.Parse(filepath);
            string fName = (string)jObject["firstName"];
            Console.WriteLine(fName);
        }
    }
}