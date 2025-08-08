FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build

WORKDIR /src

COPY . . 

RUN dotnet restore

RUN dotnet publish -c Release -o /app
