.class public enum Lmb/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmb/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lmb/w;

.field public static final enum d:Lmb/w;

.field public static final enum e:Lmb/w$b;

.field public static final enum f:Lmb/w$c;

.field public static final enum g:Lmb/w;

.field public static final synthetic h:[Lmb/w;


# instance fields
.field public final a:Lmb/x;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lmb/w;

    sget-object v1, Lmb/x;->e:Lmb/x;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v1, Lmb/w;

    sget-object v2, Lmb/x;->d:Lmb/x;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v2, Lmb/w;

    sget-object v5, Lmb/x;->c:Lmb/x;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v7, Lmb/w;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9, v5, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v8, Lmb/w;

    sget-object v9, Lmb/x;->b:Lmb/x;

    const-string v10, "INT32"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    sput-object v8, Lmb/w;->c:Lmb/w;

    new-instance v10, Lmb/w;

    const-string v11, "FIXED64"

    invoke-direct {v10, v11, v6, v5, v4}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v4, Lmb/w;

    const-string v11, "FIXED32"

    const/4 v12, 0x6

    invoke-direct {v4, v11, v12, v9, v6}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v6, Lmb/w;

    sget-object v11, Lmb/x;->f:Lmb/x;

    const-string v12, "BOOL"

    const/4 v13, 0x7

    invoke-direct {v6, v12, v13, v11, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    sput-object v6, Lmb/w;->d:Lmb/w;

    new-instance v11, Lmb/w$a;

    invoke-direct {v11}, Lmb/w$a;-><init>()V

    new-instance v12, Lmb/w$b;

    sget-object v13, Lmb/x;->k:Lmb/x;

    invoke-direct {v12, v13}, Lmb/w$b;-><init>(Lmb/x;)V

    sput-object v12, Lmb/w;->e:Lmb/w$b;

    new-instance v14, Lmb/w$c;

    invoke-direct {v14, v13}, Lmb/w$c;-><init>(Lmb/x;)V

    sput-object v14, Lmb/w;->f:Lmb/w$c;

    new-instance v13, Lmb/w$d;

    sget-object v15, Lmb/x;->h:Lmb/x;

    invoke-direct {v13, v15}, Lmb/w$d;-><init>(Lmb/x;)V

    new-instance v15, Lmb/w;

    move-object/from16 v16, v13

    const-string v13, "UINT32"

    move-object/from16 v17, v14

    const/16 v14, 0xc

    invoke-direct {v15, v13, v14, v9, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v13, Lmb/w;

    sget-object v14, Lmb/x;->j:Lmb/x;

    move-object/from16 v18, v15

    const-string v15, "ENUM"

    move-object/from16 v19, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    sput-object v13, Lmb/w;->g:Lmb/w;

    new-instance v3, Lmb/w;

    const-string v12, "SFIXED32"

    const/16 v14, 0xe

    const/4 v15, 0x5

    invoke-direct {v3, v12, v14, v9, v15}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v12, Lmb/w;

    const-string v14, "SFIXED64"

    const/16 v15, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v12, v14, v15, v5, v3}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v3, Lmb/w;

    const-string v14, "SINT32"

    const/16 v15, 0x10

    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-direct {v3, v14, v15, v9, v12}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    new-instance v9, Lmb/w;

    const-string v14, "SINT64"

    const/16 v15, 0x11

    invoke-direct {v9, v14, v15, v5, v12}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    const/16 v5, 0x12

    new-array v5, v5, [Lmb/w;

    aput-object v0, v5, v12

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const/4 v0, 0x7

    aput-object v6, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v19, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v13, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v9, v5, v15

    sput-object v5, Lmb/w;->h:[Lmb/w;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILmb/x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb/x;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmb/w;->a:Lmb/x;

    iput p4, p0, Lmb/w;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmb/w;
    .locals 1

    const-class v0, Lmb/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmb/w;

    return-object p0
.end method

.method public static values()[Lmb/w;
    .locals 1

    sget-object v0, Lmb/w;->h:[Lmb/w;

    invoke-virtual {v0}, [Lmb/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmb/w;

    return-object v0
.end method


# virtual methods
.method public n()Z
    .locals 0

    instance-of p0, p0, Lmb/w$a;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
