# grpc_proto

gRPC 协议唯一来源工程：只保存 `math.proto` 和生成脚本，不保存任何生成代码。

```text
G:\program\
├── grpc_proto\    ← 本工程：math.proto + gen.sh / gen.bat（唯一手工维护）
├── grpc\          ← Go 服务端：生成的桩代码提交在 pb/math/
└── RankSystem\    ← Java 客户端（Maven 构建时从 ../grpc_proto 生成桩代码）
```

生成 Go 桩代码（输出到 ../grpc/pb/math，生成后需要在 grpc 工程提交）：

```bash
./gen.sh    # Linux/macOS
gen.bat     # Windows
```

Java 侧不需要脚本：RankSystem 的 Maven 构建会直接编译本目录的 `math.proto`。
