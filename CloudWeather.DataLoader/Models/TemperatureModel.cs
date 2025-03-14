

namespace CloudWeather.DataLoader.Models
{
	internal class TemperatureModel
	{
		public DateTime CreatedOn { get; set; }
		public string ZipCode { get; set; }
		public decimal TempHighF {  get; set; }
		public decimal TempLowF { get; set; }
	}
}
