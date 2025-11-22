.class public final enum Lma/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lma/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lma/b$a;

.field public static final enum b:Lma/b$a;

.field public static final enum c:Lma/b$a;

.field public static final enum d:Lma/b$a;

.field public static final synthetic e:[Lma/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lma/b$a;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lma/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lma/b$a;->a:Lma/b$a;

    new-instance v1, Lma/b$a;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lma/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lma/b$a;->b:Lma/b$a;

    new-instance v3, Lma/b$a;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lma/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lma/b$a;->c:Lma/b$a;

    new-instance v5, Lma/b$a;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lma/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lma/b$a;->d:Lma/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lma/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lma/b$a;->e:[Lma/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lma/b$a;
    .locals 1

    const-class v0, Lma/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lma/b$a;

    return-object p0
.end method

.method public static values()[Lma/b$a;
    .locals 1

    sget-object v0, Lma/b$a;->e:[Lma/b$a;

    invoke-virtual {v0}, [Lma/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lma/b$a;

    return-object v0
.end method
