using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using OpenAI_API;
using OpenAI_API.Completions;


namespace openai
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Get_Data();
        }
        protected async void  Get_Data()
        {
            var openAiApiKey = "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"; 

            APIAuthentication aPIAuthentication = new APIAuthentication(openAiApiKey);
            OpenAIAPI openAiApi = new OpenAIAPI(aPIAuthentication);


            try
            {
                string prompt1 = TextBox1.Text;
                string model1 = "gpt-3.5-turbo-instruct";
                int maxTokens1 = 1000;

                var completionRequest = new CompletionRequest
                {
                    Prompt = prompt1,
                    Model = model1,
                    MaxTokens = maxTokens1
                };

                var completionResult = await openAiApi.Completions.CreateCompletionAsync(completionRequest);
                var generatedText = completionResult.Completions[0].Text; 

                TextBox2.Text= generatedText;

            }
            catch (Exception ex)
            {
                TextBox2.Text= ex.Message;
                
            }
        }
    }
}