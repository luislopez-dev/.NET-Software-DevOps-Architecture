FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app

COPY ["Presentation/Presentation.csproj", "Presentation/"]
COPY ["Application/Application.csproj", "Application/"]
COPY ["Business/Business.csproj", "Business/"]
COPY ["Infrastructure/Infrastructure.csproj", "Infrastructure/"]

RUN dotnet restore "Presentation/Presentation.csproj"
RUN dotnet restore "Application/Application.csproj"
RUN dotnet restore "Business/Business.csproj"
RUN dotnet restore "Infrastructure/Infrastructure.csproj"

COPY . ./

WORKDIR "Presentation/"

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:6.0

RUN sed -i 's/CipherString = DEFAULT@SECLEVEL=2/CipherString = DEFAULT@SECLEVEL=1/g' /etc/ssl/openssl.cnf

COPY --from=build-env /app/Presentation/out .

ENTRYPOINT [ "dotnet", "Presentation.dll" ]

EXPOSE 8080