using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Сводное описание для ResponseRepository
/// </summary>
public class ResponseRepository
{
    public ResponseRepository()
    {
        //
        // TODO: добавьте логику конструктора
        //
    }

    private static ResponseRepository repository = new ResponseRepository();
    private List<GuestResponse> responses = new List<GuestResponse>();
    public static ResponseRepository GetRepository()
    {
        return repository;
    }
    public IEnumerable<GuestResponse> GetAllResponses()
    {
        return responses;
    }
    public void AddResponse(GuestResponse response)
    {
        responses.Add(response);
    }

}