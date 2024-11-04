using Microsoft.AspNetCore.Identity;

public class ApplicationUser : IdentityUser
{
    public string Firstname { get; set; }
    public string Lastname { get; set; }
}
