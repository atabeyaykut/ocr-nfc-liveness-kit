.class public final enum Lja/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lja/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum f:Lja/l;

.field public static final enum g:Lja/l;

.field public static final enum h:Lja/l;

.field public static final enum j:Lja/l;

.field public static final enum k:Lja/l;

.field public static final enum l:Lja/l;

.field public static final enum m:Lja/l;

.field public static final enum n:Lja/l;

.field public static final synthetic p:[Lja/l;


# instance fields
.field public final a:Llb/f;

.field public final b:Llb/f;

.field public final c:Ll9/e;

.field public final d:Ll9/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lja/l;

    const-string v1, "Boolean"

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/l;->f:Lja/l;

    new-instance v1, Lja/l;

    const-string v2, "Char"

    const-string v4, "CHAR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lja/l;->g:Lja/l;

    new-instance v2, Lja/l;

    const-string v4, "Byte"

    const-string v6, "BYTE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lja/l;->h:Lja/l;

    new-instance v4, Lja/l;

    const-string v6, "Short"

    const-string v8, "SHORT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lja/l;->j:Lja/l;

    new-instance v6, Lja/l;

    const-string v8, "Int"

    const-string v10, "INT"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lja/l;->k:Lja/l;

    new-instance v8, Lja/l;

    const-string v10, "Float"

    const-string v12, "FLOAT"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lja/l;->l:Lja/l;

    new-instance v10, Lja/l;

    const-string v12, "Long"

    const-string v14, "LONG"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lja/l;->m:Lja/l;

    new-instance v12, Lja/l;

    const-string v14, "Double"

    const-string v15, "DOUBLE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lja/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lja/l;->n:Lja/l;

    const/16 v14, 0x8

    new-array v14, v14, [Lja/l;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lja/l;->p:[Lja/l;

    new-array v0, v13, [Lja/l;

    aput-object v1, v0, v3

    aput-object v2, v0, v5

    aput-object v4, v0, v7

    aput-object v6, v0, v9

    aput-object v8, v0, v11

    const/4 v1, 0x5

    aput-object v10, v0, v1

    const/4 v1, 0x6

    aput-object v12, v0, v1

    invoke-static {v0}, Lx5/a;->s([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lja/l;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object p1

    iput-object p1, p0, Lja/l;->a:Llb/f;

    const-string p1, "Array"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object p1

    iput-object p1, p0, Lja/l;->b:Llb/f;

    new-instance p1, Lja/l$b;

    invoke-direct {p1, p0}, Lja/l$b;-><init>(Lja/l;)V

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Lja/l;->c:Ll9/e;

    new-instance p1, Lja/l$a;

    invoke-direct {p1, p0}, Lja/l$a;-><init>(Lja/l;)V

    invoke-static {p2, p1}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Lja/l;->d:Ll9/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lja/l;
    .locals 1

    const-class v0, Lja/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lja/l;

    return-object p0
.end method

.method public static values()[Lja/l;
    .locals 1

    sget-object v0, Lja/l;->p:[Lja/l;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/l;

    return-object v0
.end method
