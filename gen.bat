@echo off
rem Regenerate Go gRPC stubs into ..\grpc\pb\math (Windows).
set ROOT=%~dp0
set ROOT=%ROOT:~0,-1%
set GO_OUT=%ROOT%\..\grpc\pb\math
if not exist "%GO_OUT%" mkdir "%GO_OUT%"
protoc -I "%ROOT%" --go_out="%GO_OUT%" --go-grpc_out="%GO_OUT%" math.proto
echo Go stubs generated into %GO_OUT%
