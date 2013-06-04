using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SportTracker.WebUI.Models;

namespace SportTracker.WebUI.Abstract
{
	public interface IMuscleRepository
	{
		IQueryable<Muscle> Muscles { get; }
	}
}