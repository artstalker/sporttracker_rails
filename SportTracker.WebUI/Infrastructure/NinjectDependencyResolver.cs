using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Moq;
using Ninject;
using SportTracker.WebUI.Abstract;
using SportTracker.WebUI.Models;

namespace SportTracker.WebUI.Infrastructure
{
	public class NinjectDependencyResolver : IDependencyResolver
	{
		private IKernel kernel;
		public NinjectDependencyResolver()
		{
			kernel = new StandardKernel();
			AddBindings();
		}
		public object GetService(Type serviceType)
		{
			return kernel.TryGet(serviceType);
		}

		public IEnumerable<object> GetServices(Type serviceType)
		{
			return kernel.GetAll(serviceType);
		}

		private void AddBindings()
		{
			Mock<IMuscleRepository> mock = new Mock<IMuscleRepository>();
			mock.Setup(m => m.Muscles).Returns(new List<Muscle>
				                                   {
					                                   new Muscle {Name = "Core", Description = "Core muscles"},
					                                   new Muscle {Name = "Lower Body", Description = "This is lower body"},
					                                   new Muscle {Name = "Chest", Description = "This is chest"},
																  new Muscle {Name = "Shoulders", Description = "123"},
					                                   new Muscle {Name = "Back", Description = "123"},
					                                   new Muscle {Name = "Arms", Description = "123"},
																  new Muscle {Name = "Cardio", Description = "123"},
					                                   new Muscle {Name = "Stretches", Description = "123"},
					                                   
				                                   }.AsQueryable());
			kernel.Bind<IMuscleRepository>().ToConstant(mock.Object);
		}
	}
}