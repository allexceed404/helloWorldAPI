using Microsoft.AspNetCore.Mvc;

namespace HelloWorldAPIv6.Controllers;

[ApiController]
[Route("")]
public class HelloWorldController : ControllerBase
{
    public string Get()
    {
        return "Hello, World!";
    }
}