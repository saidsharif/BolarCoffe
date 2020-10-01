using System.Collections.Generic;
using BolarCoffe.Data.Models;

namespace BolarCoffe.Services.Order {
    public interface IOrderService {
        List<SalesOrder> GetOrders();
        ServiceResponse<bool> GenerateOpenOrder(SalesOrder order);
        ServiceResponse<bool> MarkFulfilled(int id);
    }
}