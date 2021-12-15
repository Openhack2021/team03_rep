
namespace UnitTests.Utility
{
  public class HealthCheckTests
  {

    [Fact]
    public async void CheckHealthAsync_Returns_Result()
    {
      //arrange
      CancellationToken token = new CancellationToken();
      HealthCheck healthCheck = new HealthCheck();
      //act
      HealthCheckResult result = await healthCheck.CheckHealthAsync(null,token);
      //assert
      Assert.NotNull(result);
    }

  }
}

