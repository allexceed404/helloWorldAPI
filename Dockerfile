FROM mcr.microsoft.com/dotnet/sdk:6.0 as build-env
WORKDIR /source
COPY ./helloWorldApi .
RUN dotnet restore "helloWorldApi.csproj"
RUN dotnet publish "helloWorldApi.csproj" -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app
COPY --from=build-env /app ./
EXPOSE 443
EXPOSE 80
ENTRYPOINT ["dotnet", "helloWorldApi.dll"]